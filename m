Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F423433AD
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785380434; cv=none; b=gRGxQRqQQZFfV8lVWyO4UVfqokWgN7u427u83XA/E2uUJuXKwVG3SV01CHLCr/cnJPhircGzx4Zulm8vTGUk0BGB5fXI8zTysDTeJB0flY+J6YO/r9jeWSEVQl9YvPp1xIS3SQ+BA10aDjqfgBhFe7wsH0wY+EllSGmcnyilCRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785380434; c=relaxed/simple;
	bh=KrXIMu1mbrMa5TfLz5DpdHZbJNenBJ6334nCQkqvlz4=;
	h=To:Subject:From:Message-Id:Date; b=VX4m6qsyQOXhgq28lPgh4WbqDj+CuDIDLGD7D7E5BGzP82vYNhnE3q35T1K8IZKbVZX2Ac1kCu/O4O8kxMrqaXYExIK5Qz0JD21SNcf4Wg/5BIjHUTe6AEVA74sXND6Zhir68alnLZxScAtkOuxWTT4hC+7KspcqXY6UgK+bt+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gRopgI5o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gRopgI5o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7C7C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785380433;
	bh=KrXIMu1mbrMa5TfLz5DpdHZbJNenBJ6334nCQkqvlz4=;
	h=To:Subject:From:Date:From;
	b=gRopgI5owFK+RGx1j1fUgKOVNVkNWYzmwQLOVxt+MSpdnqE7cxY8DPfxj2QrXiHLZ
	 redP6BrLv2wrPD5FGyLMhHJS0bq2GJwyw7pPzjzI1b6Aw9gc2exYwCwFWpervqgNQ+
	 rWdtckKYScCv46gjwooExDr2YVM725/4Fc9W3vFCAghWKkcE7tAkpe2SWnC6ofHDFU
	 Ccrzn1kj/SnqYiXEjHHPQG7XZg09mfw+Py7msWTHrDbpdft4vueiD/fVAkBwxR94lL
	 jQ4NHGMxzuwUu+xOsBasw48jI5EzZrZvOfcytvHedPAT9MQMC3t6BgwaQO5sXa95Dz
	 BlNnb9S4+Etkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9437C54FD2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178538043368.4230.5243195366674821406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a9f629e5b0b89d6e09781623af9e4841dbf85677e1d34e137f44d077b7a8ba9
Date: Thu, 30 Jul 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785380433
