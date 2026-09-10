Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2671D33557D
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789006834; cv=none; b=MAbkp2eaQ5aquc7l8p3DMeZoaUd1Ciq5QcoZDMfaL/VsXCwtvxinJcBXye4XtYT2nLQ1hPxhm4a8SsKqULnNmcL3Oao2oOnuLMLYZaRH3CIFMV3BgUoahW8KZTXeXoRi73ielgPxONd07dkNyiR5YJUot19bmg2MpSQaHBtif4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789006834; c=relaxed/simple;
	bh=N8kjcnBRFYwqMbt2B8W/0dsqldCKz7JR3CCXqa+9TLU=;
	h=To:Subject:From:Message-Id:Date; b=gmrIEelfZX04ZTYeT50HgFIVYbRc0bNWqUnk5BRY6t6FdZFujnvDvi2lG6nwBVSfy/ip9ntMh58EGeZ47AfgCmU7RDm5MnrM3Y5/N47DqnvTp33sB0hMlZeGbfCD10svAsk2shA1pMnor/UvjgaKUbzoabxd27AHRQ7ph6Y4cv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j5eQZr1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j5eQZr1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3246C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789006833;
	bh=N8kjcnBRFYwqMbt2B8W/0dsqldCKz7JR3CCXqa+9TLU=;
	h=To:Subject:From:Date:From;
	b=j5eQZr1sr8kN8jqRMEeDXdIRPtHq8Y1diIpUDfGR206YLgfPkWUtatgwTZyUqm8IK
	 XLuw5KWD99Jw1LRR6a4KQjnghJ2a5AYuLgzOfSbGEPiu2ucRQ5UX6w0dcfKYfAkum8
	 uD2WNYYbksJ+81QVAplyVY2E8craqXN0BxskEBZwIAvXbPwpNpehLbFVf5tLGpNnc3
	 PB7kSiw0sm5e0mVa4MVl19WpiD8gdJ2nhfe3RewqjTJanFf8kGI8/hNbaC0GAbGqnW
	 1iZKcTZHEhzF+tcbNOPT67vDQ1Sqbmk5QKEc9GKdxfIft1KiX2yLXO2efPcYVeIJoV
	 8BWrtpG+mgXPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD74CC79FB7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178900683368.12588.3896187235696939972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98487f8025f33c2ee30146adac1546c03f814a1d68ef3d382aaa36ae1e5cd72d
Date: Thu, 10 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789006833
