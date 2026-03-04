Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26441225A38
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772589894; cv=none; b=mXzU/z8OCp4jiLCQEdjktw3RGSyxHVeM70EeXHHk3EXv5Iq3KWXqGDAKDifDLTiSJu0tvudqLhlh5YpE18p9JWXhx5EJoMm6sSK241bq2SWzk6MI9uzHquIuCdgYptG3EkdyyVC8CXhsGUQkyXtoO/C8KRZq+7IaHyzQAcwqoQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772589894; c=relaxed/simple;
	bh=9y968cVnh1/qmYvHQRkHxHPGCH38/41WTm1kTyMRuRk=;
	h=To:Subject:From:Message-Id:Date; b=F3Vb/yuB/QaUEzsTsJuGFbNZtNMqix7UVNi18sWdegXlGFXgcpYd2XWwg77MTZ3zWX4cAqehCsLkNiM5dfohKhsrsBkcrWJ4pAXl1TisJgKRvXtWMX2biO5Gbd9XOwUtp1YvdvxaFJZaO55U1XmLsEp3zlw5m0rMa02hf9RnGK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kln0p+PW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kln0p+PW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C49EDC116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772589893;
	bh=9y968cVnh1/qmYvHQRkHxHPGCH38/41WTm1kTyMRuRk=;
	h=To:Subject:From:Date:From;
	b=kln0p+PW1aVp8LOV4IU5GpX0sOZT12jpJqjZ1O29Dhzmi12IHGEPlwAwUFuKJDoak
	 3Pl+SE5SuW7GUkM/tCBf8vr5QrIZ4yyoqgC0FNh+rWmLppdad1rQfEqWr/DvEYAekS
	 YsVJIve6yGvXvFQAlP5aB1XWYh0lW3SD7GFaLlNcCP3KH/UazBfUuojSK6luHL+prl
	 wStfex0u5WwKSIfJgHmPt6GEK54kDsiXzG8vSiMP5MK4p1Cbry9HU+6QigEWawvejH
	 FXndpMW3iOBR56xgYQftsZ1UTbZQSWK7ESEifp+ikK44nB432EgQCe0/mZHpeFiZc0
	 jTQTNglB5gK5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1CBCEDEC01
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177258989365.10807.10322905253247724598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b16fe5d5d50b7f748b785b169271462c418f736e5a6222587b913d02531263c7
Date: Wed, 04 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772589893
