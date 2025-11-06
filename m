Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED5B34DCDB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762450194; cv=none; b=aoFNnu8TNl271YS3z7BfL1WwJwSp4iGk0THL4mMqoe/bp5DZSA6J7OdB2AjkrtFaaxtqAHxch/WB8bEfOkmevge3cVI93lY62h8ftYdM50ZzQV0FOD1itbjoGcuP8rYID4Qzfzokc0agmZIzQksvkHCsGhSIdKVC7Qxnpl9qEjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762450194; c=relaxed/simple;
	bh=YXYFW+MdsAzQwAb3a0+S8LU0QRgcVRXjUmlQ7o4b1OE=;
	h=To:Subject:From:Message-Id:Date; b=QtO1VxVbtBti54yOaKECABiY+xU1RO4CHIbHFfu2WqwWobbe/0OTZ+yaCsAwp/IeHRIgB11KxOV2Yp+3U8fYS/Lx0kGTkoDhNWmgxIPa2r/4s5ub1DWbSP4E8SWp1UHGrK3ddd1d8/g4oTd355gKVTkVDfirSAy1oyhswedoyQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHnhTKXv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHnhTKXv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4707C116C6
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762450193;
	bh=YXYFW+MdsAzQwAb3a0+S8LU0QRgcVRXjUmlQ7o4b1OE=;
	h=To:Subject:From:Date:From;
	b=gHnhTKXvYkV8Mmz5bFA7NK0Gq8t1YIaGnopa1TxvXbBWwJN35jJ4YJUZS1uiSuJaw
	 mJLKIcW3OnNWOPInRUEVNbpYLrEqNP6cT8s+P/x/4ptzS4LG4Sb2YWPHzfyuzeTnCr
	 x/F7tR3nt6MjsbzGcV0tQRkhALt+Y/qXtTv6OBUJgF8IQwC5zzQTNhn7k/iGkHLYzy
	 +Oks0JzFlvmfY2QaHUWbS+QjvhhEor2Z7bQIocCA5iYTyZ/2uj2+YhT044oy6tuXbS
	 PzRajuOHhKDRG5WMkkr0Y2v6faj5HyJOLIRtxf9QkijcJaRNWHbSi0wigpTDmYoaFP
	 YQwWJ2BN8XIBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9349CCCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176245019359.3126.18232998871241045897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcf157d6b15d60b8f002f4d70db7c396c1aa4d976fa1eaafad37f7d43e5f6d3d
Date: Thu, 06 Nov 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762450193
