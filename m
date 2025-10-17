Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 566C4332EA2
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760702994; cv=none; b=NkaXfsblCjHiBadtAdmUx3D0y4JRpueljPk6ftGCxB8/y61czDTg4ryewC9XwanU3vjsM2tNQ4sERSH1D5KVub6ZeYABp+968Wv45adbZQuvKbUYorXwlvvpSjadKbzFcH039DqJSJPslD382eYkzAN1h+iT8h3PcDQPOMCLiX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760702994; c=relaxed/simple;
	bh=HDYZ/IAKpczxcpvEQ4PASvaQJa/d9hUvj70mgc7QyIU=;
	h=To:Subject:From:Message-Id:Date; b=AK0PJJ1ULd8Na5bBQJaTjsNqxCNoLZ9UZ8/54o09+wSrL3ziygcvkES0g8tkTvachnOWj0qPfUf64H/xYVVn9Gsm/tPpBzRg9ismh2DOLMq/Oxeb+bagqJj/+7a+Y9Wz5eGH4aiYuYgKkzvrUAdb+QilCt52vuabpoPb6+/5n/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUcfRIF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUcfRIF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3239C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760702993;
	bh=HDYZ/IAKpczxcpvEQ4PASvaQJa/d9hUvj70mgc7QyIU=;
	h=To:Subject:From:Date:From;
	b=oUcfRIF+dhMG7HBD4FGDxcH56Wty91AyCYvtxSzKa4uVBmq7Wv2S8oiFyV4LhadjV
	 jWgFmDeA1mD2iFVFwejzi5QrIFhwWvQM6aiQYHrt1H2COX8Ccuwz0D3kp/NBU6b1yZ
	 abrWYxrPv4B4I5McfyLiJQgZ+mNtm7PLAsvQJOWPXclOi5rGezms224pWMYxFfQ+qP
	 x2WW6T9KQi5iqMLCoXlO+dKE857Zt7E0RN3NOxgec1ZXtlhfLcoRDrl0qHg7uy0NZk
	 aH7EB4iyiYkIrv+kIQ5b26itk4MbCnVUjmgF1yTzskOW4Ja3ZSSIHiuD2Xb64xSJXf
	 doVlj6wGISCug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D3FCCD19A
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176070299358.4034.17615440260016012840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 520ef2dbf7e2c78cc8a1c511762cb5e6506cb987e24bcc0806634fcde221844c
Date: Fri, 17 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760702993
