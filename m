Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0311DEFD8
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738943154; cv=none; b=Tnt9/aOEwkDAMBFxYFLt7AvfYblX6Iy3dfFjiQ6HFHUVlvhiS3il0cxjobFMjeo65vgAcNbjpZ4cwxImPrX5MMafnI0x7yaqPlf74+2RcOQb1FkoE10OlVZZ3ACAQDipDkkRu+Lgka44Q7Ld7iWqaz/nDRWATybSHXq+bIGBSCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738943154; c=relaxed/simple;
	bh=rk5Qh27CiHwonafS/UgCe62japRy0opaOUuhyGJEolw=;
	h=To:Subject:From:Message-Id:Date; b=LILvmP/eyP7NSk+JyHraAGxFrb9qGK/R/ABQIk1tT2QdpQFo5GXf7CJ+vn96lkhW1GU16EuGYEnXkn3vRQbsGKA3QgQoLYEefYcCXI13U1Di+jct7foNx/QnVH4OJ9j9lK1ViNhW4f3/Sws88Y/meoqJGJKCkakYqeVcBHTL9fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULZIOQ7j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULZIOQ7j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86F1C4CEDF
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738943153;
	bh=rk5Qh27CiHwonafS/UgCe62japRy0opaOUuhyGJEolw=;
	h=To:Subject:From:Date:From;
	b=ULZIOQ7jrIDvU+JYKsb78i8oT8Ufh8bKkfIQz5E/pmcbKrdI47g6n5M3zdUX1ugwk
	 yuEATirK7ImsEDiIZcL9T6r0cG+QJbjDfIUyL+uWk0AIJ0LAp2yz288LsIcjddFq+z
	 9BLb4iqhcRHVY0wiKSlmeG37Wz/GZ+d//uZPQuVGEkvT3OD4+La/IzvC/UXXDRlLpk
	 qxLv5QUvIJMCmpOchqtQUUtsn6dzbCcZEaYXQh2J22imxoqNGwW1VJhQkQ1gKaoZI1
	 7xnFX6oP0HE+rfNifMpeWB94Otyt+bE/yDgFSJnQ9S2QqNZg8z4WJgtjZ+RRqqC5Fu
	 oCLH3AdzwW0MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94662C02199
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173894315359.27147.6399789384169377880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0c6171c70d804c8be413eb6323b8ddd10259d801d1957db8609a624d905aef5
Date: Fri, 07 Feb 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738943153
