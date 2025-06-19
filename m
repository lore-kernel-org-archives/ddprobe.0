Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253B71D5AB7
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750364994; cv=none; b=inJMJYPXujlNJtM/6MuMUL1COiVv21TeBXs8F2V4vbzVyvNS7w5h6R1bY/lGp95u4Jg0ld0MH2cYX8tX78k0LSdIbWR9A9x+Q5gC3tk64OY8RcTfB7chWa8m4WDHMfY0OnmQYJ093H50BCKfpIgLOz6J9xu9x4CB8I+V9o/NxQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750364994; c=relaxed/simple;
	bh=mcWP0KThlRNGSU52YsInbiTiHhGR/HpCDTXpCsAm0FI=;
	h=To:Subject:From:Message-Id:Date; b=Z4F1Ahr4LlNMYp3loPpre9e0Tu95823W0tSVDdKmxAY6QVAQ5U2QHrcOKiHLzvynOXh8BxzOheCH2qElaPNm9EyRLqQCZvFqDNU3JKkfGNrThikL6tO8BVvKf12y42zdVQAIKuGuMDKCh/qz95BSoTyMfNuFTfQUNRFj5JE6gkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYg7Tu7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYg7Tu7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A149FC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750364993;
	bh=mcWP0KThlRNGSU52YsInbiTiHhGR/HpCDTXpCsAm0FI=;
	h=To:Subject:From:Date:From;
	b=BYg7Tu7QLZ68bi7pdOl4wZnQ8yoQSg8Fl/CFlSWvCJCVhxynHPVu2OkkOdCb5jDk6
	 zOOFjH6hE38MR9NTSzR8c4oFqE5zpns6KV45h93+nvG9l3WQbMa1E8tB5hjjqQlgOV
	 vzlpvVUzalKbZNz6IdIQXoA+SQVbQcrVCAS+MRs22UpvlBwcwb4slNFfdls9MDZfBK
	 DTBFitkAJckSokYmtwG0qyH2DHl6Z1TUknoQ36fI1Ld+8TN82ey563zKg+Y6dcUBEX
	 imBn5EWMO6o9fJkzrlqOv4hL3cwy1m+i4UOD34hdqHDc5/zGPZOz8QG72pI9hYSjdK
	 fDAaIpUH6sdNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9E9C7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175036499357.10626.7476017908858740288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f0bbe835d51dfc5c217db5c6383be6925d531cf6591c7746f39cef27857f8aa
Date: Thu, 19 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750364993
