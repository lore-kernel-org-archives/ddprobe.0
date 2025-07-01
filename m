Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7017E280303
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751403594; cv=none; b=bJ5qYuMbZFYmS9Dr9XMd8WgpvImb+Scidq3oqXdcen7eIH90thoVqgfZ15RDsOsUEpoCn5fsOH5V7LkrtrsBc/G5Rz7ZJ5uGs1iG+pIV1gxAv9Z8JsM9P2XrXFT6oZ+KSp6KOItjQ6dpwIO6/AM4pyeGxcfi7xW9gHzhRXXBjxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751403594; c=relaxed/simple;
	bh=iDY+O3RM/cc3aCXvRYiXIB9F5iv63pg2uINbM2/QAoM=;
	h=To:Subject:From:Message-Id:Date; b=GMPJm49Y+Zq1NcPEH4+61JwMRM+V4SLFclVSiugcqzO5qyMcPXla2j4PTOprlJz89/hqZMnuq5GHGtF+t0kZ5ygRjOMhPn1zAJzR5I2uJACzotR9+WX8wo1k1Sx5zYk7L4Lq1NsHKAJWn0arCMMoj07s7uMNfzftlbVNzcuQG1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ROHlT/VC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ROHlT/VC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77DAC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751403593;
	bh=iDY+O3RM/cc3aCXvRYiXIB9F5iv63pg2uINbM2/QAoM=;
	h=To:Subject:From:Date:From;
	b=ROHlT/VCzUgFFbqnb6CxJ/wEeii7fIRkQSMueFkx3VfkbGefyo3mljuj/eg8oSHTz
	 CHlGjc3ye1wVf7BWkPJMzx/FEEAXX2jX9q1xCu6fb3+C2TizXFKjxWQCpGzaovMQ+J
	 TIRdkxtt1R/B8U6+jyEaa2cf4RDt0U+zwg/ci8xsRzc0GerT33qZMYf0oucmY0VEZe
	 Q3R8RTv+rJglB1kHoEF5IcXBrlcFWr9nL3QcTD0tiSh+lqmfItz6merV2lr8SZUvoB
	 czEZmiIGJMGf4G9XB+e9jCqhgHYkcvFqHK20kOZ+TJDKNGOLm293xlL4ju6ZYd1Y3D
	 E+lKtS1IB3gXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918E2C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175140359358.19263.6647389687801919983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee703f97ba7d2af3f3c801af84ac62798f529d12d7cddf850a3eb66517c3299a
Date: Tue, 01 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751403593
