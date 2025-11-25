Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC2941DD0EF
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 03:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764040373; cv=none; b=nxPUao1o7vST61tADQ5PTqe+49ZKtT47N9ZEOSlkWfXIXyUyECx9HXsND4jrey9XRh1gDUyMb94uZumHlBBH/tHRr0We9RShxgpBlg/o5gFy9m5XbxDUkI7JWbSKm+JMoKPbdpBKtL3sIXt2hhB15aRjD2YOZgiNkt15gZCFpKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764040373; c=relaxed/simple;
	bh=0W7xyG3+5uaXeMDS1vi9kniX70zVXySzrwp+y9wHDBE=;
	h=To:Subject:From:Message-Id:Date; b=LhIxjwRWIBrKC+0Zdy+qT1DAaO9JFrIAvJjyxSfbdzoN2HVdd4vZzRxCJFWH+8RPmPTNJQKy3uB6jGjg71d0RAQcjPamwUYqpd54uS1CnJ+fwTvKyEI/qXcvYSo4S/2GlAtFesrgBpmQTwgZevw59whkb4/LkSD/DHzbsiicPBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRK28UKB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRK28UKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBD5C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 03:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764040373;
	bh=0W7xyG3+5uaXeMDS1vi9kniX70zVXySzrwp+y9wHDBE=;
	h=To:Subject:From:Date:From;
	b=PRK28UKBfhVYBJfyZxeZhmxzfr4yGaAZexXz8lU2qJNhSIjOQhbJE8VKfGps6tRT+
	 GZteBedow/0CjrGsF7e3eiWU69NHa2Gfid95Hair3GcgoUYyVCshKyvXunjpJQaWMV
	 f8U16KzXCeZ99vo+6+DMepWaQ/wvs3ExaFjU1jgm96XidoGdxpsnZQzdoOa0KeSM+R
	 FpVBryJJaBsMqxhjWnREbEtq8mAtYlWwBUNJ8WLp/+g6csR71ntrizFbdVvbkn2sON
	 anUbAuGo5UQYM0aNpYrXNONPj8DAkSLjiq9t/oMam21jT3iOEsmz9OnnS/1aTdaoQV
	 UfTAEGF+pmV2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBE2CFD374
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 03:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176404037360.17593.12511077366809468810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3500064128b1fe095452bc791fe9dc82ef24f983b49f12fed4c094bc4583fb45
Date: Tue, 25 Nov 2025 03:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764040373
