Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FF11EF924
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728374754; cv=none; b=JF+2QRy9pyaELwbSAulxDkiVMQAThuv6EaB83SAaUBUxLdYnfCRSmN60JHQiQXfLQVpc9gJo1SMxW8MCqmEA0u00g/jSdRrVEKuFmIT29+2MxlG27HvH6s7l/7gKCk8gtP64FUQ050GlFH4ha4wTr/zPX9/zk0s554u+2eJOJKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728374754; c=relaxed/simple;
	bh=1CP/q7chpxqmRaakmk/sDncvD9CbKvwzx0HoG8ceJvk=;
	h=To:Subject:From:Message-Id:Date; b=X9dWK/H7ivaX2EnC7aO7GezQGHPjZG54/O1VqN3XhDEwibE8hpxKbWKqD5SU5ZskDk6teK3PUDB2mIRPhZzzyDHbPQuGDdXNZG/9jreaPA1eEl2JRRIvPifcsWNecauftmN/yZPGCKNTMvjCc5oHE0XjuzTyP+9eINrwokLr3Zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MrIplitX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MrIplitX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF31C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728374753;
	bh=1CP/q7chpxqmRaakmk/sDncvD9CbKvwzx0HoG8ceJvk=;
	h=To:Subject:From:Date:From;
	b=MrIplitXt5BrAuCHFm68zCTeemArhzRcWhCQS5T8Z31LXNSzCFCbVv6RkWcQ4Gw1h
	 0TACIzUhqx0vHHvIGcdOMI9eyJNZJ2JbigHrEbJLNnGb+r89pjpYA6MZay3k5oiDFz
	 3XCmp3k5ZgoP14rlB9E53qrn7hYQECynmFNYK5b5y6Xj+JjBq2v15qu20nE9+Z6bD8
	 3MiKLu6uF7Ru9jCxxWUHFbOp+eW9QmLHk/CDCEHr/j2B8wn12+9JDO+OMPhKTpBZQH
	 BmpWlhyO+3XtJVrCVNO1V22B6AeS5DW6bZQoZAktNZploohlWQP9cEtORaWJwFPztK
	 gA0C11Sid+wAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D2ACED255
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172837475361.30516.15868198850124666178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 306b7177fdcd1d704b26d634e903698a0c10641ce5df3e79d3c1771e6a33503c
Date: Tue, 08 Oct 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728374753
