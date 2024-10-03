Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BED61B977
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727925354; cv=none; b=OWVl1MMSFhF+Fm2ns9nND7XJnDKMwke/o9Essg3uWfxQFV0djyHjJniGln1zPLAKXiF7ZFu3JyfmixHFRyEdUNFpjifPGzMIRKAyTHz8Yw5LDL5rsA1Ef5W9lkuxeln16H1UuB/jGzO9/Oh5Trtc4aQsn5KHrSyc4OpykQHYLOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727925354; c=relaxed/simple;
	bh=YchjYEJmHTD0yGqkkpJYdiBPtp4vgi0ecXCYvGjbLKI=;
	h=To:Subject:From:Message-Id:Date; b=pydLVQIEl1mhiJ40Son12K/+vNgazNTsTQ6yQBSeIiwCU0BJOtT7szSvHylcJZJPaJoAMzh5sXrL3DTLEF4MvizGytADYem6Uap6+SfFbiC9EWy42OoCNTe0l6TakIwOQmnzBuOP04f9sF4WvsoSjPoGS0uViRnzyNZ9AImLMjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WuSUFbFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WuSUFbFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2DAC4CEC2
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727925353;
	bh=YchjYEJmHTD0yGqkkpJYdiBPtp4vgi0ecXCYvGjbLKI=;
	h=To:Subject:From:Date:From;
	b=WuSUFbFtklHUVmFO17hWGb7ZR31JsCstDOcTzywPAQlO/6F3b5kDpcwEGGPAT12gD
	 IL/tH6sXMwYtlF3dj1FZgIykBXLlPJzq1Y8FS/j3l+hhcQykbYz2Zu74k25lSBgfyC
	 YZULP5CClOn8nxKqygl+khHdI5YZ/oqBvOuKpUwYqKVlhV9SR1i9wO0PLbqav3ENmP
	 SuOD7z/9P0MDsKFA6SOS3rPQvrMA6xXpnULC9P3MhfV+LW/nNU+HAC4Ljr32DCLLsX
	 GPuOtZqLxP+0yICdozPhqMMIYaFQS96sf9d38u1RyRC+icTR5If1rZZWK+D/oBuTMY
	 N7bVRdKq8r8+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964BFCF8552
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172792535360.5624.14433888194169268074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd504413d266ebb0bf7181ff86bf3e4ad532dd4035b9828c0a65bb2da7ef3644
Date: Thu, 03 Oct 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727925353
