Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB7F79CD
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767751434; cv=none; b=nXWQg/wv91gR9gX1b1yh1jczlLPnzeN2MtC6MYc2vxyfcrMvIOKNwD2BsGFDM6WfW2KYYotjyuZeecKiPIKHYpQDToMH0A5gw4CZX+2qhZrGR65GOfIQllm83hGzlTt+WlDjWGWd+xDIsaDP9jv6YyIFN1zh4J+gEa2ltZ7n7K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767751434; c=relaxed/simple;
	bh=wVs/Z1gG4OE0CLsjLOWxLeWROWYJrfG2o0BGA4LJql8=;
	h=To:Subject:From:Message-Id:Date; b=nEarWEldJ8kNwrwK1dGPMybc/tFZaelB0tldO7guNTRXZpHhm8xhf1ioc9ha/qBj5hgEc56htl3ahQsMpIQjeJcoOtPIduIdi0QVoLaHnobzUi7KMAWnQYyHQg9OoBrzQPAI7WLPtJ68kqK4k5GeO7KutVSKHdT34h+Q6u+K1Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ClbmWMvb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ClbmWMvb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6927C116C6
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767751433;
	bh=wVs/Z1gG4OE0CLsjLOWxLeWROWYJrfG2o0BGA4LJql8=;
	h=To:Subject:From:Date:From;
	b=ClbmWMvbtSDTIpYzqvs0DyBiZlpY3oCg2X4GF8fimfSo/6vDGqJ1IAipCUUwoNUtU
	 pfSbvA3ruT3rS6TIo8dPYI+GMy3LRs0ZpjYUbFCJnSt+TCJi2/wPktj4ZXWUwahvxX
	 pqVULsA9WcweSSFUnWNzVRPPWxpVN7A4kkfJ3Grer/gyz06wHi2UjFYvPihJj4Goz6
	 ryxQw0HIFuqZo2jjd8A8dGEBk+3NdCDSJuZmyAvjab59EfwqOX2cmh1wXRObDzhEfh
	 BZaw8BOCpPXyK7lupLRzpUd4iJEsjQdw1L/oL5dyuMH+XfQFiDnsnfiZVPu979oyMQ
	 9ToP8muRjZ4QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9601FCF6BE4
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176775143359.18192.10586669692208468289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 464ba2db2377803ed95fa931cf590d41d072ae7477030cd258980d9eac606471
Date: Wed, 07 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767751433
