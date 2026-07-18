Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2573090C1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 20:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784405914; cv=none; b=BqA+CRPfZwbOZ6cTLZjNkXAxOwlyx1cAYGczPXOtvD3hcQx/SJ7f7PKHZp/xZS0aONuPPD/MvNni/KyXsb60hm7WDGsCGz12auIK/ugdWiuSGlqGe1KJ9ywSKwi0tlRejhjw/mlzCs30wjTkTpdLDXrreKE86g07OGpTRJk6ELY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784405914; c=relaxed/simple;
	bh=9bAvKQGjPjeh6mgtEvBNuH8w/08KSIt3MiOXRPRLr5U=;
	h=To:Subject:From:Message-Id:Date; b=IYwgAL4/xTrr2i/kMu3TGgY/lNA/tnh9k9fgd6mNrzj6SrodoDI6Z1BfXYfPxZzfzFDDhIL75lwM+BNAin07MEp2apD182oxKqX9D2a2QkZaPkoBuEi4RHTQGfa/Uzjty83bWJmu2OppmDsB6AtcpCX7EPlEw9v/Dnq9NEgF0Rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzJwNIN7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzJwNIN7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E018BC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 20:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784405913;
	bh=9bAvKQGjPjeh6mgtEvBNuH8w/08KSIt3MiOXRPRLr5U=;
	h=To:Subject:From:Date:From;
	b=NzJwNIN7bRUIC0SKbFew+i1127jJXiZHovrcpYnc4eYeLtFYBhrkOZJNdVgHPcOPZ
	 U36Izcs9T85zl33Bq1Y364LyTryYHI4pfUhTakVGSefosaT36kz/ydqTbeOLaisyYn
	 9hLiROIuV0t2cvk85oUPm9PAppx1E8yD4VPRJry33g0rPCN4CSz/1zQGO+KxQwoNHv
	 SOCOoCSmHV5uOsfVajBWPOcZBKBAFoYaZggEQINJ9VEZ3wU3BK1v1al22+Is9/pzJ7
	 c382icT+FmKr0aTDp8q0qQZ+fPQc4yFNXfncFAlIgxZNvQkHcfYMQ0nnW08FbEXsHo
	 OD+zOLkZMbNOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA61C4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 20:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178440591368.31012.12609044325370629457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bd9d018f5aeeb3370e3125ce92881238e50c848202db7f9eec52094f81d0c23
Date: Sat, 18 Jul 2026 20:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784405913
