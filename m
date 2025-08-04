Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0BE24A079
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754309394; cv=none; b=B0j0wvZlQ6Yg8al3QLEn2vTxxaXYan0kGENsGLTPSWVguAoFdBbmtMczyeX+aeHUTiRJOfBcLYlbtc0JW5/MT8b56rInc4d7nHF/Shq3FywDCrfj0u2sMGrnovpWw92900Mjz9c9nWOlmr2v9k6aNWfmWNvVYQy1eUIjQCoBc/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754309394; c=relaxed/simple;
	bh=MihzNQPl/Mxn9MWskgLv5uP5+6czOPfej0dBA+zXcfA=;
	h=To:Subject:From:Message-Id:Date; b=KBK9N18xQiOaesHF7cdYzytEYYQAqejB//2G01G4VJ+WcT5kDImWsk9hnUM7yv8o3xDYFCVuC1cxuTFWgUEMdQf59p20SHR+7yFiI+bNVqObUQVs8rgUO7QJmlA0UmvuuDmkWj3ybUhWEU3Nz5LFMpwu+kOTK4I/jyhBt9EDd4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A80f2d8h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A80f2d8h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEE7C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754309393;
	bh=MihzNQPl/Mxn9MWskgLv5uP5+6czOPfej0dBA+zXcfA=;
	h=To:Subject:From:Date:From;
	b=A80f2d8hWSqkZjWDLQwjapXbyDZGKVJybEm3vhIIm1T/l4SNS80lP0KbQDX16k6XZ
	 sJFJMlTOYu0uVcXxzakh4f0zEJkBMY+xc2v3nhxNPhIbqyQUY5vlyp91KlozjJP+bN
	 hqZxLkO/BTiYWzViw0oqX/maSslIChUaSECWEylKiyJQTdgevI9QZ3mLw/L9n86uKw
	 1vR/7BDuYemfkNnwvn9HytpBWwHilIXYO7/I1USLW8sVVxEuAe8+aLwBRnKyBfDECq
	 I0e2nVkdVm6u+rPS9b/ulLAmpAPfmWf4NgInh+3ZnsLlaw3DnLilWh8WI6nD/JMAkC
	 NXSMfStDBEeyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7EFC87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175430939358.30877.12858304105526228412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e1e0aafcbc439df959daf2a9f68306f69135479fbf9d11d8cea6f918dc3e11f
Date: Mon, 04 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754309393
