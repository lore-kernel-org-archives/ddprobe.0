Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE251F5F6
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742495394; cv=none; b=Ltti6X8Z6+vxU6P8A2OgyVdxGZO2y1adSMw89BCrPlAfkaG9C5lgXW58CnTNsy/JoTS9Oi2epbwJB5xp26QB52GH/IgqmmGIibQpuSp37zLajEL2q2QHRi/y0u+FeT7AJ1abL/pWd3PqF3aYYApWbcxox/UJQTATl6oeupvw6OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742495394; c=relaxed/simple;
	bh=krhUlZhK6VW05iYGnYPYYMDZdC783oIgj72TvL3AEBg=;
	h=To:Subject:From:Message-Id:Date; b=ND4VWzfywtHlqgk+ql7X2kvjMtdJ4Uws6Isb7WucS0UZxTFLWCLDAwnEBwta1rUGb7wOLVwfQxyG9EG+CnMeKhNvzhedSSC/qGMWJ4xEJLCEjiZbZsx7MGFpRNiknNOQfmQvUtPe1wC2cu4DeC6IYsaHSSd8dNSTyqGo2F8gTv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUPZcXp3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUPZcXp3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D83C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742495393;
	bh=krhUlZhK6VW05iYGnYPYYMDZdC783oIgj72TvL3AEBg=;
	h=To:Subject:From:Date:From;
	b=KUPZcXp3Q6pQr0um1lV5AMhBohVj4QU9jB2yuCC4mMiMC+C/OB/2ad3O/LHFRAbju
	 a8swGzlQ2oAF0NNNXAyH4Wx8YPil3O5bpU44cqvdYG5EHbofbUlGnka57VpLFfJDgo
	 zF5he3WKoIpFpa3qEZIf/yR9FVaQBAiwoyv2sqU+eif2G8yoxBmYKHsKCg1CtEyARP
	 KKZhE8HbWfoWaHeXRRQfsWEtL9ldIcHBmXypQi4w7R0gwnZSOkE9ETf/QbIToEFINq
	 T7DYaMCdHGB1mdFZIkjgRZ/kOui6oOGFsuO0Ya/5Ui5YaJ/35qgJb/+kfqHdBLi40E
	 BnPhmDC9GNAsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D477C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174249539362.11933.10347521341216458724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42cf8d75b7689d1341f0cdf03a4a0b0bf94f00733f5853f70ffbf1d30a622f88
Date: Thu, 20 Mar 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742495393
