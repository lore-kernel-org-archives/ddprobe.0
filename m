Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F88C1514E4
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761622194; cv=none; b=N5w6iMKE8QlsksAtaZF9fLhXYFC7nWySq2rSBVSAqtQpnnaAsZEcC9quP9kWC9/wIYjBHsWBuz1nOBsChdzjBfmV8l5UjcENUqyHKEcZ2GXX7K8YmXgDYVB6OVFRG0pJ/q+1OVjMi6mz5b9No0zPdWGQGxVbWrxFqpWbaHmu1Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761622194; c=relaxed/simple;
	bh=7kJLUhHrYl0ZJQY+AaY+oG1MavEVpkgyOlpxGBD4QWA=;
	h=To:Subject:From:Message-Id:Date; b=HKHRAD99NVGdjfifFCnAOqPrr1WGcIpqgM/VY9BkTkk4DgEeruJB6rg7ny9+dxNxgC6cVTELyo+9wSBvoCtNdATMTT1EFNzuuPG1vJpm9Wfhv0u5rVzq7XtPwFcsnm0ZhP1yxe+SRPnIUWStL9AaH9Q1YOGrANbQSaH3TZm49ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWyVXMcu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWyVXMcu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45CDC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761622193;
	bh=7kJLUhHrYl0ZJQY+AaY+oG1MavEVpkgyOlpxGBD4QWA=;
	h=To:Subject:From:Date:From;
	b=CWyVXMcucR1Z9xdJGNmwdX0f9kh7AV+m9S3dyI3GrC5nkTVQ4wdM0otaxrGvVKEil
	 0hpB7u1MrTFLj9OFOeHgCa2/Yhn8j7gHzhyCtAW8LrteWCLs6SxTbUlsXOorhUFD0u
	 zEbcP4L57zvuf2UCkyU4mAinBlnEDCh7RstTazjCAqN5oWbYKomo+0ZhS3KceDSNUQ
	 HvhFz20XLkaqJRsv0KEVLgZgXogBgem1vB+5DeUL5a9DvXzWVnTJJVmsubEG9LsmJz
	 Quv6mhi9qzF04+XIw6Ifvrsc7EBvTqshtEV1C/B7srW/hHSy+22CA2AR7Yl0q8il0b
	 oEg258NuKUWQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB7ECCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176162219357.1143.2139702653658598043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbcfbb71c9004d5068cec440ae09c410242ab54c98def0fd7b26cb1f0e216d22
Date: Tue, 28 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761622193
