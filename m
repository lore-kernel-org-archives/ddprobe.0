Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA7C2940D
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763216994; cv=none; b=VXk2dLbeAWzwK2HMDO4ZKhwqvvOae4tvXaaM7NdkQA8XvXupx+HvS66QOOEI9bCY5fPcNL/ZqXyx4c7+5UrJOcUrRV3/3EucFLrVaIc560JyK1pCUsbQDBmO0STfDsITvNbCBo8WAFLC08lYz4GEwHa1mlyxwV5unwSmCsXiXDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763216994; c=relaxed/simple;
	bh=x9wynY+JGqsANiHjKG/OL0tQBc6yKKMpzFRiaNKOCAM=;
	h=To:Subject:From:Message-Id:Date; b=RxpwNVnh34930dXylZvEZRtWridlRFvX6HE0ft5OcuCGlb3c+H62YKzRPRlGyxLA3acqHfe2WcZxxFYQ1fhNNyba1E4luVJ9TzsOvqTjiRz0dEvP065u012tL+WLoam436j/kSSmT4DwBO6O9TOYs1OjXXCRRBoGL/oNSmC7o5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTGxmJeg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTGxmJeg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB09C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763216993;
	bh=x9wynY+JGqsANiHjKG/OL0tQBc6yKKMpzFRiaNKOCAM=;
	h=To:Subject:From:Date:From;
	b=bTGxmJegrvHYNGOSsY++DjagWAlvaOS9St37fyMELfxC8odbCK97zwUda4yKzBtxZ
	 2hZ5AgZ/4NNm6yE+Veup5af9RqOEgYHRD35yYtET3GKgAxv/9rvD/HjfjvolHSDaE7
	 tT2Wuf2B4O3tQqzSviJ87TdtE9738ZLwCMwpbEIDp0OACW495TOrQQtFjyDzFzqoLF
	 gHey9H6ITBYbJA8Vq0mYPPh8XnrDkuzixp6++8Ln3JbftuQn48KenQS0x4HNuMEeIz
	 t3Cm1kJSg/fEtcycy9OTY8KUrZC4ojDAzhfpfxZS3gAnhq7423XWb9d2mN1VYteqFH
	 uxBfRHy7NLf8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992DCCEB2D8
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176321699360.23342.18120797596706098999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 152b9943eb91d0d3ea7923abd1eebdac648557bf24fb208e026817f9e8d629da
Date: Sat, 15 Nov 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763216993
