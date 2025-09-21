Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147E7285CA8
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758485394; cv=none; b=Jmc62m9EWGHbmqK7KfcGWwoYOSwHk+mopKmLim4y1WkbGfoGWaFJ0cmhs1y53Et1OBgkCcZWxD5Z+uvWhqfFNUfkbKAvDud6JQ99u528xfVzw2XzDrPG3YaKWO8L3Q/cCKQF+OfJNX279LSo30aciuyKnOhp3Jel5N2VDr/tBJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758485394; c=relaxed/simple;
	bh=f06DSSgp2Csow84ne3bcw6vX3y2fvoLstP4MP1vfC7E=;
	h=To:Subject:From:Message-Id:Date; b=ajHM0ZhKKrHX2sB7sFK28cx008Lu4lcxv22rZRmK5QW6kbnLHyeSYameUaFoxbd80BeVoFL9fM5kYH8ovYUvCQ83Zc0o0drLPWzZuZQkfz5zB3rDho8fqoZOux0XOJfphhcdwzmGQy44nNSYrX+wkT5NReFmdUbeUvemVQ88lm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KtepRqDl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KtepRqDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B2DC116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758485393;
	bh=f06DSSgp2Csow84ne3bcw6vX3y2fvoLstP4MP1vfC7E=;
	h=To:Subject:From:Date:From;
	b=KtepRqDlmXjsdL9OW5Yjlgbtv2LNpgWSDQ2ewfpDg9jzRgkTCgJxoSiHYtf3itO5E
	 MjndQJCI1TaD2HikpIr10Mfq4uftubvYGobsuj8Yn54RrPHz18z5bpKAfwBxPBXR6L
	 KFdjMSDDWUPguGI5oI8x+NAvMo6wr6+uJTdeW2vSnIjDusiuAwwsRDa1gdTcfrL2d3
	 hT0izEu+OfDqB2glOPUJ8zujpmsp6M2G/wgF32Kxqxz7pTL8S0Xb4WPjTpp2XuLqK+
	 lZDEhDRLMM+mmjbUCDzsWP5HVd9AYLFFNqKmWxBxcaRC6vj+723IGL52YsglDPllAy
	 KXlBCYAXZFkRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944C0CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175848539358.3632.15636403523289348214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f922841fe38ec96c4d6b8484c49648d779d66b3742c78ea61eeb2c545c3a35e
Date: Sun, 21 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758485393
