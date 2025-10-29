Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25ADF25A2A2
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761743394; cv=none; b=uVLAws5yP8qF1209CnyD8vZ8h6mGiOSgVcdxCAkJTfKTVFpU4oFuubw5+x0NFs5vmPU7wmgGKLJcAlQjQcI5fQBp4TnrXn3lmhqGNdMKdcU1/7FXvWfxba7rpHUJEowLGZ3F9EjbH+vM9lqNuZ7LGGWr7l56Z49T9mF+hEXNbt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761743394; c=relaxed/simple;
	bh=sg3I4QUygh8UFsK2TYfUMr7TRZqeG5GBtNwFh8DGs2o=;
	h=To:Subject:From:Message-Id:Date; b=ZgyONWgM1Sf4yrNtK9AwhDONyYzC+hwM8FRfC1fD2uO07Mvq8J2lEtr21GKtxQvmXBmdYsXkDsfsRrDNF35CPIU5Iiy5KHgaS+3Spweu+vJWstT7tiPVnqcJZxXzkIysVI+NU9M3+bVccipq8Dlu5oxIeNNcJ30/rD/3OshOezs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCRejWq5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCRejWq5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E3FC4CEFF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761743393;
	bh=sg3I4QUygh8UFsK2TYfUMr7TRZqeG5GBtNwFh8DGs2o=;
	h=To:Subject:From:Date:From;
	b=KCRejWq5jKTuJP2No/HNJTTM1lZ2PfpWWSGKp9I+CrjT/Hx324WPeWx4YhRePQ4KX
	 LLgNrjWUmKr418t2Bwdaz2jE8sspi6IGqaaIE2Vt1vL37uCUGjE1hsTfN1D4GJLg04
	 zpwYQB3Jpw6oRCY1c8XT9Xs61GHqxnAbU/eusPoasCqTDimL+ENCuiDz3D7u2l/EeG
	 ird59O4ETKicNiUgJPVGakEdfNXI52mbclD0BVZ6/P7PFPXwBZMgONe6ajUc/4Pepz
	 Mgi+cd4QU7rLw2ilxzIRURbwL9ylGmuoPgisqOTutj9DRXPb2MQKLGyN85pKfUsA5p
	 vwycPE5Evgpdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9025CCCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176174339358.8213.3040323580450510823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25642490f6ad3d8eec54bc8e8d67f1a37dca73ed1e7f0c1e0073c2b106e8d27f
Date: Wed, 29 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761743393
