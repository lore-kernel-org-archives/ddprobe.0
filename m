Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B502F0687
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755039594; cv=none; b=NXfAQxzYx2d9/TI3Ko++TuXLB/mRPT/9VjWukxLgJOe3n/KfVqxbvFOXqjIqXhGGgqMs+JC6NDxXPjfajwVi2hFmqat1rWBgYOzf26J7tNMmsoLWJ8Wv3fd2TkZhXJ/44KUpPR7yuNJ/Hp7J/TdR3OIyAJYWosFvLCywb+HR3mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755039594; c=relaxed/simple;
	bh=AUwfJYDeyOp51Wxwyx/1wUdA8Vji0oQp4EjjdQUFJi4=;
	h=To:Subject:From:Message-Id:Date; b=m40JCE36q2PQejAcPxiiAFHT7aJS9ydcU9AOrJSdvnOwv2UWzi8kSxXGCn9K4HvVNLHkB62EYdCqSGsHNePBEiIwqYdbmZ4zZM3IzJCDTFhu3ViD5yFNFhJXlblaC0uo9fne0TQv5SMyKmidJXXPyTICT1gF1AV2Gd6L7o5I0mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZIb2K+Rk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZIb2K+Rk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6BBC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755039593;
	bh=AUwfJYDeyOp51Wxwyx/1wUdA8Vji0oQp4EjjdQUFJi4=;
	h=To:Subject:From:Date:From;
	b=ZIb2K+Rkz/E0nFwlM87CLSd3ZVqoNareFd8CSxiMGvEOtsk+wcaRclOk/mwtKZXrM
	 6v69UPaF10Azvk7WBnZW+DdVnH8kCbsAiH4GCHF90pY7qJ1FPPZY8MpGfOlx4yQ6CI
	 7+Nz+62hFHVoozRsZDMQYqwRpbv407DS4tXSJdzO2EWqgo4n5IpqbeLvy4IldXENK8
	 GwuIEvYT7EZlT4CRTI7nSyaUG0I2eGEDGtmgGCgvrbigl5txjQl5laD76/wPxxuof+
	 EMByI6wQZZ7t+39SNEZWC1kPoMtBlPa6puN1PBkuK+0X0bmt9hISMWTchhgm5gn+e+
	 FT7k/mClzBchQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F03BCA0EDC
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175503959357.30229.10606611310319420732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a96e29bdd8bf753b144c7ae1ed4194dddc99daec468c2bc4f4fb922fae3b1f93
Date: Tue, 12 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755039593
