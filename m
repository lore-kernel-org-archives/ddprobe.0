Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A913BBA09
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791296434; cv=none; b=U47C4xuQYRyOb+ke7aJa+HJlCvA4RxNHHObcvDjCJvuNzOd0DLcDLeyOOA56uZb8FlSQcDUxTfun5mN4RCxj4SZRdtQZYKNF+3dP196PIkZizPxxfTkSQE6sTfSopXWaYg0VtRtM3Ajy2oMUpx4q46tyRSEEio+rwzUDZ9rKxVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791296434; c=relaxed/simple;
	bh=nfOaBl76IyDibSqJqwfSbddChhv9/WQCEOMaQJj0eUk=;
	h=To:Subject:From:Message-Id:Date; b=tvi4usl5GXD5MRxQji1hTuDDZKreDEbxHJAVmM/XRFNWvcOzCQK8/7VlRgRCBNwIkzyTDkfWFyAHeDWv+5Y4vUGb7tqNM0Sxr7pU87rUE0fQDPEUrKQKGGizlh0i2yFJBDZaddrdT4Y3QsIHwKZDCNyqfvO6FVBxu+yxdeZbbhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RY/29M6b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RY/29M6b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E80C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791296433;
	bh=nfOaBl76IyDibSqJqwfSbddChhv9/WQCEOMaQJj0eUk=;
	h=To:Subject:From:Date:From;
	b=RY/29M6bvkN84V4jJs+lNzO3uOHrG32727ylV7O+JsZmcQAn4Y0QYW2pVamtBBMJk
	 lkD26G6Z1yXFXEt/0QybU/Q5M1UbbEf51+re1RIb3ciNViJHttIy2Uoeb2TqURtFU/
	 Kju/UKMEXZvjq2PCXlvE8Oj2gijL19lZY81dMqY2gnFvdpVZvlqUy55NwDH+2FFf89
	 PSvGs9v4093UX6mowzOHBLSVP4GOj2M6LgDaf7LUF/oRcxKWvGN/bpfqXbR2lRrW2C
	 GhN32gZ8JVnlzmT+mzXOtxXZ30TQ8fl8XNpyrC9XMbpgl7Mtrx4qHSACGaEfnAltoA
	 hid58Qs7hzgqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB38CA6001
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179129643370.14083.8307349369182470478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1333626474233a7cf5c420c2d45a68fa08af9739fe34ebb011c38350f81ebd1e
Date: Tue, 06 Oct 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791296433
