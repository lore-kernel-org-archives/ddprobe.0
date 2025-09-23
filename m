Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E6E72631
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758595795; cv=none; b=jjo16t/aG/9015ugYdXMrHsPiheC5L63wUh5biyWbI0/iVTscYqOVFcC/j3hu/u4lflvVVccCgHgqbbGiMkGgGdXRpHD6iNLdo++Ks0q95aUY86GhLZpwaWoO3kUESdHWAwGbsMDdR1Ej4hTy2oLGJmT5b54GWPdRNb+YrjQV1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758595795; c=relaxed/simple;
	bh=LAxfpwI08+1jo1pO2zkoB1IPjtGft7BZ3sQv9fp3KBQ=;
	h=To:Subject:From:Message-Id:Date; b=ZntZorbfsUy03DUFqEmuCqtYVuVGBtKQj2eRMRsdcahiBb9Gickmr8ZUnM3wYS0PBiMwqEB4o3UrZaMYJyqT3HSJ4EA4efAwtDynrpcVMxFkknnu88XhLCV7YRaTH2KK5BJzuqc5AD77/KNeLZbQg2aMcxtdr4vWbVRxMJ5t0Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5gTAQPn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5gTAQPn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3080C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758595793;
	bh=LAxfpwI08+1jo1pO2zkoB1IPjtGft7BZ3sQv9fp3KBQ=;
	h=To:Subject:From:Date:From;
	b=G5gTAQPnIprAdoeB1fkRDkp5CDs088OBh/NyqtZzIPGU9YGVd5xtkpNUh5sC0kfUz
	 uRlhZraVEYnPFnU0pW57K7RpAQhqVzkYxib8l/GsXZeSS5F1zBF+i/ZVznyIAFOChO
	 bF03qIv/sb3j3buCzxrURyk8CK0Tl6h7Wn/IYjKZj90YLPdQsXnQMGpzVP8LYJswsj
	 b574YpLvRKGpjaNbGHDmyKuEXP2s9iwtmRI/VafAGKRQyHYyiamKPL1zj4/kYNp1Hh
	 02Zwcg1SaeiB296/EkHyuOsneEYSVSH28dzJkkAj3ZndP5++Ct1Cpc5EkdwTyAVUUX
	 YeC5815zGHD6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F62DCAC5AA
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175859579357.22446.15670610079514308630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc8291d4b4232c8e87e542cdd52360a963e1f95994d4ddf7ce5183999e47d094
Date: Tue, 23 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758595793
