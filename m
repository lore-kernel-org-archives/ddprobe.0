Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6442838399C
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789387834; cv=none; b=PMp4Rp82bXcv98Ph8zSafqvLDXk66cGfvPBrcv0tb+38S/pcP2nyr7zYX58+H7w781t+yQU8QuQUIK2jVtFHqa9DcBIa5KAzzUVmd0xlVb2J2UZeDB/O5hBK/Fvc3DcdSZ0GXraqJeYd1kQSPcyAMVjujjsE9W5vWi3wTc9+iE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789387834; c=relaxed/simple;
	bh=rYNXIgMZK7oq3L27G/cr1KS8JgdoLGb/cuD4p49ma08=;
	h=To:Subject:From:Message-Id:Date; b=KtAMrOKwtWAa9g+V6gypFT0Ffbzrbauyr241dwYFp/7OVB4LGERgKrV60gBzEnACI+cyEBsdMbgf68MVlim9JOJPVKNYNH07+NMIRbABkOnNyVDjZdENSkYkueYRqULm4DL7vJPWC/CyMBMuRSWCjKRYqdcochq3wdrYPusBOVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LcE7pqmU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LcE7pqmU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B6BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789387833;
	bh=rYNXIgMZK7oq3L27G/cr1KS8JgdoLGb/cuD4p49ma08=;
	h=To:Subject:From:Date:From;
	b=LcE7pqmUM0u18VwihGhLBectg1Fo4RCVRgRHONv4o5Wcgi06ErQIP6NnBRVHaIt2w
	 TAEb9yx7KITO7DSXgavBY1tldvUUcMCk0dVUN2ZuRJixuiDrPkKDsQ0B1MoyP4dCXK
	 B2FkZtPiOjhSo+7oPlSYaJH/maww77JC9ZIvzyo2YuZn38QmHi+I60ubmI0j3g2E8N
	 9bxtDEtv1mU/kBBQ3TsgpcEKugp/Un+ILYC3ExUD2YTUW26vkgZ9OayyAAWQuwrRLw
	 GB/5KvTMk2GNBmvtb8UKZAJhq5hYNtw24HHPS5L4LN5mfR4WFlGWwazkfLXMZ4JbH3
	 8oS9wylNE33Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE39C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178938783368.8007.6539201245036735319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1136500fe9d3774a63b632697f3398ad5db96b95019183cde7f62462368a379
Date: Mon, 14 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789387833
