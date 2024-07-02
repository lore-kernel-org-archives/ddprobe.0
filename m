Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B40312F392
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 10:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719914723; cv=none; b=tPLzOpXozGDY6QfurN8MdLUAMIrrGm08xU9xjAciDdNaby2gbB3Q+IBFFt13xIwhJG8uTX4EG4LUJsidX3Lzcsq0papgTz6xaOEsC9IYSDzck897qa+OJBDqx0f7lXABkA9wVIH147EJIDuiPScG5nvdsJH2jsqmZUp17JKAfl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719914723; c=relaxed/simple;
	bh=pbnSw8uxnjx41TrV3/+xRUvlHRkoK5Qs4Vg9n49ZJPA=;
	h=To:Subject:From:Message-Id:Date; b=JnLa9ZuUIM2jaFBUIK/3H3SxIOF3E1s6/wDiwg+VN2mbBifyXV60P89uGZzwFJGY5/sPxJVGnn6Z/Stc9UJ/WnkZ6gKgeV9bwFlQUEvmvgJ5l+eKLU3A7Aam7lX4QgSuTBoSNvK3YkhOY1y3YNOXCpwQSoPe7mrnRf58mO0pnCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmsSxtva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmsSxtva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE7ADC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 10:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719914722;
	bh=pbnSw8uxnjx41TrV3/+xRUvlHRkoK5Qs4Vg9n49ZJPA=;
	h=To:Subject:From:Date:From;
	b=fmsSxtvaVW1mvQnFgfKPqlCfyP/J+iRj7G6DInz0cr324ujb4ICVeeqdEbm0tsAKw
	 QTjXapsBP20J7D0G7EE2OOjd5Lbv7YS92imEqP1zm/2OXDgvOSnr6ls/S3vyAA8Vz0
	 2ujqgEkoT4LIhQ36SD2Sq2kaLA3eDDCBLjH7tXir10+1Zj+2TJITKo08H25/57vINL
	 P84rHfo9VRdazQP/+KdQhmOXBPDs6Q85wzKTJaTg263pnZhiyqqHH+YBSaHtYXiUDC
	 qUUussNB/ZvK8bkjDtmDVDgVGpGB2iKBZyNLQ8zIGGig3hemLdS5bIJ8U6EoVc50s1
	 1nJE/O/PefkXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAF31C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 10:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171991472281.1403.6507431541981217515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57a126b71d4a54d0c3de8ad6da89ed34e3f27df323f33047cbc8faafe75e29ed
Date: Tue, 02 Jul 2024 10:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719914722
