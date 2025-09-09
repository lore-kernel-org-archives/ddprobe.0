Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFA2302CCA
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757401795; cv=none; b=qmZ9NPPB2+p1TZCV+WVpX3TeVrwqqaWyzm4Y+45LEtgfsFv0B0eouGQgwTKwuXP8Cpb1iFZ+N8bAyIXYrmWoppHXbAIAR7J+48MGd58KOgbpKsEH59SCfdS1TTFLq33DvtawuOUz7kgdkAPhoe1GlKKGi9+HgJ3fmYAkhtLT2Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757401795; c=relaxed/simple;
	bh=d0YMFVQOlXC9q/LAxQ2hOtNQP+1ZsKx5UNkC1a+IyM8=;
	h=To:Subject:From:Message-Id:Date; b=UAehhsg+hro8UmGpG7r9mZjO/i4znhrNXn/12VF0Dbp60Mjetm28fPvZ13FKmooRHFh4ZGPNVtglpn7RnEdsOsJsQCZw7ZtKc1eEppzw+l9iwdEPQHqC49SRLVZtflmYERF/NRWKQWMT002c6m2weJ5kEw0ihVv9yfipXfT2tVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3vntvgS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3vntvgS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9CFC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757401793;
	bh=d0YMFVQOlXC9q/LAxQ2hOtNQP+1ZsKx5UNkC1a+IyM8=;
	h=To:Subject:From:Date:From;
	b=T3vntvgSXn9d2WLcWd2PHexs07o8Ndbxr8+11MTdyX2O97safzTb468aHvtlnWM2h
	 gJWb9n4CgsTGeJ0Pv3XviNO1C0PbExYTCfeFuuoFxrVAGat1FKxC1IFb8uJxi9xtWC
	 EI6K/w1cTlzP3NwGusnCLb5S3WT9gLydr4ruw9I4gkympLlz9p/4P/7P6ZUeaUaCai
	 2V1dduq60T91A1APirmeR5QwPeYXvna8envuc17BMQ68ThTlPg6Gq5f0zU8eVmKsp2
	 3xaKc4yN84HfVI+FA4auIakfFM7t7GU8T96umVo4831nPaM80nvpgOg4OeuaDAPR1m
	 Drjahv3Jm8F5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAD8CAC587
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175740179358.2769.5777890304699797428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41d6c0980ce0887b6f71e0fd204615ec5c23b50a89370e303d3c76ce9ad3b0f9
Date: Tue, 09 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757401793
