Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE992080C8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 21:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764623574; cv=none; b=n5VoPL/YfrzbhSgNjQ/fZzqNNF52i0Wr3H4jthh9xiy5ipsoKZ7kveV5GxtzRfxC1I+M97XkETE4n+JSGnmlPFSqU753zng8fB1k0yJ3rB20Snqjb2BRf/iHlwfnsO6e89jS+gmHclS7MUJRWYptb8XgOF8/oJ/HOfg1bqOi9fY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764623574; c=relaxed/simple;
	bh=OghCM74ZyeocZD+D+tf++Lk9JN2Kn8M3tKYJIYt+q3k=;
	h=To:Subject:From:Message-Id:Date; b=TliQQ9yNmZO4FQuOy00U+EsXIkA/d31D2hKr6fDpLQufIGPYPFYJD6F7GNPZMelGmazWAwOLg4mBrOkjgBlYvh/SJLcVXLhEPYJLMTUQ3CoktgpU19lmhbHXHTv8ptzLi9RWgyD5/VrohCd+DzLksVOOBKQseAmJtyLxf4aCtKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzqHd9AR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzqHd9AR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10EAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 21:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764623573;
	bh=OghCM74ZyeocZD+D+tf++Lk9JN2Kn8M3tKYJIYt+q3k=;
	h=To:Subject:From:Date:From;
	b=AzqHd9ARZUnRkmCfd1SK/PZwe+d2OdWfFTynF8Efob9JteWpDyTaEe1ZXOp1RVTEK
	 e5Nh3Ij+RgwtVQYLlZV4BaPJkNCeHezxCLiTpuz5TUiZLuEj6+17oVCBaQR9wmb2tl
	 TQhHlGaMkFMPcxle8VJLfLUo8Qp6AZDWMS9UC6gNUGcNWcyPuYQGGmtJPa5a/k/6Xw
	 mOunK0J1ZZEkC4LIFIJf0ntMhGKFVeM1bXez4hAItENtJx710xDmzIaN+fhyTwruqt
	 djH1+R5qPGQDrwlRpu5uHOQEXHU88s1JB+i9rq2OfPwxIZMbOHRGx1PZZAYHFxQLOp
	 jpT4y5fRXeBsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8E3D116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 21:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176462357361.23765.7848594082219996035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0be6b93d5212c652b85359c9ff6339e497c5dfd270daac0a97164e5c9775ee7
Date: Mon, 01 Dec 2025 21:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764623573
