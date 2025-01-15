Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC6D1ACEC4
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736960754; cv=none; b=M0P0bUY1+UN0gcUqe6LDtNWtU4492hm9EplNh/1MOwf/ejcIIK18wipcl9O8eG1uCvp4C9O4wu8jFroKdpsLCH/t4WCX1+DcLYtp+4jCvYXLkbiEtObL2yW43O2OIXhJAUKrvH12UWFxHLrXZmOE8oW++YEPywsZFqZbUOmarGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736960754; c=relaxed/simple;
	bh=OoCVbWVFWzy1VdZQGKUMd13SPxzuAQqZHVcCelNhJvs=;
	h=To:Subject:From:Message-Id:Date; b=NAS9JmWUeypYmuDciJViK0eufmMO6QyHjztXT75jj6aY6MxTX4Ov16qiMlrfh9mkI1VYf1awKGDDa7+v4PxpsSoHisIuz/H2D3scZtl2P0cfApv9HSOyRKWqOCs6IFAEtJmgaT09PE2vdgB9HbfJBnObq6YILbHFuL8WenNMr50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrEri2yd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrEri2yd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7E2C4CEE0
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736960753;
	bh=OoCVbWVFWzy1VdZQGKUMd13SPxzuAQqZHVcCelNhJvs=;
	h=To:Subject:From:Date:From;
	b=NrEri2ydplFxKOh6FyrucxAXHFjUkAtXYJ3mtZd81NykxfNYmyo0MEOKVnEPDGZ7s
	 gZPotxQ6Xm0zae/BEv4JYnWvmZwmna9WAifFFm4+wWSnxY4yfnLpqQUrCSPp0rhWEv
	 EXHs4aH+S82tkEjTovI8ln+oxDy99u7GhMibbEkcc9RWP8MzfJmq9HwjtuSrJTEmqw
	 GtmRxhVsWWrz8obyf1O4gQA22RnSpeAYh0UI0g8I5TTUkrsYbJIAnM+pLa5ssgXQfx
	 9mEm/h22dBCLuy4hAA5NzfoU2PQoB1nh8w0RiU4IyGbcxgO+Mzhz4+VakBso1mKHxn
	 OzOCIrjiMMsmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F23FC02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173696075364.22373.18163839790131000924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99de91302cc39685a4ed546babb4b83bd4315e1adc5feff696a4502f28513220
Date: Wed, 15 Jan 2025 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736960753
