Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3261D33A9C9
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771406094; cv=none; b=JBZbCXgM5i25iYZl4BtWMn4LTHmWvk+njOT0uNYS12FGpw+yDxGoQrzKYWhKzaQOZuIMGzgUKHx0yJ66I/y+mgXH9RurfSx4227udtCUH6lIwECPo/9H9fB23jwXMGkf7B+BkMWExBQujiGg6xaaqAbJgUErp+9JqS6Tvg00Nuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771406094; c=relaxed/simple;
	bh=1x3oiDEOzFEnu3vQiRvpcjomGigCLWIyIhrpfidWj1w=;
	h=To:Subject:From:Message-Id:Date; b=gYIKrxpYI+8VA5onBiC/Daz2iMypCfbY6CKNfnSKIX+zLtnE9vm/416I3H69PKzjWv2+0dl/BkUkargh3Zp5qiR1s3yIN2Wg4Tg3HDcVCKfJYezS4WEQca87R6BK2TRaKKbAFIbSJLfemh3EI2zuSVfL5XoOcX8+Z+1Zm40LYJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ueVKgdSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ueVKgdSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49BDC19422
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771406093;
	bh=1x3oiDEOzFEnu3vQiRvpcjomGigCLWIyIhrpfidWj1w=;
	h=To:Subject:From:Date:From;
	b=ueVKgdSVX6PWXjWgUphTkAM6VfRnEyReQ/AwYAboBRf6SA5YZrZ71unBlOoMzDkS+
	 HHfnSbGmQbHOKuQHS8Xi2MxaAvws78HUkBSHp/7W4NMrK/GOFo0p0k5s1IpFDBncSu
	 ZNbkxXYRK7i2SB0al/Abq8jIq9D5lK9ktKih9j2Ry1IoWgnFhigkUBZjGGXW0kb2s1
	 WNG02gRDNobbR3yY0uIHHNNSWY57UC8CLdkRWlhUCg4G3jbisDcR+A+eINz4uNANDM
	 AYGdmipw0VtCOGCnXo+fBuHetzLAwSVkC41tX6uAmDJN1ohJSOgbCDVuys7yJNXEw3
	 TxHf5tAXVcmPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94672E9A03E
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177140609359.24136.6445491039287263863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2412dc16a4c2eb5b399145bd8392133b0e3d47b6a414a932c1feae2b57153215
Date: Wed, 18 Feb 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771406093
