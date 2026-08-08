Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482692EB5A6
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786212634; cv=none; b=u5+R78M3a1GwH8YYQMBoouoU/2B0R1oVpgqOVDFMk9+Tgj1++YoeIn0enAN2i8FPUsmb9t3+bYW6l61UhuAQnvv88KpFGnrQzTj95Llsa8XyD8PfIKbYM89rq24GAOZths0q3llHdfKKFZwIMGBtXAvvNAfcs6cfL6kFQdqBYnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786212634; c=relaxed/simple;
	bh=r+HRI8yUAt7h4ZeFMtbvSu3HfVD1aSImzQi3s8UiU1c=;
	h=To:Subject:From:Message-Id:Date; b=X3x2LFESX04gVEcm+YHObuOsx+jQ8CiAsYAH2onwqTPEAM1zWeqIKRv/WNncy9vsjFLsWqikKbDX+A5AHgtbWd35Z/3WPzg/MuyC2r8BcQ0CmzbC/b7nUZ6IcPTinR+3HRg1Szw0zksvO4f3+Q7jODQ6rGeu/9JidPXHf67DOTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KiNri1Me; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KiNri1Me"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34EFC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786212633;
	bh=r+HRI8yUAt7h4ZeFMtbvSu3HfVD1aSImzQi3s8UiU1c=;
	h=To:Subject:From:Date:From;
	b=KiNri1MerxjLzRk7u8a6wcVPN8R37uBsCl29DmYaIAMmh8JaKY0ILckkkDTjDtQ7J
	 eUk2ixNIYwFF/pJMSoLNDL7yQEkEgxatGzb2eJhN8/Tvz3eWlYHgAowub9f7b+smw5
	 ARSkcG71EXWFuKJxGbAyMWx3SwUp999tsag092rf4D0/uPNVmQNPuqSgzRYjxh1/Ke
	 OgbT+ozTujtrBGmFaoUzFV4Q9tTuv+T00HzmI0+oxZk21Qm1n/55FhTj2Xdx4w4Xzt
	 8taZBQQ5Dx7HwVDUbEB2XLtQpnwotKZX2P2K/09LIxqDpqYWA8u/AqbtC+8Uuqygu4
	 ZHNLIGVU6fgeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2690C5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178621263369.9470.13017657200834662794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84feb9e35a01eb304c86346289ef9ec4ad79658bb8ad68904f22d5281c89cd40
Date: Sat, 08 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786212633
