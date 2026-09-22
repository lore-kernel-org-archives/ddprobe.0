Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7823A4538
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790062834; cv=none; b=AUYk0Ekw5nQuoEQDc9MgeaiFEDAliCUaL6fCNyq00XDnC1DpnYNzxUXd1lEpGG3TaNj6CX59srHjYhQnRXll1JNV7xHRBERC21StepjT5N3NzSg5aaT13goIEwGbRS49MY6h3ZBQ40tSUWCZGvJkVFvPggGwfFnoX55IrOmPZGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790062834; c=relaxed/simple;
	bh=KYG0scI8lmMiMRVPlpw56Pt5PDvT7GogNGgHC3pk8gg=;
	h=To:Subject:From:Message-Id:Date; b=ng8aWhc/eII1GsEzQxdVmhlaPF+Qh16u5ieP4tNfZiEjaA39Y6aka1CrmkifW6bqM14VFj+tBjs/GBxv3E6ikH1xcCuB1WU6Zetn/dIcZ4dkgtB50uDgpltdZyDdwpalJO9ds7r9ICreS4+KAUoM9tkjXCvG/2GQ1L3i8NRps20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkiFdlNv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkiFdlNv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA8EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790062833;
	bh=KYG0scI8lmMiMRVPlpw56Pt5PDvT7GogNGgHC3pk8gg=;
	h=To:Subject:From:Date:From;
	b=qkiFdlNvNf0pm7OpjaUgVNVcpIJUX0rXx7J0GII/pckKj14ZEWcGcvs/C0aRtYCSu
	 11DeUekMPSn9jNXq76DP7Cb5yy/fQlSId5bd/nk27wTDNzIMZOFcMRrcnpI4BqAXjZ
	 uKFiDF4xRP80hadePmBKlCplffzALT1d9hvGOb1hQkTxg16rY1kIQcnyblKe118vuw
	 E3glQhcms0uL0/VDw4kkJkHIgh4sfQN//xEraUZSUqEFJAJjz2UK1LgoQMMB2N/RxA
	 JZnK0348UWpzBd/KZn5orbCO6Fuc9FK8TUK5UneL1Nr1xlhoXK3pV2Y/BYq4aDC25z
	 wqvZyvMq717uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98C0C982F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179006283368.2316.9281866653444647940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82061048395ed7465cf5a72cb42b0ac65c2512aa1e2442a7aa7b6d73827582f1
Date: Tue, 22 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790062833
