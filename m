Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEF01B6CFE
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 11:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740914334; cv=none; b=grPDRh5S3KooDZbqVlksK57C1s6HOJqOfouHzmrJry2mZbmMidS+pzxGJHwJFzwNA/3KcjYxHTtmAYq39vZbtqPOihLrXhobhWgduljIMbaoynBvh3Jskp2D3O3LUguuxY3vlty0Z7BFyj0elcVSNaqTJLVtYfBO21HU5eJNd5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740914334; c=relaxed/simple;
	bh=C7dtMI1Qh8dsyCiCuO+SeZdXHwB55HlJJXJx+r4ymc4=;
	h=To:Subject:From:Message-Id:Date; b=QVWblwSGBSwCfFLrHmsGcxL0W+V6T8++MLG52tfyqahTDj4sQbo6yMhu50WW1C4PnrnwUlvtg0clee9dU1JIpdxmFcY8xQLKytZbW18n2K3KyjCKhDlG4eaEaA0xWRqDCWRzn8ojMbPVZCDxyAaayTeGH9TqjLO/BNgZay8RFM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJf+6haf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJf+6haf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B621BC4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 11:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740914333;
	bh=C7dtMI1Qh8dsyCiCuO+SeZdXHwB55HlJJXJx+r4ymc4=;
	h=To:Subject:From:Date:From;
	b=FJf+6hafQJcDC0P1nHGb3OiU9qwEfJTWaUNkjRh7gq+E26MQtWOJP5hS3qNlK6cmV
	 0aVOAUlRCPbKM/KY7LPy3XNrF/TXpLluGpyo+KS//FGe3THLzOtf7TVtPurOzksAtk
	 HsqGsNvRspVjr2OvNVMAOc7MIcv603TifzndaoFDdmXL0MvJudpRjlCVZB9/VJIDUv
	 fBYsK8zBfX6/ZIRLFuo/bhziGyZdbEd4FqPl7PIfDSIBsqqqrxRMEldZy0Yoi80Gat
	 KxxgLeO075YG4lBx3Y72ma0erADvcUbXY1MUN3qI+lB3skfm/h4HT1tvaQG6irWrW9
	 O/9xJo2mNgeiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E07C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 11:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174091433359.31666.16329793063148586653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8cd31859803d9fd02a54cfc2b814384dce8410ad376c508affc4acf0924dd1d
Date: Sun, 02 Mar 2025 11:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740914333
