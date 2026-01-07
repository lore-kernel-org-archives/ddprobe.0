Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18329378D6F
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 16:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767801836; cv=none; b=AMt76gVgFDMVoi4tWnAKwR3e6hnbg4UomxwfjU5h0pGad1tyZ3I5hB5BGfycpUXBH//RxZpA9/nqZPM1JQwYOgHvv3k7vzLKYyoEysWdY38aNitsEGuUzNDpHNusW94jyxRFyPu0BKu2CelwnSIOHjZ/FaDqg7JJxqciTJPl5/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767801836; c=relaxed/simple;
	bh=PrSSSoIfccPlXtzEAjznBNL3Mj5l5lwiBx2onQ4WQaI=;
	h=To:Subject:From:Message-Id:Date; b=oP07xPalkthFYBztWpzZlx3UwX1OrZQDyqqtfITnXDPFcuMSzRb3vSvgdNUGRCe1Got1xb7gee5DPMcW+xfEJ670pp+ylz3pClnt/iYDeCAyHJmkIYns0AMQL367Qq2NOv0Xf9iSeFbvAs8tuGDNjxIbYLTwh4ggldwt0X6WyHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kucg5Vn7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kucg5Vn7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEB7C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767801833;
	bh=PrSSSoIfccPlXtzEAjznBNL3Mj5l5lwiBx2onQ4WQaI=;
	h=To:Subject:From:Date:From;
	b=kucg5Vn7wdWTymYEZgIO7NjGR2cGt2gUFVbamtkVg3eGjmHur2CQI9/wcw90XP1/w
	 bhym6eOdgKVGKXKVghPaNG+EKI7TUQx0sE9nltoTwZimQteXL5EDbhLDlpJP8ZcBNG
	 yTgFTjSnSTuze4hfrQyLn1XfCyGl8Rkl+Ow8AxfOcZ6MUuF5UVVmvXULooxHsvRYBJ
	 4okFrx1exdsFjbxeczXaCyKmvAwX9yi+iPvxOTrSONEO6mTUfuoURKzioo47YLl2b1
	 Ev6hEiMVZo9ecpCyEycBJO31ogfkFIXS0LF1vlYc8+hOUwZKHAD/LwZDFSnxRFHxBA
	 w0HvaM7KQtAfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8BECFD647
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176780183358.6078.1672347763285840039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03b535baac9435a885e814f215676afbf4505966d7a2274bb80a94136647a668
Date: Wed, 07 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767801833
