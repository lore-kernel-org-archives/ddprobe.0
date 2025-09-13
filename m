Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B422566
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757734194; cv=none; b=VSLFh/aP9GQSZEEHBItKLwM7dE7U9GimGzI44l/hfouQrqsaBwi+XIuK5Mmkj7Nu+4wXi2yYasYFNULcUIOoP5it3oE9W1CiyEeKWedYKwKGNvEXRaQA9q+P5fmZZgGiMiifKjGo1Kjq4IyLx+q/78KUf2i4x5jPH58NSTeb+w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757734194; c=relaxed/simple;
	bh=4Ix6axUqj/g/fSHxD8iZwG/nUcjhXBKxeXCBbGDAKQc=;
	h=To:Subject:From:Message-Id:Date; b=VNnYVRE20IhNMz2ZUbm7qBqZsQAqbuMbaM+AVobMhg2LdJmQhHCwplUAg25BU+YoPmbew3bGlEh3DWeNUIM8xxUWl3juK1fegaQ/6oVHGC1gN3tQF7SiPVhHjlUNFwjrlYKX6gYVmvxAv5R2VAsMKVDsTGZjNp7ckSAESGPMGGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQWH4ilS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQWH4ilS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CF4C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757734193;
	bh=4Ix6axUqj/g/fSHxD8iZwG/nUcjhXBKxeXCBbGDAKQc=;
	h=To:Subject:From:Date:From;
	b=SQWH4ilSHMimVjBTToYgQqjrE/kNrq+hzxzKvEfaGpzjw0d8u4ZhIQBaV1dNteHTu
	 8UkWedc88YW3PCp1cKWUtYsgsgRhJ8G7zVyrp+ah8wCPHUoBfU+y5wrvYWIa/kIBh+
	 fQBEgPqdn67mDRq7paEjPGZRp8T20cgSvcyUIu4jqJ5o8kV/LvcWSyxUeKwZoS0uGH
	 vWJITm8OfYNeVyWQHi2TZ2AwqXgHc6prs3HJk4Yil+kFB1Ct0CeNmzNzjHL2fsqW56
	 598J3OEVTYGmHOIcKtDZtsxQQKLW98GYu5tK7q5lY5UHwIKESNVnP+wqaK5hlqW/40
	 sAQ5j9OyVGqjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9117FCAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175773419357.26984.7290407177543193551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81c1aaba671da29f19a9e6d8795a701bd3d8338795706fb4c9674e0606aa9de4
Date: Sat, 13 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757734193
