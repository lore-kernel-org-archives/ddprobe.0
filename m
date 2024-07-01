Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C464347B4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 08:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719821663; cv=none; b=J6baVryqRLsqUN/zHUVcMFT34EHRfbb4sKqXKXqgdDBxEo5HjiZ3rVN0YaUCrSfq0KtB9El7NKZ/jmg50dIoiIT9mzLnrC0HMkCdvA5rVJUOLPf7chewfF6maG+w0DhY6VTNviV5tmXRV3i96dMxq4aGgvAZ6EzlF55Ipf76cqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719821663; c=relaxed/simple;
	bh=bR2e4Q84mfsO+xybDH+Y+UdpwISpcBACUpNAlWxi8mA=;
	h=To:Subject:From:Message-Id:Date; b=CYGGI6OH5ru6q/6m1FpE7Fmw+gZzAVSSXpF2XZF43+fFwgApbIJmov0DOnCyAZ7G32axNqg8cF18Bzz4XoTp997wkLgh+nWJ62rTRSmQ8nu8dYcIkrlUZx/sx1vwZapqIIWtwYvS6ybEJ3xdo+55rMqZVHIi6656oKtiT5fMDNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R488SLGJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R488SLGJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA4F8C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 08:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719821662;
	bh=bR2e4Q84mfsO+xybDH+Y+UdpwISpcBACUpNAlWxi8mA=;
	h=To:Subject:From:Date:From;
	b=R488SLGJ67YWk7tfPNqfeI3Tqw3rQ0WjlmC+jKe7ZR2uTifoCFP2JIqyX48TBLp+j
	 jIejCQmtHEb2cnYef0hwtEQF0wOazcKHcZ33Ww+LDdrfORQpZuhz30+LG2LuZEIaIq
	 gIfrWscl4ndlSf4j4Nv5/nmIQCq4qxUFdlW39ujjvKuaxbL7c4M0DDVovZxJVq8Km3
	 GRPin9YqaAjPKq+dVXJv2RIHL8A4D7tqWxYH09N3oe639Im+Tn0zf/jABjwiYwnOne
	 bFgp0tnxkuNTUlSSrCqewYdUQ2Ms0sM6Q67fJmSXj7liigx1X754N1ySVCH0ATix7G
	 9WuUE5eizepAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C579AC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 08:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171982166279.24658.15324916664607772329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c9642643145823678d6c619bc3fbf110fe727be2624b334bac895cb5e0fdeb
Date: Mon, 01 Jul 2024 08:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719821662
