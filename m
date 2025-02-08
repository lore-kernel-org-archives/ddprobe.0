Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B73BA23
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739033754; cv=none; b=LWi08AGtDY5zNAiWpw1FMjdEByxs/uwEpJiOfYQXMlwfKzZ6ETnkrIOp1Ae44SQIqXIyjAaOoO7QzHG7QmK6O9Y3HKUkj6q4k/xTodIEK/eUC6ocN3qE4EtPces7YEsNPIqWe6nqChgG4TZ4abT+GZDHMbcZn5WzNsqFXZHUWmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739033754; c=relaxed/simple;
	bh=EEPep6FpHnvRCsGR0UsdvKfMVBHCo/AotkkVtjErf20=;
	h=To:Subject:From:Message-Id:Date; b=U4uP2aCvMtBcXXlNdicmlTXcE4KL5AcnWVkuIs1qBuqYL49fnGLyIDB6xzex2JCBUxLCxTIAG7sWeIWcdPIppIlFgBLmJDssD9JZEih4wDPImAnvsv/SBqA0wguAf+6j4BWoeyfAcl9bssNHUZ0UhNGihFpDh/UQfshXnWHFX4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=My8/+v5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="My8/+v5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C63B8C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739033753;
	bh=EEPep6FpHnvRCsGR0UsdvKfMVBHCo/AotkkVtjErf20=;
	h=To:Subject:From:Date:From;
	b=My8/+v5AyqrsxMF1jZttXZP2rz+uVgVVT6Ijt7JeyX4rDqP/muROlUVEh1j7oAFkb
	 iXIwrqOmss7DeAR86qsH1lRF8G8UD1UUx2lDIdDBSEJmyiSdeu3ZIBx/xaAHQ04H6T
	 EdeAYnFwbhOG1JqvggZol7Zyd91PGuHwzj1RIOnYh+nr+xjddwuefxSWRel0LzBgud
	 McQebXJgwaZUQ95B+3ZLVNd5vjD2DZnRTkJDM+d0nVg1V+eeikJ1Tqz2UMK91uW2gB
	 LvywQm5V0KSA/NN0pQ63mzIkurxVULhmz4optEeRUI7LsqxI6ng9I1RD9uZ3huMdUb
	 MygjmmCl8+tbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0447C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173903375369.26858.5614560910276375000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ea86a44cde9bf69ab51d917840eaf34550e2926e7cf6230f2b1850ae8078118
Date: Sat, 08 Feb 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739033753
