Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7683F378833
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786785034; cv=none; b=F+GBbr+E+XDdqrAVa9tWaunhb3hpqP5FmdY1GaEOopmsJG347mG/A8cmX4xzsGL5cK+yUCesaBzxs+rcRdKLmrQ67ClxQBmCyM/RqTgG0fFgsWQ0gTaOpQT57/Jky+X0HO2Lu8SZnksgZFbV/67RhD924HccYQ1IwaWN4d4eye0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786785034; c=relaxed/simple;
	bh=8qfcVO/kM/zyNcSd2siSVe0mQCqNIT+L0NoKrpnNleU=;
	h=To:Subject:From:Message-Id:Date; b=gglPqipWANjwT6J1fTYe7nqDCl/gs4XjTvTSHHfxTE8bWvcrBqd8eb4vKH976scRJsfMj9jdDG2iJ9y8pNOYMnyVsfGoLqkU+PqUcagNM8iXvAipA2RluX8bdKbsAjJQOF38hdxrBfS0DGj9qq+ETwPiPyh3vGJIEON0cuORbTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPVugxLc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPVugxLc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D8AC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786785033;
	bh=8qfcVO/kM/zyNcSd2siSVe0mQCqNIT+L0NoKrpnNleU=;
	h=To:Subject:From:Date:From;
	b=EPVugxLcRa7vm6oMcKl/b8sR+yAi1WvK6xaYGfKB1KBxQC7191o6MAtBD1VGsHZ/+
	 AnHPG+V+51oyY5aDeJoc5TCPtrL5t/TR4B+z4lBPoOwP4PMj0BjDsOztmRMXpwEFBR
	 SiFGK4aSQ7tMJgooE1WKlnCPuy5QfPqtAoooodNubAtJTI+2qWftmcpAfxwwAy4ga1
	 NkKKlD305jG/d5b6ZsppbNx2SlPYU8W7uTalLRxCowtEr8EdyqpeNaiiq5de36McFY
	 mNoc9KL9/Q7VxvMp+wI5U2o8vgtUjuKyIlX+YmotSs7DO87CIFBn8eVsmCoO7Ko36N
	 hbIgzSK3cA7OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB33AC5CFDB
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178678503369.24543.1478573570526419065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7197c4b063d457debf46eb54a514e436650d8610cebd1bf521cc877f5ceab68e
Date: Sat, 15 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786785033
