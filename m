Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034B43A1E7E
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772115294; cv=none; b=KgfrlnHfiiWnne0foW2YVKxyCEp/MK55wfcYELg9Ro+85ntcnb0+zI1eOuKmnYdf91grsgmI0LBTtSqlj4TAko9FS/aKzNxUaDy/LzqanUJK8fNzmePIv4HeKne+oQMNIaZ8xQvgSix9sqOh53L2V4FTr5ns4STZnevWBfszoCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772115294; c=relaxed/simple;
	bh=sWbWmsSHqPpIaKv8IK+MoU0p4ng/GQresSGgoss/pW4=;
	h=To:Subject:From:Message-Id:Date; b=keoAAuFKzh0pBcjAZWXSS9bZcFlUTv46GvM48tivS3Q0EvSFCmea5xvenJMwoH9uDk82X+C+sOXi6M5N/4WPWwAmNlPRFT6daYqSHTDwBtYBSun9JdKnAvG/bgl9SfP4uFN6aKFBmiuomnjUaCmLmbdHaZYk21eNVkdAjcPoz2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2UykoUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2UykoUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5454C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772115293;
	bh=sWbWmsSHqPpIaKv8IK+MoU0p4ng/GQresSGgoss/pW4=;
	h=To:Subject:From:Date:From;
	b=Q2UykoUlZrXjoCJUuBWvXQ4EeSQgG1l/aeTivFfqT9xcU78dvFZe8i9V11EdW/kn0
	 oJ1KoCo0mxfGV9x+Yz0aWcvbx2CkxbKVInRUgGkzT/wUkguZsRGnubTJtIFH1wz/Fe
	 dp2ttVONg5NmHL2cKNg0SrxRJkpoXqNs2GUOTBaJPeWPKzypdwohbznd9mMGQi9gMK
	 41rSHm9Ikx0KuQ3bZCzb/Q+hckrnfpsqduiIVgPuGU3sVKh+Wsqi6Cyp2j7IHMuNAM
	 Se250Q1+BhcyuiC3lLgBJixKsm1ekpOHK0q3NXHKjjVXHzNimbYZfEI0MJdKwjGosA
	 v+rjSAqvotsmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94984FCE086
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177211529359.24681.4560860326987807527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f53c3a9f0019e4eba15aeb28dcf1ab60875cacbb44548294f6be808d8eaaa230
Date: Thu, 26 Feb 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772115293
