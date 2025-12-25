Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391402C9D
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766621034; cv=none; b=PyNMnSk9uBTxnpGTMzEG7Km+0uSaCU8G3oG7gKClA+/jnw29cZKsjT7kmvSTJDfKZbbDtH1mU03nB00eR3vGhEjPiFvf9vDo+ZOCA0esaxtI7UKwRdoE61b5lA6tInbBvLFaUxl4tghPjBYtgOeHftWWymlrDsE9Z4DgxnJVsb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766621034; c=relaxed/simple;
	bh=ugC98CMmQNixxW8OiKI2hGzLn6Nvp1w5Ym/aEVPEUtA=;
	h=To:Subject:From:Message-Id:Date; b=ZvkbalWzioJ67gZU58DredR5RVyTkeU5OHsgYzHIBj2W/fCqpIZkKhWyvcxTI383KUBIdc6WYoRc8qNa0dPaeuQ24CRz+mvyUGWYsLHllKGCQHu7cO4xqgPnKasmD3v8lBVihe7YsPteIbD8+mpYYGMdlYP93lSEceHyT0LDIic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fC13v7YF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fC13v7YF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C17C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766621033;
	bh=ugC98CMmQNixxW8OiKI2hGzLn6Nvp1w5Ym/aEVPEUtA=;
	h=To:Subject:From:Date:From;
	b=fC13v7YFUTnT/NvjaxOXRsG4I1wp0iE982K7LJdAsfGcGVTfau/gEKKo9FxMwdNLV
	 SWhEqj6pmCWX4PJSWCyz8dPoTNMilwzIhUoY3s2bpkxd0oZzdA1vSvx4x0q67rkX5s
	 YSm/Q0eZ91aOCR/gzJJYM5Fd1NzavuJ1P3HkzdcSS+Ec0xNe0g78OSZUWubyJrCyHq
	 XITOG3XtEY0fOqdkHR89wg/n8TmTn6nSwfRGO91ooTQgnHq51Ei7MPA3A8cbZBPFTR
	 9RMBcbuOe5jQaX0uIMnTCpz4IA8gNUFP834qsMtT2XHmlWHGUYafpptqtKRfrHoc0N
	 bXfL5rjk5/8jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ECAE776FA
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176662103358.9493.2452180123551215420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feeaa769277916689d7647a5aa030a3dcf542e370c1abb39883dfe82c144e60c
Date: Thu, 25 Dec 2025 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766621033
