Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3248D19AD5C
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738065356; cv=none; b=JLVzJkDZ0Fx2v8rBt1AT3JhOHr2I5lhCL5LI1/BKW6iwa1OvjGVeCKc1d30mpDFnGl03nZgKsyLOKhuGkdW4UIQNasFJzN4sO44TJWg46IZLUkyJRWncxw+s+iirUKKwoRxE3VaQLnbVBoXIUfbbbK0Oo3AH1Fjt1VFnbvBXYSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738065356; c=relaxed/simple;
	bh=OvQ4uPPMJCqVE8sKqmAPh0iIdxbgVagoA+mOoXx9Vl8=;
	h=To:Subject:From:Message-Id:Date; b=XNQa0wmgcvYn6D1uB9nj87wk6vBO6qVKE24HCykoiKIIb+ynUSZxSDsI4xt+/hpNY2IxcGvzWaCaNENhZWrIDcbv0R3PgfIiGWZr4pACaKJZ+onN8K0ztka/oQrT2JDnAj3Pw+FhocuFpVqm5agAfBGWCuXCFv3IZOfpJeP3XIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bn1ZhMr/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bn1ZhMr/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B7AC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738065353;
	bh=OvQ4uPPMJCqVE8sKqmAPh0iIdxbgVagoA+mOoXx9Vl8=;
	h=To:Subject:From:Date:From;
	b=Bn1ZhMr/VWlTRQDD+PmGilzymv/DdbpLbCzDTZKpga7ySqlabyBz+iiBLp1G8NT0F
	 4bLdihAxcPVWeiBHUtdK9t/7z+980ukAwiUk1iCvjsJD2sUYzTlWP/K2QNzeWVYdlQ
	 2jcl1IteT7ZrI8bSDUZ27YYMr5clRIasrAKbujaEyqSV/P3WKWZ15z8cmIFCxJkRoX
	 2TAYMqO+H8XVrum1whZoXsCagG4ZeX1355w8p/xK5qx6HKSm9Uwb/BNJNoTF1kMdlQ
	 RlN9YBbQ1MWcjFThJCBAQU+G8ck8kRubDXn9D8H1H6dlX8Y/SdzqXzrEpxrJLlYMPr
	 /8zoisp585UHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DE6C0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173806535358.8472.17173655838510786925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf30ab920acb23cf90852b6135534ce42ff25dc502fba81f5748188d837929ac
Date: Tue, 28 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738065353
