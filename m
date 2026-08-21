Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2709C4963C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787320234; cv=none; b=DD2X+xjhfz4W107mCd3S7cRSznhR+wDPM0t7gY99W0cIeLYwg4ZH+UgXBo2mw7WGBadqT2y3w/b4LfQcuywEAQ8wtNZKgC2u0sCEXKCr0KjoIosEBUdtPwh06Do+4vg2FLUb5fnY3OJLym0h6fNjwz/CJr5zmwGBoS3+fBqlJNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787320234; c=relaxed/simple;
	bh=wJG/gUtoXu67A/FBgdUFbNPWVsY3ztjJq3k+z5gHzH8=;
	h=To:Subject:From:Message-Id:Date; b=Y/Fv/ipCuynO6046gSHFBM51zP5CB7XSIssXHkspPXfjHW2vGFoh3iz7kbyJP1zu6Z4UupKfMcwVnBlXJ5NcXha3LJuWb889tylRqmcBuEl7m3AKhnOjpfc1CG5ilPTr4yTBE+IgjCmPg6ZN5GzUWMm6mgOettaMNSE3yOzUN1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzZIetH+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzZIetH+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B74C2BCF7
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787320233;
	bh=wJG/gUtoXu67A/FBgdUFbNPWVsY3ztjJq3k+z5gHzH8=;
	h=To:Subject:From:Date:From;
	b=uzZIetH+uJEzptgWWaEzRW422HJAfSGdD3c6SdqzOBooQ6sdpMbEep1TfbC9Lwe3q
	 hS+G9F5azaeYy2HMLkxbEdsM55ufviWBLYyiUUa5tBvDF7kZY3DAQqCiwFTcSdbEYf
	 3RfUVudXSihGgpbsmDlw7GsLpvIGugyGBeZO2eRjoSymg3BtHePf/ObMhgaFDk2nOh
	 yQVmRMvkNKSLKzeoo4igKh9cIRvgkt0WndyTToB774MoLusoDPnO+OwjCm0lSWxfG4
	 VsuPmbBknR8Q1kgkCzNXJIY9jxQaH8xYnr1w9o8+jrtSPUEKq5wTl7UxjlG805GEFZ
	 acwi9BKAGsVfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D65C5DF94
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178732023372.5948.7743213588421311593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f91e80046ff01721018818778184a03c9981b9bbe6ee74caba673620fdef38fc
Date: Fri, 21 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787320233
