Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370AA338F24
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 07:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765869174; cv=none; b=HA7EXoG6nSdjRqQB/NMSCuNme3PPfWR5uy/oxDqe8StX9omEXvuG1W02q6VPM1bVbv/baaxsYkVwvhp23QFCYVSiEqJbpmfRw1JDqMpZ9d2kkIiG47trjT5KoMCHERT9hpwFXBmT5sqYIo2OHZ+q9dixdGXjxoD5dG2r2lr+O6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765869174; c=relaxed/simple;
	bh=BBPNUcgCcJGzG9ZerB6E3QBgARD7xzdkrYoYwrHtMMA=;
	h=To:Subject:From:Message-Id:Date; b=az+2xZls7YW1P1puvQw+C4m80XMYc+M1JPK+9GSS2B4LOcohlkCCvI8Ry4ld56F+Vr9WPURmyJoMSTgQYy8SZKv6yYa1LsIbRYS2zqBl2CXcH5os6tWf/aoFds8qdjg859+XAxuhEsNm/eruJibuj9CL7eVePafAkzp/KGj+t2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIiipkob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIiipkob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7EEC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 07:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765869173;
	bh=BBPNUcgCcJGzG9ZerB6E3QBgARD7xzdkrYoYwrHtMMA=;
	h=To:Subject:From:Date:From;
	b=TIiipkobjCbtRhOJ/KSGHmfRgaNLuUubrhKyDprgQUrBvCIowz26Nu8yT5SzSsdy/
	 BVR5eo6MzWVEydYJdJiBj+or3ecmTBGJv24YGKfzx4eOdd4LaqSuRM5pdcC1RuQxd+
	 u/eEktr97tW2laGYKD8HwG8h6qGZBL6RH4h5Dj/hfNzJ5PtZsZmT3DLsGGrofSB7W/
	 mWJb4uFqtkLCenQwKzqFme/22FtLy5HdQfuK1s80Xj2kERIA1DQEhXRoqAGXKbvSOY
	 j8n51c+9TNCh9yJ5BaQBPwaSAre9H+74bfUkjLajXUQIBU7n4DM02SjwGq0hvkVPzb
	 4edkDXtvM4c2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C99D5B87C
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 07:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176586917358.8382.4434264414754571514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 487ded6bd15d2b2b8f9502fd10ca02dc7caa58d95e24ad93448f64e1e1c93b32
Date: Tue, 16 Dec 2025 07:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765869173
