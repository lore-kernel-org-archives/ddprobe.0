Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4ED5381E
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726926954; cv=none; b=V7W+fJ2c873EJ6P9HFavYaHtp7IN0ERFcxOj/imTTSraWYOOH0pxW+n2yt2iz0/6s/YGuB94CfBGHRuCmusf7dJpkJUaPzHUjo0zuOjUaUTf9qrHwcmGiBxHp6408V4xoDBPDt6bXXDqp8wbI6X3pl5yjg68wt1V1BMmgw5YP1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726926954; c=relaxed/simple;
	bh=XZLOWb2O8Lh33+c2KQvMwyvdpYLkKYU0GmTCMYQ5J2I=;
	h=To:Subject:From:Message-Id:Date; b=ORFMu0BvCKgPDpyoPfOAH8t2/CKfLNNCQRlmhoMk2xYvLqXvdKaoUIZLl2qpyjNAXUwDtdfuDfaEo/YCNyhlnKkxMyBS/VwjJZRNArQtPBRpPwupf3BNbyb7BFMFJFBjCs5bFTr+t0lEYkV1Tp9wydIHmX43qSFfB6zw4a0tGz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dn/9ZNgl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dn/9ZNgl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1840C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726926953;
	bh=XZLOWb2O8Lh33+c2KQvMwyvdpYLkKYU0GmTCMYQ5J2I=;
	h=To:Subject:From:Date:From;
	b=Dn/9ZNglmehtTPQBIHHEeCUmL13/LwsOyy9YX0+0mHozLhzzlFPp4Gez5CphepJsq
	 x+xhmdSLwJ3m2/QxHGDnTIoSFl3NsbQBYS7p28kkQ4swMQzqv5C2tYh+vMpJHaY/nS
	 RjyYenxtLNunU5BmGTKynawt2JvS1PZTjjMn1lxa8w2Wbg1RIzfGOwFgWXVTs6FhAd
	 P6qcUCbjOHhwWrtUYikIPdtKJLJ0rZET4b7JBA1wInuVdkTl+HP1PkZbWgRUl9KdGD
	 YVw6n9hoMjsEQ0tNjCR35es2si+gHsu6jti0c7bNa3Hu73M7IrRT36wzPAhoiehM9r
	 9smE2AlAHpv7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EAECF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172692695357.29106.5080929052081381469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53a1bf560862ec6119bc329a28c008b3c5027262bb38814af8db9cf8f34eed97
Date: Sat, 21 Sep 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726926953
