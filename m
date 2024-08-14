Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4510A1DFF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723648554; cv=none; b=ZYCDw/ill4g54k23COVeRCexqU6sVmih25bD1J+sKtKwC+5TYRyKXJh591LnFIDpaSz3ozJMD++epYZL1v0QLU5jE+eLIBbUdARjm5XSs1Ss/lkBf+wneKC1rm1mxq1tg8O6oI+bCcY66+h+5A39SisCH72BnV0hi1WgANG6VoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723648554; c=relaxed/simple;
	bh=7aIw8r+WCE5eji/tUdTns5TlP5flb5kAOEQIFEgjLPU=;
	h=To:Subject:From:Message-Id:Date; b=MzcreXng25+naNt7Dxwe6USUnHziPAOfZk08UEqhfyn8sOdHJZdjKXq7uU4RpKQCCdZatGQBBM1gn85nn0HnTM2V6OeElOnQfgwY7Xpzdp8wDmnAeUSKCLh1ptriUuVrbshAVT53W4XR8fQ/UtseyYEOm0eMx1CGqoVAlXKSN18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErSJV29t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErSJV29t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEABFC4AF09
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723648553;
	bh=7aIw8r+WCE5eji/tUdTns5TlP5flb5kAOEQIFEgjLPU=;
	h=To:Subject:From:Date:From;
	b=ErSJV29tjzgsa0atARtL8qoFFbZxBMg9Ksq0V4xtaIghrx1iFbMcR1iLXhfDFdL46
	 OSyA+zuvwM11+0ZLjTPYq6aRkZgp9LI1PxN4X8KqQu77W2PMaLewfvQ/jxUycEhJso
	 Vic0JqmdIddFLsIX0LQC5d1wMN6TDgdK+SIpnyhsCnKMo1g0eOZ9oqHfxKSxFmCYrT
	 tuSQg4YS/B4ZG83vhGJyK/saNtcChBJgL4iRDXV8PeFkqhyy5lkdMZxKkSWRp4G7fp
	 VWtN91WoSelgBBoc6CNZHfeVrU0zUc2xGiEs94HFt2MNitnIOEZX4Ll2fQlXqtUpzd
	 /Tx+VrACwWs0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9B3C3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172364855367.1348.9340869878721139903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c2253408bb96efbd22cd4161da12743e571bf64c44039128375d1010482817
Date: Wed, 14 Aug 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723648553
