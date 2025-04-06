Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CD78F64
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743952194; cv=none; b=Vr4paCXu2ah2vDqc4ui/hpxAoKn2w6E0IGnm7XGu9nUowPuAG4nvpDRbccgB5HJs6gareNS9vUJeMQEEfzFefcHQbs/C5Kv7artR9Dif2caa4gTOnN7a+ZBaw0QuGqgdJ8wQpU+6wrBKVKIdLwuIawieDwUkYZWfgls/8hNcK+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743952194; c=relaxed/simple;
	bh=M/KG10UYo0FSR/ok01AYaaPz4Y4N3rrQLy0J4IjVH1g=;
	h=To:Subject:From:Message-Id:Date; b=JpA6PN9mtGV/EpePVDCHyONL7EW9jK9EU8LGB2ggXKN9djakbvANTVo0jJp0usoGHByO7NPzrVojO3Kj97o8TAbejAwEexev4t8WKScP79zCa9mfAkO0Mof4m5+ERiRRJOr5AXsB8QBzPC26qQG+wUkSHAR3HnDYoZagqAUOSw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpB9hYH9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpB9hYH9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6077C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743952193;
	bh=M/KG10UYo0FSR/ok01AYaaPz4Y4N3rrQLy0J4IjVH1g=;
	h=To:Subject:From:Date:From;
	b=EpB9hYH98wiE1R69mMYCa9GBgVQMGeBydbwBCKNL5CLP+bH8CHZddyXRQXBKI0KLQ
	 LesDUTm4RhViY9VmoKs8x5q5pwbaCbYCgiihtUdVx5qsME/PivR47LN+kmMJuIj7By
	 sT3AXxFnynOpRZnML3THbeu/OAX7sr61VaK8lzFqWB2q8iXmnoBnQU5Fi5hCXW9CD+
	 Ej931Zml/67wI5IoRQ3GgV0C05RBq3BZq3j9yNZ623mBVJliMMKk3+iXZPny/ygWKQ
	 eAKDpZTo5dnYMlx/q6uoNWVdcvTmc7HY99Vl7vSzZA0QrGM18MhbToU9u6Vdz7yRB4
	 qCiuKXpZN9TlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A282C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174395219361.932.7925630522313695609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 299707eaf7c259f13033e043eb7347de4d25bacd8c0186cbdc78571cb4de16e2
Date: Sun, 06 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743952193
