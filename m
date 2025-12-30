Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3F862EC57C
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767097433; cv=none; b=azCoq6rxZu9keOX66/v53dKP2SA5Tw5ZPXh6sXTKyDeGqOyRxeHwPAR84ImvZQJcfNoGrpZSM0tMfUEFs66OuwLYHFg8PSWW2d2m+k+fltYnQaC3ljBgX5ZqqydqXIEjN1RqkiZZjy7xY5jeBboAmhXIzVf0UAQpn/TLSDlMais=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767097433; c=relaxed/simple;
	bh=MpmQ65q/h9l0GBVuy4ke+UkZ3nvCQTudJDfcMkU/CYI=;
	h=To:Subject:From:Message-Id:Date; b=Aq1BXsTM9yxvoRgraUup2D4jfMRSKv5amnHGsI3QzXcV1/VNnPEO0rtlXo//AuxA6vTvqRqMFq1uOSedhEaq1s6e9+dbtZgpCiu2hf+ySJO/S3RVcgGWN2Gydsim6gRzomTgIDHZe0Cb3ygxjpupVyGFkiMynjxsoKTHxJhylmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBdIl+zW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBdIl+zW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4D6C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767097433;
	bh=MpmQ65q/h9l0GBVuy4ke+UkZ3nvCQTudJDfcMkU/CYI=;
	h=To:Subject:From:Date:From;
	b=gBdIl+zW+l8sDKzwtRN2VEiZKTGYFiQIK9QnQwYfFcvBXfVOiDiKUyq9ieHKRTYnT
	 /fZDAg9WIoIeuO6E2+c1q4BrAd+JT3hY0vrsGAXwOmDKxE8lcLoA55OYl5NdDMDS/0
	 q2GVrhB+WbyDvCkJbrBJYxbVIsYssZmsKo4/vcaEwNDzWHZTkulzysEeiBSJJZ2/xL
	 1sLkrlRgtltHIJwDCysXO2qmGMruCCnz1Q+aIzU81BqP21BT54FlFRMhhwNtaRQw6f
	 wBZHAz+5t+CShQPhkQ6nBG7ZceK+FR5iA5VCFshk1UrE97pqGcHIhxOXFRDMahnouL
	 QCxrfMq3HMBFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F82AE95A77
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176709743357.18587.7618090198611000371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 038afa23ca97b60dd9edce09d851eb41b3163725afe6dd822535c2c35999b4e4
Date: Tue, 30 Dec 2025 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767097433
