Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529AD20ED
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 19:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717444523; cv=none; b=F/iH4mCbkbVUHkNjMZ6nhM1aKAENITY/3S3WO2FJgZF4e7/NYWzaBn3Wig1BuwTpT+L2PiAPFUdRQWdYs+bJbTvIb2MaLWQXiT4bIbZRD+d8xLorcFJufbuVlalmyRbXzGpS2ijLPVkbngnbaFXcl6G/hWw+qF0BOKuTi6FQeNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717444523; c=relaxed/simple;
	bh=RO0ThQwhh6KWTnSAPNw0IJfCsbAOZgU2rmxWR7cHvb4=;
	h=To:Subject:From:Message-Id:Date; b=qoFZG3vJydmKVLGOIRXOeZ5oQkWnNnnNu0FzRDNNiBjjFSlXtujd7sxmrhWvSpv3bmgKhR0rvyrPuimCrokQTWNZM9BfrxICRVxSdjp2nts78OBPWhj60oKKXYDUldunB6kdy5jNvMc67nENHkY+pOeh4WYcNH8CXI86KFukwKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0Z5TRfL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0Z5TRfL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42D6C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 19:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717444522;
	bh=RO0ThQwhh6KWTnSAPNw0IJfCsbAOZgU2rmxWR7cHvb4=;
	h=To:Subject:From:Date:From;
	b=P0Z5TRfLjvyuHequ0MqQubCVVAw7pUS832pOeq7/H1s9Kc8NqXPPc/ruVeR+WFnQT
	 ew+YCnrFSB/1OyY2hloKjq+qI1ZG5S5Z7C8jSAZTWhYPxLb2ABqw5Gh+RzhbpPyL0u
	 tyYZ9lXd8WHlwUaCOw+z4yIQ3gRkA9TRDy6x809W3i48RUm2eZTvJ4jd82+4EbkD2Q
	 j0rkryXK2bWD+KK50gxzpUGonHPevnMow8z8VOEzRlDyP63ONNJsCG3so+iwwb0E2X
	 7BfFFrJjnnaYyw7wZHITOZBrp9OU4IDhn/enQzi6ug8OvbQP++PBvUtFPHxd2LxQrZ
	 ItYAR4d2qcwww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2906C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 19:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171744452279.5822.14366359984920734273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 244644a27bdc57118584e3b1b13b19bf24f16d34af5eea4f01508b3c4685bf55
Date: Mon, 03 Jun 2024 19:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717444522
