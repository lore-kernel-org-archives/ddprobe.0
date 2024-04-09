Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6B4774297
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712659097; cv=none; b=ayWCcgqFuwYrWAD24EOynh1bpYHuLZTv8MKr1q/aJ6ufGaFG2UdIueCTy97BpQNGdOciyGVLxgDBFb1It9rSQEogPHKHKWv8A/HIqW/FrvewijnD7o/MOy2U9eZQDORjZzcdyDTB1ExBwJVyo8RUd0Td/2ateyKrO8l+XeRJA7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712659097; c=relaxed/simple;
	bh=zGbnm0ZBmiainFbu3QOBzHhj3AMfvJ/4dPtsINgt0Zg=;
	h=To:Subject:From:Message-Id:Date; b=e5t7F8UpLopgYvKcCOlAsWfzgrRf0Yr7pCipCV+u3TLHT2DKusJ1TeU6eGtZI/eMZK1VA1o46xrs7azTnYXSQXZTh2C9jxwseQg819wV2tyryFou4IGlVKP/Vx44Y8Kz8Uwj03cOG+B7Jp8m+Mh0IcWeBGmGurej5EWy8RJUXhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W6nJ17O1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W6nJ17O1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75E68C43390
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712659096;
	bh=zGbnm0ZBmiainFbu3QOBzHhj3AMfvJ/4dPtsINgt0Zg=;
	h=To:Subject:From:Date:From;
	b=W6nJ17O1qVYeWAj2AKgYBbPGKmBbsLUEEI8dcy28YF7owlH8tBaII5o780/KkZymi
	 mQ8CEECmoTkQMDUL81NmjPJYol3SRfLebSZd+aReGBmfIC5hQdvbju5mqOUNn6Yh3D
	 4Z3u93Gqh3r6MzkhIkiSP6DUpFFRMJDgzQDnzBokobSDjwjAidl4lA5GGkGH1wO0Bv
	 GJ7Lyb8ZAnhY19lg2ftV2kGDEoVRIDI3iQ8hNEfzxG0/SbVkwl2agPF3yFCJBUSoeN
	 Pqx/uSvkfkB4D2V6zCi8yKCxhjJlKwtUrQVV1+wd+nvGeq4klnPLfZU06IT/MQHyrZ
	 YUqq2jM0ipzKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65062CD1299
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171265909639.3100.17567980862042831101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e23b7b4378083de15d8a2c79786b8672cf1cbd757ab6e2929b3715fce0961d1
Date: Tue, 09 Apr 2024 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712659096
