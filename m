Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F02843DEA2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789757434; cv=none; b=OUrs5LJCY0lj+9K1BadJSdUsSqvSt+V4MBCln2kIaDR69slomy3VgXbAFK9yA1NIO/BFt571ck1i+NX9gYTlbU3JtSRtbCcNgM/LwO9KJZLISxYHTkdzyA2rTGE36DwHAPtiVyE763hw3cjT7IxuSUM1LAEE1cqwAFyUuTaguvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789757434; c=relaxed/simple;
	bh=EX/EP1ZTIqPdDmbS8sIbLsu/fbIdEmSvRjFuyVrGupg=;
	h=To:Subject:From:Message-Id:Date; b=JN6RVbmHv5dpBhNpnpet4BdL8K1eTfliqFnAXimMrnQ0dxzh1TSdrYxAMG4XR2hdYYkhkS2aGzQ0r5oTJ1EpqsJJNoL4xydsa/RXtOgtlhfUlRZRJHi6VwL8HFTs8tR4YMHaPW9yADmPWbUUGQdz5t+N0jzIt1OcnRXZV0VlHTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCQ3mRu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCQ3mRu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1736C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789757433;
	bh=EX/EP1ZTIqPdDmbS8sIbLsu/fbIdEmSvRjFuyVrGupg=;
	h=To:Subject:From:Date:From;
	b=KCQ3mRu1emdB44scY5UJc+uBGWUhU//dvlr9PfpOSPMbF5LV9y5TxXqqMpcTqAM4l
	 TIqAWwWJvPR6DttlGZCSN3xmweUQEVuwBpKUP4OHEasuX/5+H7GwhP2RrnZ1DLdyIv
	 2oRHfc0C5IJRUB44xvYu1QkcVlH3FafH/nGkvPBoX1UkdBVASD/8H3TJ4yE3Huoxy8
	 r1OHrS+WBujyFLKdMQC4SEBvscD0C+v9qRINDLBmnjSx3Yn6+hMLX4dB0GYQ9JN/fM
	 1xNRIMYf5YEihl+wjEiWH2UBpDkqn1JIruKHyvbtEOzbST66iBW0WcKowt9uZJCSz2
	 Oc5qrWhjtoqgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC715C982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178975743369.10226.2868041508065729136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16046138505eca28ac1439ae197877b6e4bd79641902c251059bd2d4e0536405
Date: Fri, 18 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789757433
