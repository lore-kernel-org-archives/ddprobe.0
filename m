Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B16303A05
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 20:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763755314; cv=none; b=M8vrRF1jAYsmoVqzlxjeOd9xUZKkHk4mBk0C/Usx1X+1T2EyPCExB/HFRl38CuOZgSpGQG1oBxB0lI+aVz1VDy/uYRhwnjGI3s1ErdnONsA7FUM0IFCXgD1uUUsCvMKChc/tnvrmFodgbqRAPKak/y/Fkuw37qJR1PDCrHNe/tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763755314; c=relaxed/simple;
	bh=QYv9M78F6tyZ7N0qHUYU+EUc6eR7rFTXGgwtDhPoFow=;
	h=To:Subject:From:Message-Id:Date; b=BfM5F/Tp4pGE3DgXv0wOZCbthkBj8PZvVJLL3+BANvk5lt+Xd6p++Se8lUWFUQ1w2GhD7R3OTO6R6RBBjPz9ebFLco3eyaWvy32D2yMANaE8mOaI0z9/7jNOZvPLFE6Mxeh0A6QBIhD/K3dOKXX3iB/3xvL7rwVIZiROWG/g7yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apSZfbhl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apSZfbhl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6B7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 20:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763755313;
	bh=QYv9M78F6tyZ7N0qHUYU+EUc6eR7rFTXGgwtDhPoFow=;
	h=To:Subject:From:Date:From;
	b=apSZfbhleO2GDstEtJtAziy5mkKa+hlJ+sHECmTEHoHoMDYA7VoVw+BKwKh3I4lnN
	 CMeO17EiKb3w2Iymf8Ttb6/WR0ZF4kwJSmgxmyZWZ/z1kM8wHJpPOMYLYIX084yIBT
	 MFw9FM9J9fJ6Qk5H5s3faM0FFMm1uKUApR7I0/KOlwx3bY+w1RggoXsOnBm/1PKcOn
	 hSbOmGIxfCnhYi/NOP5EXBohNRf9dL+12HYkkogbNHir2foK001MUgC3QRZzV3iAxt
	 kG05T5cQWGNjpJgBnhPDz60wJjuEg6EjAjKfEKMx87ldlf7IFP/qDEuJRF0OVxEa1H
	 YeqUdjg+7WAGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93346CFC502
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 20:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176375531358.7310.3771336717705310330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4116fbff0f5701796662c38631830ab3b589d7230fe7cb244a5babb8ff7a0f7
Date: Fri, 21 Nov 2025 20:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763755313
