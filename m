Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4525DAD2C
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738395354; cv=none; b=Vs9yaquMZ5G9rOemu2paPqigha6davsCVrzRwqnEzFMyh5JQoGqVqoZ8jRtAb7n9GPoGRsSfF4EXKaOLs3FfOT1vz62HSEGuRo8vvvIvdmt9ICmOwXzp0wKNs0T4pIxQ58VOpXIYchl7QuGJYGDSABYH7Twa0/E8SWLCg1Yl+18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738395354; c=relaxed/simple;
	bh=QJpKYqGBAWDDWmgIclA3exEpVziSJncz2kqaluQE4kA=;
	h=To:Subject:From:Message-Id:Date; b=d12HBxG2+15ixHQTS32zt1YmFq8vNPhJrtbEC6+W1/Mgrx+Al+qUgGhj1RBnFsaMCectjIKuB64Bt/4UHQ8ZgOgtqDlPjg3HfayeJE3Yu7WXGR6NU1y7iQ/TmHrJwhQdqz2VrtVBIQj2zl+UNmMQ8L3Z4wcJUlA4BrwNfuqITmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7sgbmZK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7sgbmZK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9661C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738395353;
	bh=QJpKYqGBAWDDWmgIclA3exEpVziSJncz2kqaluQE4kA=;
	h=To:Subject:From:Date:From;
	b=Q7sgbmZKHUK//+S3iAxC4TxnAhAJ69MaHKBuCIQpupLEh3vUWB6Fp8OCEnwLPePnw
	 t3G8+3ID5vqLKPA4UlRvOEW/mkUAuXRKT+72q6Ji3RIzs8RELg0nBSlECLn/fdWtTx
	 YlpfcJ/zBhoulb5J0TrGnMwbtUdWUaRoWa+8daKczUQZJOS/YTg65g3LILvMt//Wm9
	 70Ikv6zONIdN+qrYC2I8VyB6mPqcIhxPjiGRfF3KeL4WJ54JWz7RXGZepVxTPSS3HF
	 ru2WHy8Ud3okkZmHeoatYrAxYQsS5Dj+NaSjR9+eYv+/9LLXV4s7Vj9K0W91aWnuur
	 xYGS85t2dGNVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9923BC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173839535359.5627.14553766559256202526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c4dfd2a7efe0c93b7cf8108d97d94d204f4347199a04da29fc84f66b58f0835
Date: Sat, 01 Feb 2025 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738395353
