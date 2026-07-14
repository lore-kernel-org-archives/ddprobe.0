Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4028D34E75A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 10:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784023714; cv=none; b=mcsHIZNI794HEP+4R6V7unUKQQtnj5h5ZPnN5yhwZkx5cCrt7DlpMoAzBtAQQ4j9UM5qd1Ykr2VCIz4cmMMxWy0CbmmCCuqB4A3li08tM5cpelumzG30eeYEKp1lrJtyVsx8f5pLcLne0IsJzOeQEex7EBRkMUM2MKicQguyGQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784023714; c=relaxed/simple;
	bh=Pla/E8ksDjgjybBLWqQEiN0QyB+6l6KNpPyx+cZVpBU=;
	h=To:Subject:From:Message-Id:Date; b=sOm6Y62O/Hnf0lUtJ8412WHKSTamxQlf3GdzhcTIBfv6FShYamgPFJFVUzV3GZ92ic2TqtL8jDnJ4GQuR7hUImciu8z//zjWJCWj+l0CUezLRcsr6AVexj6FhkPd6wKC2jReXf+5VI2/f9Oz6H9R4rRgwzB5rJOuDpKjhvEKDZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FL3vq5Hf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FL3vq5Hf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE15FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784023713;
	bh=Pla/E8ksDjgjybBLWqQEiN0QyB+6l6KNpPyx+cZVpBU=;
	h=To:Subject:From:Date:From;
	b=FL3vq5Hf1zZD7Z9PQ3kmQP0USttj4W+MepU3Owtv/MkAf11zUKlKMZXYoJIByMCcU
	 X/NBD8V3GuFmkN4gYfIhPx6EXNXRwqxdjTsCM2nHd0T1tCDv5CAyIProvWZ3LnoFid
	 QoSpzdc010rkrlLT6lGBZHX3lHdesEmxxaZYinfH1zKYkU8gFDwGsTpPNVao817XlC
	 nQBIt8H4Ahwr+EYz78ZdFBbqfepO2EUM4SGs8fE9GDAZozrHJ3vUGqE7itFZdBPGTv
	 cCu7YlYd4jUHIDc6V/IontzLbIdhFsqspQ8TSzChdIjeHkcnQ0bGQrGXSUuQk5PfZa
	 0F2+hlolIBsaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3A2C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 10:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178402371368.8458.11971691127529522233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5094ab61195a243619ea0792153212f1add9c1daf4d2a32e0ff46778b4001d2e
Date: Tue, 14 Jul 2026 10:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784023713
