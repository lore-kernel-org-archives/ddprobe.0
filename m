Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F24361668
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772166894; cv=none; b=TZOp1CHIw8j2u9kC9Bng1E2iWPPMHhyONREcEKuZXjxEyvbubCSu/eYLIXmSJbrlMKEZ2uUXXDvb+xHDMtstr20iPmzcVleIwc1R/7wLIBud4/B5eMgjtFaJmLrHc4HtOPghcISLY3NxbDUFvSKRb9/IrPYLxaqgvPJK33LzMTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772166894; c=relaxed/simple;
	bh=zVnIsrEE1tGCn7a0UM9j5HKyUcTck9T8cn3APPhamUY=;
	h=To:Subject:From:Message-Id:Date; b=Bktf7S3uHyHhUDF44Bx4bpYx5nng7OM/TNEZWrnM3UUx2y0jGxp4OU0KTSfeiRcXflbAPhGEomUqCUuNHRmMC3ldCqKLi9r/ov+qJK4KKOrkLL4izDALlXPhyqa8ju/znwPOpWkDkY3beWPz/yERNCyjQB1Iwmflreq64O5/Ol8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ba5sccH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ba5sccH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E3CC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772166893;
	bh=zVnIsrEE1tGCn7a0UM9j5HKyUcTck9T8cn3APPhamUY=;
	h=To:Subject:From:Date:From;
	b=ba5sccH8XmNohm6Nf7+OcxA/4bELXBP5SSfFDxgd9MnRF/8jdOOSWJGDNOatEV+Ku
	 ZwUD0HDEAgD5vu/NlmV+tAa5VW8+wmk332oZt0NV9YWzwwagHqw5Z/Zkxy5kexcphv
	 x003Ku/UFhZqduq4DEfTRgkcpFlqil5Rmdianrzdj0XVaKHm29cC9dTrABxZ//xSgE
	 onUSbEkFoIFL7bsag9nghvfrEwWs0AtiLzB+xUp/7BZgjGFYbTaSMbrzKdPERDHvOs
	 ijiM1gqTKJdLH8T3ltftw25yPhc2KzKeKI5SbsvLGpBUEZRJJlrgcT8H2Lse9MbIm4
	 gaTKCAhQ/sb+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DD5FD9E37
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177216689359.14456.2978989623377123862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bffc281d397e93ddd9b325e9160ccc24bfc1248e6018ff5814f1ace0d111af4
Date: Fri, 27 Feb 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772166893
