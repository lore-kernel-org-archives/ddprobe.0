Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D172E22578A
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757588393; cv=none; b=hCjLAwgH4mkU1fTyAdxXenb7/y24ZE+wbniGv9+4VnB/1+JGplRp9aw58mdnp9V67kb3Pubo6FZd2kCyRfAyoHz/mDz+0iiPiGsf8GlNPR5qginhmnPr8bKHQLMT8Bl59JhLUW0SMBRzSsN2MBNd2iwVk3pJ2MOkMGN5YSVdU0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757588393; c=relaxed/simple;
	bh=Y6aLmFEYWz4X8Jnis71rSdUqznIrJV4hsZMJxn59pr0=;
	h=To:Subject:From:Message-Id:Date; b=q/bp4RjAnZWVFfLKrW1Pp+z0ZaV2FfZiPr9owdMsowqpl2Kf3Vd3LKyT5oVxQTWg9DPpXsC3va3mx1UZMGFHR8QqN320L293GGWTEdVw/z12YZZnosjiU81hL4XrbeoUAY71eBdYxxRUzCpOidHeFeWmfN+fd2SaqzBRTnuznqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLOLVG+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLOLVG+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05D4C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757588393;
	bh=Y6aLmFEYWz4X8Jnis71rSdUqznIrJV4hsZMJxn59pr0=;
	h=To:Subject:From:Date:From;
	b=RLOLVG+ydrROubN3TnsqM2Uledcdod2rPROjMO6hmyBL+66QInQedcbmrGOeqcQK5
	 UnaU0rn7XjyAqBkve7NjeeQGS9uuScnYdqglIn5+gzdH4c8npxQx4xty9lMDOqPlfP
	 R4P04G3nGiB/lXcmQ9FPiFBGrlIoQq3OWObwX4R+y7neK6ZIjfwsg7BRjGOdiWtlRG
	 +t8ry9Lu36olUI7hPgJ2h2bf0K02ov1z08tHePVu7CEOJ1FnWoCpVmIfI4hFGTaNPF
	 HvEJNBKPGxxQy8DZcNmmuna4c3QLcmT+fK5XJVtf3iBedX2kkfVv08xYvDYI/EtH5f
	 HWFq7zI8x5JHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939D8CA1016
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175758839357.18993.12067380668362232201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e95b918087038354fbc2fa7ae521919eb57a45afb6cb7c190077985b3d3767a
Date: Thu, 11 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757588393
