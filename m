Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B79213C3D5
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736864754; cv=none; b=RNUviSEDqx4JDSVIX1crAcot2hz7O7JZnBqcX4pvBi55gbw3ZZny9oPdhH7h3xYCUI+iX8eyFAoQHO87TdkxYXg6VSzFsotNUF8pStWYeMWGrB+X4/IhgOxAXabMRbVhx47sRMDxCeChtMIGSN1tq8jvNtontC7RUIBJtj3CZ+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736864754; c=relaxed/simple;
	bh=8uUKfwU9cBwEzU8m0IGW0mEyg7BuSprMd2Y7H/Nwrfg=;
	h=To:Subject:From:Message-Id:Date; b=Bsg9MOzbpcJvncvwK8pj6FDDqtJgbygJ47fj8wzTOJOpCGsqLkAuXWibu43ePdxHFE+gy1ApJuV6XJWtwAtvo1vjyDyra3dfOWDUmmPTzp0iaqRSuASBQQbzBh8wQaPQMIwnhv3WP3KIBzO9HqSTQos5Bj5Ov819VvVVyENWos0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vu1SKmaD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vu1SKmaD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F7EC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736864753;
	bh=8uUKfwU9cBwEzU8m0IGW0mEyg7BuSprMd2Y7H/Nwrfg=;
	h=To:Subject:From:Date:From;
	b=Vu1SKmaD2Zi9XkkrAWvYW5qUYP8oZaCfKJbepLEeeHLG2b780bjhTF230Oq2ig/wC
	 Azk9azIjLGhiXSuI/RzPkZmZzNGnRHJdDoQfcPIsTujRUZC5Og0uVaiKN8K0nUO89F
	 RYI+2ZR5MV9KUZ5V9JX6MfaqAusDjNbfVCXR7FuADg94jau3cTQQAjUXBkolbOf21d
	 mLOp+HSTVwvXtexq3dDP3BamsvNgCmlmRzqWVZbaHhQARdANriHp9BBXs4flmKW/c8
	 HEkaVryRN140O8s5tW9TXNAxKJjtL0puINOLFjmejxTyCbKSLQw0AyfRtzmg5oXfTt
	 Nmmesgm3M5KZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9292AC02183
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173686475359.31614.4782806159342009660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8de80d3f080bf0de555a00d3e407d064f70ec9300365707cc7815f201bf7c049
Date: Tue, 14 Jan 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736864753
