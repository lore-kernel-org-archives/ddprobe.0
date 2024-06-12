Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F19116DEA3
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 09:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718186303; cv=none; b=toetBIL42ni8Mm9VCUMqHG291g75vXgKfR4dJ1AClZcf7ObzoIhi2V8yhKCbOvqz0OSTVuQJb00h6QnFGa+F0UFX9XPjzihCBDN/OTC+ukuCrrKJ0NQz2xIYFobY8jl8eVu/ea45EPhYS/rpDo2pQo/AiDTF12QY3iWfcBkwWis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718186303; c=relaxed/simple;
	bh=hRgZwGFw9ZaVtM6xUYj947OK/u3ncQJQpvkhMgJrA9E=;
	h=To:Subject:From:Message-Id:Date; b=f1nUaMj+twoXMMK/8+bsId3aQ308ZYWBv+tarSg0hK6rfIExo98l/pBKAWj15p7X1W0XWT0Z9zOCsvK/4fJyhEmP+ij/h51V3rZu+nKv20uPgsRcCRfikN/eSMjhcoNrentZHX1Ih5jBGVJX5fQIQ3CGpRv9lIpFYUt0YBbt8/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxbtQzEP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxbtQzEP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01D4FC3277B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 09:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718186303;
	bh=hRgZwGFw9ZaVtM6xUYj947OK/u3ncQJQpvkhMgJrA9E=;
	h=To:Subject:From:Date:From;
	b=TxbtQzEPCeT4c0GRl2rC/znamJavg7wQK9a6ls/RQnykHjAtHtZCZXhdpLYvpwaWo
	 t2JFdndigsspdJXHIv0Vp/KsprxK1oQtlFlU1ZF10MEU7IxuGTs5UdD5PDWjtRJjey
	 3DOX8TuYRB/Q7WCAUpg4hWcJCWx1aD5h4m9hfb6COPJ7uw4sx0ouzbPyPhT1m6KP3e
	 xgr62AklpaAP0ZGmdqbOIFJc35HjMBbJlRbuV30PFBfRGaTdcAzMfxYEIzEzFuDOmz
	 uswr/iG+LDFxO+j0bR574IRQYJpGVoKGApiGXBvFNaiZam+3X/DCv7UgzTFzozNsMO
	 6vvkMSIE9FuhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0191C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 09:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171818630288.26950.9828635261629918306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7ceaf0053ced3dd33ee610056a2f4a97c6aa1660396ed0d70cf50ae867663d1
Date: Wed, 12 Jun 2024 09:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718186302
