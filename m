Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3733520969D
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738668355; cv=none; b=kuDBEOfauxb7kGpFn1C3dGOE67xVH1s9HAbU1O51Fvazst/7PcAeHJOaSpBjTF74v9gJvl5PlY8jlFo2mimrtRLzrcR2EaI+i/1MZXyzEt0SA/0N3D1/UrQ/ta+I1ar74+8FiBqMQrrvbtWvXitceOKuG4qjGKNUEBa5GjRU/yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738668355; c=relaxed/simple;
	bh=pPquZkayn0FMS0P1VO8ux0DIfWLbvtl2jHx12QcaXeA=;
	h=To:Subject:From:Message-Id:Date; b=H68HZdHWo9rMaXePWHP9HOdOKKw0UQuTZ0LDfK6+MEA+LCGlxAQYKofXAoErqZ2ZJpeqRROGADTs2o/lnfLs+zL6U48+wQjqQF5FSB4ADGzV2tkNUJb8l/HZBxotWO81dJyYoBZcFhs/FjO+icoxWk1O6wlf8cvo5gco+v5lhUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qyKI/2yk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qyKI/2yk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EB5C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738668353;
	bh=pPquZkayn0FMS0P1VO8ux0DIfWLbvtl2jHx12QcaXeA=;
	h=To:Subject:From:Date:From;
	b=qyKI/2ykbQVgUZK9Q1w1ZJyYrcyyguhT4DLY3ow2gwd/HaldUnwH7pHuGs8x7B2Pq
	 2tNL2Dw9HlTtB24uA7NVslEty9f2uc/Yir1ZwVohvjqaIlgccbUzpBepEzKZo7mlGu
	 UUWD1MlkSdeyf3RUpTKbquXJ7L7sUiIZYwks9TtvYUkVrq2RwijsjHbP+YynSIDGzn
	 kf3jjPmRDIWbE95LZYkvoQoy4bxyulTm02z9a+udReNYwquzLGfxXJ7IfJsNd0cqwy
	 V2l13t3D605S2ome0KF+a904LcDOv0ZAx4ZidFi4UKd/NtiwJ9pcR4pgcLLWlEjzFK
	 kCDQHXQSWO0Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91989C02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173866835358.20777.13058991317725293523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fa9a5936350013aa04f5af0314a4c5f24833465f7f7f06e8f6c73500d953515
Date: Tue, 04 Feb 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738668353
