Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BBAE4D487A
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791890434; cv=none; b=qYrnSaHFFFbmD+CDtoWxQW0pyenOPNCvLWA3eBNI96OP+kON76i+dvLRUplDwvmlj2d/c1DXh2z++lPTtgYH61oxqLvDXfxcfDELMmLDeTpaq7X8BEars2bRFCX+mlNOA3JKQe4ZtrcMYeATdbKe73yu5u7CPn18WnhAEf4V6t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791890434; c=relaxed/simple;
	bh=Fp7oBqM5mH7SaOSxUh93g9wmuWwFilpw177wdo1hIgw=;
	h=To:Subject:From:Message-Id:Date; b=fXa09pHUbHzj3n8dGLmSjS3RKWHMjaVXHMsUFzonR9k+5t2dD7BECHWv2xOsGMiXsF4WwnCm72O5b8V+TuPZ17ArjqpxfBJAH7A+kQcU47vYyly94xZ45IQu1lcAG96bc2/pBczw9foWK0EQHtTZNC67wSyjrLX7efpQoed4lMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ompkKMc3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ompkKMc3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98E1C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791890433;
	bh=Fp7oBqM5mH7SaOSxUh93g9wmuWwFilpw177wdo1hIgw=;
	h=To:Subject:From:Date:From;
	b=ompkKMc3UhD6XB+k7fBfHtNCGiTpbrmIwFMVS/SrRltmakFyqlfNeUkyRegkRXIG0
	 UvpVTo4PL/O9bAIYoxoiizZ8Ed/eLjelkCJGMv5eKcIP0L981qcdtw1txSL0JdmEMt
	 6kfrHbl4Rt50mZOGDGh6IWFs0JgvbuZdB2UKjR0KFbdLOR6+qnoDfr87LU3rWn7MkE
	 wZlfPJAREM1BkYuF9KLZ4G5OBLrMvsbSPpW+1MtLVjjfYCoDzYiJOJsxPEHullBVMv
	 E+uaVxYtNukneA4L1m1pAlVY83yVQfmoZAJIq1Z34rV1j32oYMIjBwFGE6Uwkv8QtB
	 uaSqY0LlZhQAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4795CC6B03
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179189043372.5922.9143659604722122354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1772d767bdea9ae337f13bbd752b70e57c08db1c48682743e01e63b517470abb
Date: Tue, 13 Oct 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791890433
