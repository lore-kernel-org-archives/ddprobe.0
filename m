Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430E91B0404
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738079754; cv=none; b=o/qncMrzOyNKBKwHZi2Gg9I9CPDLBupKayxqhvYH1pmHE1r3oAavOsb4hQlQ1UBIYnM2WG0IN6HIXSC4KyC/AXvsgH+hr3rLpF1o5/NUI2fNFDGVulc9ESvVMErJ9K111BITZvDEEz6cREP2mO1T2Ygbxuj8HaPayveUk8qD/SE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738079754; c=relaxed/simple;
	bh=lvRlqq04S8yPxwemmyNujoYOAzaZyfBQEd8f+HMm+54=;
	h=To:Subject:From:Message-Id:Date; b=pANVCQ7uvpmDsXXGBTgnoVHoexDwcgeba+SNwApFtCtjphyaS36tqkfUs295zM7ldWLgG9EPEcBJqRkqdIryGoU/ixKmDNCMXItKCJTbWzoKFvodWxBgxQtuuD2TDJqUw1HNRsoOGpbCmOMJvJJHHGs4oPf5OOhUrf8lOOiPxQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twoXkvkR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twoXkvkR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B405AC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738079753;
	bh=lvRlqq04S8yPxwemmyNujoYOAzaZyfBQEd8f+HMm+54=;
	h=To:Subject:From:Date:From;
	b=twoXkvkRDFTbx1EpMci88TsNqxoiKn3Zu4c/q2iXrX8NOZlT9++AbVmWPLMg56r++
	 QhcKsKOJOZGdq5EPht3GqQG8xB8cF6eVQxuhyhTu+PdwrBLOrdBfpUIC/+UwCsAoPk
	 JByIv6P6WuVWmYfcmbQaIvWi12U/W80N+auMyxSAdilN2ghpPyRA3PQsvGfP2zCXwj
	 YNIfoPs5Rkams+H9lGY6iX4n3w9KwwjC5wGj7uG75HBj0CY7Hf7c7SAgxASACAMq5N
	 2eWJbXtHsWRqMAvR+n+VoYo6Gf3u7B6ZE//j5MpiHptS2NcPS7OdVh8BMgYoQxQzrA
	 eWmcjJo3cypsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B1EC02192
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173807975365.25600.16032209127968764387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 172a337206e0ccd87c465a399970493985d9f7d37f2122bf0571a5c0d0ff94f5
Date: Tue, 28 Jan 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738079753
