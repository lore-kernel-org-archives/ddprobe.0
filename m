Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389701A2C11
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 13:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715176343; cv=none; b=tCuQge+FcgE7h4W34pF4+laFhOm0lvjlb2u/wx2DDVYo9cyL2SGKBRkHph3PqQEXecFYoKHAlrjZ59QK34fgcy4Yk5MRoaT6PNpOGSYJAzog+AYlwbZmO0iXw37FeTTaOvx6QlzHTB+IN/wqSOts02fXnNN61YjUQ0vxB+EepEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715176343; c=relaxed/simple;
	bh=i1belH+aOkS1yEd9fSs778zHpfKhfidHAE7nADopWrs=;
	h=To:Subject:From:Message-Id:Date; b=lrJc9LaEmZ1XUSnH1x0mIuyRh1hEFodB96asf3fQk+OZ2j7ZvcgeeeNe8vlhWk0QiBGAWGM9qZDt+jrlniRxBYCUdvyIgVd6+ijG3M3NGlgGFpdEkPBcsZ6QLIKMQjbxNC7nPJP2yeq4TUcwmuVVh8RlSxVVzGXzmy6CbWpi9Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwYogK85; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwYogK85"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FA7C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 13:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715176342;
	bh=i1belH+aOkS1yEd9fSs778zHpfKhfidHAE7nADopWrs=;
	h=To:Subject:From:Date:From;
	b=nwYogK85UMYX7VNHiwrew1D5L7brRsE4CyZbpc+/33YZFOVGve8rwZGbcCIxXLS81
	 zY3jHojXVLIj55voCa7IsX3QUmHy1ZGw6oQaVl/w/4JWKVmbmSM7lUMEvnRpNiGdtW
	 O33RYwbK2F46KL7JQBGTJ+XXMy/QAhuDUzg256k3tSwS0MY/buzPTZF7O+F4U4RCLX
	 vodrqY/VuKlHO5Tx3fXTRG1xRDHkSdJxabWepL/UEWnN1d3BRupkfGRGXAEpvlPuMk
	 tkavg3BekptTYCQ1QziOVOhXe2iv+4eyxNcrLdBZwvvYXY+nfpirk9L7jEyG0jLipK
	 neX2URoD2ZNgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCABFC04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 13:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171517634276.27391.15763206997874305992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0e62253c9487490fd8821c020e9c69a665cbd8b3f1c66ec99258fe90f03f6dc
Date: Wed, 08 May 2024 13:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715176342
