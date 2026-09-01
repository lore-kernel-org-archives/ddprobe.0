Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FF5377ED4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788240034; cv=none; b=CuV/fMLelLgdmhGD4JNePOJP2NweSWTV0utxKshMdIbqhkcTDHxWkd28IiCNz0d4Jwp/wBPWU08KthAVu85GqOTx5WNIPBgariDXEkLtKPh7xD8gJxcJDiUp29WCw/D1PznJbT8UvfvMu54ZYmCVjLbhMP64g0b/uUEyCMm9yY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788240034; c=relaxed/simple;
	bh=5fcI7eKC8AgKKS0OjDwz8nmuJrlrjj+6DJR1VU7hRTU=;
	h=To:Subject:From:Message-Id:Date; b=uCtNj08oNlElvx4X2e1JouFaFvdEwkbjsQJdcTUfT+Q8Rs2bxfl0wADT9cVaCsN3hnYy06H4Cf15I0qGQ5TvVAjNmGdmRLZKe7AkF3e8y/zkOGhi8vrgS46CMWfNbV+JWMOGqK9DjZhndAw1/BBmHzDGMO78uBFG2nnSUd91Amk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvYgCK3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvYgCK3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE99FC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788240033;
	bh=5fcI7eKC8AgKKS0OjDwz8nmuJrlrjj+6DJR1VU7hRTU=;
	h=To:Subject:From:Date:From;
	b=fvYgCK3tZep0v4FrpsojmWyJfxN1IzqfvcYjQ+LbEZX3lNFSYHAhKhQJz7tKch2xg
	 8yjn0nAuwOYYsCuYreT3s8qA6dCRVaV4POp6Wye/TvXII09lkCTdF6oWJZoRyfMP0n
	 O6B8Gwte+054Ska1W9L2pZSgeTZxsebhylbdTKLHfT7lV8IThxB47Ka+Ze9UbBnBNE
	 EaJ41hciyo00r7f4eDRmuNA/UgaAAiXyRvpEOaLYrG5r3uroNnJfVjYOY/d+5z/WBg
	 YYBjSc69EAqHYI6pI7oJn0ZLcMV4/Fr19DtfnPi+yYR+tKxcG0tR1K7espromE4/in
	 iHeugBoQVfofA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94DBC61DD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178824003368.30551.591815162175178191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee2ae6845b6b93f52d6c46a010923b7f087ffb88f75ca2c23b1a740a79896822
Date: Tue, 01 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788240033
