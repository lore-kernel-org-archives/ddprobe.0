Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C62171D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737848754; cv=none; b=YK17fTQq6C3hn3OXo8GwV+tVlbqzBXWhASV8I4pOP+NOPtGDG0lUuZO4RgrJxGwmqIBnw5n010CZKWBslKFkuLci3eoYLHIXBEX0kVJAIZrxgLjVHWStB1ZWes/qUsT0UudZfMLdvvo7na+3t9eEH0WN7x96j3lhTL2bTLCSYQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737848754; c=relaxed/simple;
	bh=b3MAaA2wsNj/W8UsukxOy25lzpKuUggIWk7bQAwDbH8=;
	h=To:Subject:From:Message-Id:Date; b=l8Dpo1SgSR9dBTsQO4HMNuzOtGygsxJSQaxRkVmU6Ed7oFRa6xkFYITHGnNcoxZ3QrypyQdxAa4WTjnd1027qv3FYsSH3iH95NlUSLFPNjzgGaycaj24hoDNh2eKX63X2zlpoVBFUgbuB4zx/YKCP5o4c0Iy33UbJkD2QXgMwGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QBLAVyEp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBLAVyEp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA31DC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737848753;
	bh=b3MAaA2wsNj/W8UsukxOy25lzpKuUggIWk7bQAwDbH8=;
	h=To:Subject:From:Date:From;
	b=QBLAVyEpxH6zyDbkjB1UY61I4Tnqym8eCWpj1P1IAJuj5oNtlUblNk5a8FlDTU/Ph
	 drJG7vVY8USvzjEA6RdXkwIalNC8hJTh3VOscTht/IcH5w/H6xR3jXuREt0WTKSu70
	 KVjobKgnN8TIe0UbedRZcH4c37trO5+iy3JfPvV1KNVorlKTl8xxVXzZOTRolLsh+M
	 z2DvCCspIUPJj8YPZkXZA76dWmdlfGSAvIJ+EHg3j6979P3OX0Gi97F2xlbFtmvapr
	 lQtJTyUzTOk8VLkUcFboU22xep63idbtv8cb1p7Ilcfy1UZxwzqKOmLxOckF7Nfnum
	 JxGz8UJ6fRYgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A56C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173784875358.27223.17254416359054412169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54fece6652b65b1a9b28a73ad6ae0031c86c17153b82ad7c3e8824555aa2c580
Date: Sat, 25 Jan 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737848753
