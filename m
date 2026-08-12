Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 621B238229A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786550434; cv=none; b=NvjhB7pESRiGfdfvSxkZMcJWpZCkOvQkp4mlZyHG+O6FprDFXqUsywpPOilqgnsDE2lHHRLWn5V5KekE1dXLhng/rrL/VPaMNMC42cgPcE/MR6x5PPe7mrww+aDTedDXN4aT80LQr4MFa/FkXU05GvN2IY0CQnjfNvUVXLQmsWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786550434; c=relaxed/simple;
	bh=wSLVUA7D62dyG8wPYZVmNxWS1AftqxbdiNZUuuoVgss=;
	h=To:Subject:From:Message-Id:Date; b=siFgQbFd0VzP6MFOe25Wnej64h1Ei/+kxwkkyOoSiIk34q1vdFmJFshs1KRnNsN0j+uXghKlyPj4wj5Tp2bNiDoztL3HnZFeMJcJveVn1yt6iulfOui+0mdWoJqOLDEvktHSiYxPgYVc7tVU78l0b3Q9zIoofj56Jn0+WNwkx+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AT8nh12q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AT8nh12q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD35DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786550433;
	bh=wSLVUA7D62dyG8wPYZVmNxWS1AftqxbdiNZUuuoVgss=;
	h=To:Subject:From:Date:From;
	b=AT8nh12qVJbcyC10D4iUs5Rwa1PAxe5KWpX2tZUumDpzP8x2mPijIFp9D8/2IW3Im
	 3fGxKR7YdnAhkx00TzTfl5k2BEiA3ixgGhUYZYwL8EWKKMdl4cn+2XtL6pn0SpWG27
	 dWMnJrVA1fNuQostZOv7K8WVaK4ISZRzQJRsRsaVsc88gFSogPB+3gxWfVuHDS3xgS
	 nducSdj74SGgo4MDTFzgdHWO/mn9yDzasMb9HUVPQ9afni/uM332nx8yNwroZ/yU8w
	 X9zGmFN0fw7DaQtdk69Id+LtbCww0UYMDjkyOANlBRJYakmjNOlEEsWk1zVZo0dsXB
	 QdX2Wbr+jz46g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B34A2C5B56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178655043372.8538.4190630264408708992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 157501a81920096df0a9b21fea5047e590a8d7180943bfe25a1f8c1c590794e0
Date: Wed, 12 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786550433
