Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286B1263F28
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757756994; cv=none; b=pdOWxUZSVhdGgEifQYUZD0qnHVJBOY2WgAl/icqiY+oF+qO9QvZ3Dr6eWqnnEl1rBVgBBIAaMKY2RWd5F7qYXNdnRls1Gh2tU3alD/DB8SD1I5nY7LqyCnULp41qi50yVZcho8A7obkK8CDPHXF2em3jmreXCWwQbBBPgyvTBck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757756994; c=relaxed/simple;
	bh=jfuga2w54Z5rFgUuG5Q0CwRwUAyLIdE/7EuIA4zA+Ng=;
	h=To:Subject:From:Message-Id:Date; b=ckRmSXEGQCIQ1JSqJhHL7U74KCc8hCwGBlVrKkpaFCufxxc9rTeK+G7HrkgNtIo8uIpC3IFp2rQQst9eAoDA7p78QTyf9npZH8XFQKhb4gMaq5SfHEd1i705xUhKhKb5Qrp6GahV3hU0zfE7DVSRqR4uXqo9Hf6D0xkRHYIVR/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxqkuCXS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxqkuCXS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A495FC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757756993;
	bh=jfuga2w54Z5rFgUuG5Q0CwRwUAyLIdE/7EuIA4zA+Ng=;
	h=To:Subject:From:Date:From;
	b=cxqkuCXSRHQleyAI2NZkQ5xwnqCGqcIgkrrahsadWn+Nl/YpMrdrmjkJfZLKsDoLr
	 d4aYYP2D4duxcUCvY7eMd/kkbUpYAEPT2ds3N5I58fpRP0rf3CKm+3QBaZvk4wtBRR
	 +NHplSOIZLwMEPsa76IDk8hB+5mBIajDOAPoIA0VIIYGkG8pCfWW1FBfUThMPPVYt6
	 LiSMH+x65RqmtVBg6axg9G0ueby4mDEt3CZwx2SORy7xcT7cqrND1dGCNzgEPeYV/p
	 TjZqb+MCG+//ueHije3mg9yIrRVX3KrObPevgrsoWjiJUXGe87AzuKLreW0W7/X1Fx
	 1d4CvlsU1iD5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9220FCAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175775699357.3027.10512476532458483253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e4c8e2562bfa580e970e4955100a6300104f37be86299ac06abf44c6f57e396
Date: Sat, 13 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757756993
