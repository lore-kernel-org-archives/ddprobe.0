Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D852820A0
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755618594; cv=none; b=GO/d8/pfNi/JhwoW3ZCY8RaDfkVMm93rBJhO31HxfHytJBBIBeMgG92qYDmvxRAfuK9WGjGkKDIAbScUOrOqdtqNNFDQbX86cDHlMOto2EcP/ora23Sy+5Gj77QKLQT45NqiLl/JQiP/2AeSW9JAh0fhd7uV6azAjY4eZvjTzaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755618594; c=relaxed/simple;
	bh=bu7fBnht/BA/PIqgjLjz7t1+4idT1XS0qQG27hG6FVc=;
	h=To:Subject:From:Message-Id:Date; b=nzCzbqGUrg6LzCnKl4qK6xCr+sawvcJIhTFti1/Ee2E4IUjvxYu9fbMSk4efFQT+bIZr79hufSb6jc1n1zzRslRCwj5fEMAUkQNykD9QUU/nukttDNuccxFrCT2dP8/tnZnvKBkayRsnHHETO6bVEa3sxIzGNl+klff0P5Wm9WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePUt4Zbu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePUt4Zbu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F4EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755618593;
	bh=bu7fBnht/BA/PIqgjLjz7t1+4idT1XS0qQG27hG6FVc=;
	h=To:Subject:From:Date:From;
	b=ePUt4ZbuYoG+aegAKurpDZ8T3orMri1rv/QV9KYdVkGFirF6J7csO8iFVhMnySPpp
	 qG1h1jUrYGWO1q7Q8I6S5Lg9kZlafFYU9GPyV4bLT34NtjPIkRyYiJw0kVPOgula2p
	 xhpI9ihExiXjApMbE+2uRtVkID7n/FbgBiUZ616etrFJvdGsP5rhdN+HlXhfOfaiQN
	 S3xtLHfZm4Z4Nc2ylp9kRAytLy06+4HF1Cca9dOYFqtLpZqltt7wgdDFk/BqeA+4JK
	 CU1d/PHVK2e6K9IWYut6oMsiwcc43rURloKLEDEZ5AbE6NlcYCCgXaTDKQY/ekZ2Kf
	 DqtamyN1/ocHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA2ECA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175561859358.7832.15031120281646123978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a45b6eb25f0525f3bb509ef4a044a79d0075d380bbb407f6ff0a57bd3dbbc31
Date: Tue, 19 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755618593
