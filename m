Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED2235C1B1
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768827234; cv=none; b=U+ecNw9VUXmPXDYg/wTbpj7SBqXXfn9mPGlft4VBJNNAkHTUdYqC04ODwqNNeHfO4gJ1IQ2/5lNc+cNZ82ajgzzrQmwAlnn50TVbsIcJJ4jFISon9EhDQZoAoDz6J2DP9l2o0wPXl/gGXk43MlBU/PQyAjCMVAE/6r4dCCWCUNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768827234; c=relaxed/simple;
	bh=3RHBj3sBx9dCJIOBEB/lCV9Vt8S6/OnayjDPs5gTaaQ=;
	h=To:Subject:From:Message-Id:Date; b=f5GEt5IvQz0JjNlwXZFExgW0jVqUW0et8j5K3Nm63LYfhBr9guDZ8dSbqH9vY295ParIEaAayNY8IlpjH4+UfhDPSke4jnRAd4a0PFoVnolgnUrg7CWdA697zsbUl1+qo763ZLo5B7zB3phETyHp4CGy7EhE0bSzZ2KUUVSFBC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSz1Sr6K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSz1Sr6K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05A5C19424
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768827233;
	bh=3RHBj3sBx9dCJIOBEB/lCV9Vt8S6/OnayjDPs5gTaaQ=;
	h=To:Subject:From:Date:From;
	b=VSz1Sr6KVBNVMx+cs1vl/Kjb4zcwZ+bP+Av4oIV3NZWFggQpEu4CWILmwOuTnpNb1
	 6T+mHjSYbb74Rd7Rmx62CaiKI9QRpPBeXTvXOvvCzIhxf7Emg4VM3gvthy6zJCCG4b
	 PlxPvMUNq4o8sgt7e4UvNuhh5QH1YOxiIZCTP9aw9Ll3UZ1ly8jCfiPgOqArSO+9L/
	 gDSgDGwPmo/KKxdvqysN1+JWs/Et4kHvBozISkSRT4E+ITIGZefXFm2irXNeewQC3s
	 KK77ayMTT0X8r+ezwh+TxB2oJR+Nci+GzNzuMeEkEPqTW5oSAUWHFACq1IcB7hEhvT
	 4VzR2m5u4h4bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9128CD4899D
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176882723358.8296.8853835696224070450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3da6615dd77e1eb14c97b9c5aaaf0a7941f640e4e6dbe6dcdcd531dbf7416ff1
Date: Mon, 19 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768827233
