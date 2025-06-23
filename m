Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354F2C2FA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750649994; cv=none; b=on69f40lfGZJkKFiYuzy8sofV2kxZefetiL7ADt1w8/4DMR1uF39KNiZem5getebprFhEcRieik9Ds7R4Id+L34mM8a3TlzoNw4j64r3RnPg2L0Y0WqMTGwy9rHLRSOpLWeI++QIRa0Z7rE7kkXhEkqIWvM9shSY0dNmvOmiBc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750649994; c=relaxed/simple;
	bh=tBxH+HEKO5G5yFWYZRHZUILW1GqzcW3I48khiOLVLDM=;
	h=To:Subject:From:Message-Id:Date; b=S4PrbvqL9fWV2bU6JT0rgHmTx/QRcIm4PUgQbQBC3igqNL08jy+WZcxNboufD5QbM7WLvfT/0bdnlfm9gDOYbNCCH53Mud1bBuQH2621zWlZtpNJBVOvov/8XLMy+ujoD0WKDoZpZGVin/wl3OedN8Mml6hUOJeL26QlCAOVgbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUCLHDMs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUCLHDMs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BCAC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750649993;
	bh=tBxH+HEKO5G5yFWYZRHZUILW1GqzcW3I48khiOLVLDM=;
	h=To:Subject:From:Date:From;
	b=oUCLHDMsZh9RayuqQaepQne3mIqKqA4i/vkAj65yqnee/zbrxa1KR0E1tj7zAnk5k
	 8WuLcSDfdZWZ+7vaxRkQ1esXvqRzH7BaWXUi5yruAG+XzyafCBhwCcbQRBBRQNsvjB
	 x0z34J3g5+uhkWiGWhY2Yse2TWCyEut6sdWqWaiKfT/RBi8h2R80C7N4J9sVA/rh4A
	 bdHoIspnGboAD161i3jpISIpXJFGdWoxSwE9tzayM22N93T7cetozucKxSat4i9gWl
	 /XmbfuMANXXIAZOM2woiBwUTRAzzChLXDPaCtJFnyVvJt2aScSd6oHrL/SDk7SgBgB
	 b4UI6u8QNzWkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE06C7115D
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175064999358.13812.14727105726117226504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e389785833d8192279ae11d1c4ac26e5ce08b0b13be2596c0e323636b56741f9
Date: Mon, 23 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750649993
