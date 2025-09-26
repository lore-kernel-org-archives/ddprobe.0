Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D095E56A
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758863394; cv=none; b=uSHKz6PKqdvLjkxsmt2lXmleLn8cQmmJT+Z0VWiZSSZX2vFw+nzlX4jYRutEUGguXEREUNJyFzEbhZUbdrhfgWl09c64hdD+NeKqUYFQ/3b7rJB97NGpCsbTPKIqPkm/SwMnGU2VO1ds8jF47JcJrBEUwucQlYk57kMhD9/5cAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758863394; c=relaxed/simple;
	bh=QY/jPKEffBxkmycfEuNPYQyHIYBpeNswLo83HLCqxDE=;
	h=To:Subject:From:Message-Id:Date; b=VFHnrUlskPtvxM2z0cj+I5dnvn1/PEEPR8Oo298nLVaE5MyjEmWQqECioGqOBou0w3FZPz9yJ+xvn5a4a9hP/maF9sS8hUHqaVmHawcRyfn5Y6nbfBS1XN1Ryza9f4OZ3U2z/QrR6G3f08ZJYQ7yJ47y3YJuYpNtiZJ0uHNgdYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9JTFgkG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9JTFgkG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0324C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758863393;
	bh=QY/jPKEffBxkmycfEuNPYQyHIYBpeNswLo83HLCqxDE=;
	h=To:Subject:From:Date:From;
	b=Z9JTFgkGW9k0wF6H9wHOWfsYKAfB6V4RgxLhMRy8Bfmzk/xEAytw/RuY78sHXBXbj
	 LjfS7SV//Gad07BHyEvSu6D9z37w/eknnUdl80rGz+aUwhpWyPm9tiSMYsbcyd2i6u
	 0Od2kvnFke5WA0ahHuHzsBd0fZhQOmpUno7TxUnvm3tc7kIDcdp2Bf99P1PyOToInU
	 sY2LWSQSBwCByY+HHSLzggU1OBj7gWgEXsmyoRjggOAGN2z+Y+k9SbsTVumOAcOhnn
	 H082LmbEtTmNPrd+NB5hyYsIfyZCwxervrQXjEvWsbw63vJLkJ3cjpG4GZP9VefDvf
	 Pk0hA1QUekBBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF8BCAC5AC
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175886339361.24110.794480004279730040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01519d98524568564977baeece524bb03b8087ac3d7b06ff12652ab0f4c4b89a
Date: Fri, 26 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758863393
