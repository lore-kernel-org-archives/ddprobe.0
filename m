Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4EE2F56
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758512394; cv=none; b=Ukjvvj5n0DWZt/XixfqmdOAac7N0f78g+VniazCntCWiZncKf1uJG9sos1reT3ndYCn+eUunROyUwgCXJYEGpAYGapm/+l6Vw/H+I4sB3WwN7gXq04QqIMHhKuO+O3n4w0pj8Qj4OfTpp/UbYtRatJic5Pkf8jJDXT9fq7JmZKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758512394; c=relaxed/simple;
	bh=j/4pnjKWyBQdeLFt4jcWJN/rbg2C+o43zrrQW76+8uA=;
	h=To:Subject:From:Message-Id:Date; b=bctiSCF13pg3DSDO0xUp/guOlhuMdi9Id54mydjn/ZmeeiFjYPMoBVipGy0/pFT5tsQ9CyIoYdBvL05AwSzsX+MszB7/MKo0Tvn/PnfrbdHxMZtWjuRFzpyhkUwA4UOlKqRyyTmbD8ATfPYt5Ib+zckXpRxms0xkYeZWk/e5dNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHGCgBCc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHGCgBCc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B33C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758512393;
	bh=j/4pnjKWyBQdeLFt4jcWJN/rbg2C+o43zrrQW76+8uA=;
	h=To:Subject:From:Date:From;
	b=pHGCgBCcCxjfCECOpJb65L+AXUeG076O8EaDFsquWNqPfqBok/MDZl1b0vya9Du6E
	 uBrRKN+1HK9maYMNY2Vdlx1higy8rs+Nl0jJ4c5D5yPUUJBLag/kHVw6vqKTKVgceI
	 HQ/ipYA7KZsQk/DfXYyEOBmAzLgWq1EAX/V9WaFFfG715Cr+1twlyy2x29AAlCNoOD
	 YNaFfVxeO7ZJuDzkJ5AzoZ6vce6eJFmrqF0FrcL+cmU8kSKVdhbat3L7AtvZSjEvGY
	 jBNKS/wk3mIaVQ69OaGCSBOTrKScVDhgdIxtWH6BUqQvq7FCvppU47+va/lImy8LLB
	 LmQKcsChiN7Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9184BCAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175851239357.16252.11324709413852737520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83180eac3a02963d9c78b80e06773ca78a22b5b7b8f6f128c7cbd6a05973433a
Date: Mon, 22 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758512393
