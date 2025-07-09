Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBF652E974E
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752076793; cv=none; b=bzCa+tnlga/xS0YFIsAqu5nqaT1kFch+wbCzhGyXf5KAQaGcCSpZtGlFDYjJ7LPTnco5tCShcIFElXTFMEVlKEvjh9g8nBrMBfbClhpMvazztaWE3itL3hg+uyiARLAYuQqLebzMSvWgY/J+JZwgwQ2HHcDdKyzrKYhTIL40FgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752076793; c=relaxed/simple;
	bh=Qh3cYhrk3FZ3GBVftPXR7dSVdlkkmMRkLtXGCdMWslg=;
	h=To:Subject:From:Message-Id:Date; b=IOCPircEiCyLzCPQo8i6PFRLpoZiEG6FaLsigs576LBVxLcP0FiKJA7G7AZC+xFC50NDpeGIA9h3QD5EGB+6Fk07tA+yFU1pYktc7ri9wdMb27B1L58Cvxu1iB30uaIc0RTfu4IZtnJjPpZLFmidsdfNDmS940fEQ+vJA33laec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P73Gd4ls; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P73Gd4ls"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F545C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752076793;
	bh=Qh3cYhrk3FZ3GBVftPXR7dSVdlkkmMRkLtXGCdMWslg=;
	h=To:Subject:From:Date:From;
	b=P73Gd4lsNHHYK9tCIz+sTbgjir81rRAE6lnI3NBWJrz3LnA6Pd+0lKwFdvOZYaGC5
	 o1CEEglchKb8aZYoKKyXERlklBEgASolmPguG/Ny/rd/HUzMO/q/IxSLdL9QRTScDl
	 i64wpIqmcW3NDsW0lQ3hMVYImI8Kz3OQBgf2xHNwKNv2w6/JPLBLGSlg/RMpdIQSHi
	 fDSCVmgy7LUJiEIuR2i/Vfb+2zGWS+hX2a0amQszMuKr93TaZRSjkaX4lsD41UjMbI
	 B3BSLllLUsz2JuM/nW+ot49lOUN39Xk3rAznygVHkEW3vTMsCkiKd7H0c+Pfng678d
	 CVZApIZg6VVLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C1FC83F0A
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175207679358.3451.8971636908457317358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9bd90a5a41ed67f2cccdce537cdded3527c80692baff825ccb0bfc6ccca6d7f
Date: Wed, 09 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752076793
