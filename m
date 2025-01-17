Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C87025765
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737086754; cv=none; b=XTyKuITGYk3wWiKfVCaUp1yKxl6Y8t6yZ9WbbvwijD8SESlL9hVNQrD9Dc8vFBztvm4fKdTJSrTFH9HFcmKD5xaqA0Swz252oDivcOFqueXu+/TzSucVZhyRfoIyeC4eVAPCiw44F1TXq90iF0T+yMZR393fIjoPDAZJ/IEbeo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737086754; c=relaxed/simple;
	bh=5wWS4dv1ZMfqXajFRBWRe4/KMo7pFo2KdqwX0XzROJU=;
	h=To:Subject:From:Message-Id:Date; b=O8L/204v9LaTDqCLvYtiyaMjN43tAaFJSB868nCqp3iu+//tDBm/UMPHNFE58Q/V3/2YmUlsJf/qrRcb03kTEKHNgwJ4CD6+70YBjn6XvgGRpeT4Cn73o7PbZHY6lHBYXsMy7YOp+ISx4SpyBU+D1IdK46c8/MXJBz9b4wTKCK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rz/LqAOQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rz/LqAOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5AFC4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737086753;
	bh=5wWS4dv1ZMfqXajFRBWRe4/KMo7pFo2KdqwX0XzROJU=;
	h=To:Subject:From:Date:From;
	b=Rz/LqAOQAUlfVDO6nYnsYNJJkxY2sEycYJmNPEJqkJZgo+npccyHb81QW6IxL0TKZ
	 pVsWtncIDBBZFi3lobKf1poPj4Y4GTDefUSLAeYtWVZYwwlTUQqkDRFYC9NtVYoXi9
	 tlnVDfOleDyL+lGyQGKPL5x4gO0sJFmHiA4MA2+cL+SJS8EPyM0hI8DqLdUJGp4h4c
	 8hLEzqfVHyD4SBLDkemI6MvxJCB+c+MC3Sk4l9urm2b2TibCELAyKSwnZbr5QVsHzx
	 9ErHg2hn3zaikaAHgW/IdBqNm7BiC/IeSQTQNVzhtBD5Xv0IQHO8f84o+9RMGOBzEg
	 cvtVnf+5Q2CUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9822DC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173708675360.10016.11871604533855022420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1baf96df46fdc47779ff3e3464c62bcd3d62b1f6ad807d32fa352f57e4251a5c
Date: Fri, 17 Jan 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737086753
