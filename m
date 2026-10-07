Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7979630C359
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791403234; cv=none; b=G9cqzL6UCeeyZtP19KV7ccWFuwMjQL7weigfNX6sahK1+rPyipRkG3wQXQcDGA3te0OUH5NTN51iY4qe/1BX3Va1F/PtH8Wje0d1+fLn3iFk5Rl3Yuu6e2P3K/2a1cfAAgvWke5rvQecKvc4DOyApPB8q/Efqtz/TWhF3boJEjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791403234; c=relaxed/simple;
	bh=vvbxDC9gPddhVYqhZ/yNr7NwmruYpAGvYsYwR1Qdmk8=;
	h=To:Subject:From:Message-Id:Date; b=h+j0BGHhUCUc0KskHEJu2lfY7OhfAPXJgv4Y/L7AISmEmr/VMj105/cIF1lDy7hxDpcdzYzQpkGquFqT2tQzGGIGsBm+UWeCeGV6jTIGXAaj9jNfPCfzPU0ZHfYgRzg9vWJYzaLBpGXb21pOkvQlPNwzad1IuFsJ1EeyhnG1XfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrFs/Bhi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrFs/Bhi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D351BC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791403233;
	bh=vvbxDC9gPddhVYqhZ/yNr7NwmruYpAGvYsYwR1Qdmk8=;
	h=To:Subject:From:Date:From;
	b=IrFs/BhiQfuUt6wopyKV/5GWWS42UkuxNIdWYQqw38f55vYJPYkVOHWLE5g48shc8
	 DRIdxnINwOeedYPPBn3dcVlO9rz36/tw8UA53T46D8QB3lY2tMjPTcZRfI7E5QRysF
	 kRZj+eI20TuIHu3C84au+y34OOBVkb6bzuVY8/EPWhUoJArepIOE1xtlmlxOjgvDzE
	 ho63zcvFJMIB/TAWti/hfzU/xh1kOuyZC4wBs/s7rDF1HUyexN20FzyF/9k7tFFxrK
	 gGyNjWrPtP1za8X6GCkRYQC5TZag3fShgjTJz/5Ko0aueFcDE1nUhCxEtMa/ApUi0+
	 kd1odlJW3p1xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD41ECA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179140323368.6553.5548068711561211290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036f6a24db203fac0cf15111869afb3bfdc9ed4846160d10919d844964319095
Date: Wed, 07 Oct 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791403233
