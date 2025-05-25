Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375138F66
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748141394; cv=none; b=thEQS9Dezk8wdP0lXmsEka7gZIPSAuvXPjhAXfMyei50a4DXmjl+aB/5XlSj3chm8H9rgAuuVXtTwLkNLTT3elkN0aJYzt/WckoJRseD4DLOJDwIAvI4IKF0bkYYZwsF9NDpaNZuTKsO9dShTl75V0NS5mLAHRZMQOQxxyMayYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748141394; c=relaxed/simple;
	bh=L5SeDGiGsiX3oVB9AoQ/7+R/+8OCzkSSUJl0Mw8r0w4=;
	h=To:Subject:From:Message-Id:Date; b=ZDTq53Cy2mjl44O61z+I1VZixRmyo/mcPsO/EL0Hl5R0U06SeCWS18qP3cJV+R69A1EBFIQd8+Qaj7+lI+qvH1E1UlgTusJ7TyaiCFNpaWfzNPRWN9KTBY/1wCYKgKcwQvrF2KrVVnwCd7lNvbJDpcNvD9Kvl1DEEWkPakpJ6zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhJSCvdr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhJSCvdr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8415C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748141393;
	bh=L5SeDGiGsiX3oVB9AoQ/7+R/+8OCzkSSUJl0Mw8r0w4=;
	h=To:Subject:From:Date:From;
	b=fhJSCvdrqiY4sNnsiP/C/HzlDdO7uFQOJiTcTvQQ74+XeenLEckU7bmCb7tb50FaM
	 U9RswHyrw8nhsJGlrXdGkOTvJ9bXQbPBl5D6b2mHpoQ5p5/Vr/ubPZygbKtjv6WrzG
	 uRYMdKyy84C64c4TzSofEAzLvJNAcZi9OTLVhjRffrkpoYVmYneg2rZnFDtBnzLdtE
	 Pfm40ckkUcLERezagfYO0//gAzKZjLq32tX10o7JZdGaY2eOTVKXtAjgkWS6M1OQU/
	 jo7TxUsKqkatD3MN6jpXxN+chkWFwrbGchOG3+TpJigMNJszxhQjzHLTSl07anFOXu
	 OWqPhBG3sfBIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964F1C54ED1
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174814139357.22992.12808708594702515944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de89ce61e19ed3df4f15f05b075b381d22a374f7ffedc9997d3f9e5df96dde60
Date: Sun, 25 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748141393
