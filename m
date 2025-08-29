Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F166264636
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756466994; cv=none; b=e56M/G1lWApSTWWeCNmQt3mwlD4trIRf8gyldHyBhs+vaEoOajJ/wCZ9xGevgrDqZnPvMAvPu2qMIus5Z0zC8flUT9ttPFigHeqesv5AI4nGRWLGS30kWwe8ggiHVE96hxqPXHp5dMjIo/9uk8qR1Z6y0AMeMFxPqpJY4xCF9oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756466994; c=relaxed/simple;
	bh=Yu0x8cYDr2IW1JnLLkca84cresJ580uelakk/esvHVA=;
	h=To:Subject:From:Message-Id:Date; b=Td5Hw62+svaYgLLqwQTAMKehPboMk8pKlqXu1dfKxlGBspbphvxys88A4EQr8r5HX9zt7+zdMZVAFG5871aemzk3TgZ6pPVlx2zSBwiCjia5TIv2i29klyZ3jXqHcE1ecMmgI/q9zfFYuVwYqBwxO4DUqn2UxYda9oV0kvOqReA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdy0GmwH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdy0GmwH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DEFC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756466993;
	bh=Yu0x8cYDr2IW1JnLLkca84cresJ580uelakk/esvHVA=;
	h=To:Subject:From:Date:From;
	b=hdy0GmwHfNlCC4lZCnEEGsrcOAs/87kq9/hQBcBKZhXBkgmYLKaI2/uu2wTUK8aRy
	 xkVtn9W7EX9M78mIOOUMZIcdZl4VAmtALEyAYL5VugvVXaBSjWtKvQrHfvwc2sN6sB
	 2lHLzo/YubR2PdJTvoUNWlD+7aoWDXeKk/U1pWcZwp/CJU8WEuF5BtOB+HnIBxBEfG
	 PTnDVilVrhbLSC3HO5f3RbEVuTtzrc/LObsqzCL/coIIDg6FZ+i8TvO30EJYTFYl0V
	 j+gqgEjPOjtJOjLlz13anwnbWJj4+Ek2aUtXBPWqSWDekPQqMhA7RtIDsFx1DwpEwX
	 vS84NYJxZQgLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAEECA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175646699357.22163.5502413500528977256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0f689a22fe0fe01499323a60d4ed6ebd4bbd78f65ab517ba17c3ceb2ba2d75d
Date: Fri, 29 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756466993
