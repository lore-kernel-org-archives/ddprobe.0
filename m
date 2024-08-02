Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177B715AC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722567354; cv=none; b=f7YKCUKcXaI2eaZv9dkZ3lE0w2xHtQtdui6l+fgI4HkOM4OkmaM9dGmwklD8oS+dcMszpPny4AKCWUry2b8qRAPT4CGP+aDf8+P3KWSNMP5MPl//N+JaRjeX8atHKMYWC4rYhxdYo1ru/uSkU5Fppyp5qEX2LEAnuHOOjsi1rOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722567354; c=relaxed/simple;
	bh=uWV7htymSjAxf1jBaDez6WxcNOoTs+qcIoGZrxyHz1I=;
	h=To:Subject:From:Message-Id:Date; b=gm6WeMN8d3yoVpI68oPQr0sEJEd+fHtVUOkeTaywepFuk2pzkGY3R/dr52QtHL8VbDB/e75V9sDuJcG9MqtyOHe91DpdPYCxvtQAbx+hqDaGmQ9owH6un4C7glmeE6TjOydl5TsnqFO7E7XEUZWZAf5JtAdtg4EIjiogj4kE5Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2uvKIxZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2uvKIxZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0A2C32786
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722567353;
	bh=uWV7htymSjAxf1jBaDez6WxcNOoTs+qcIoGZrxyHz1I=;
	h=To:Subject:From:Date:From;
	b=A2uvKIxZ+4cjxkUZjnjnG0CpfMq3mowyywN9I1+sZ727jgsYvAoxRlgerYbrInBKE
	 +8FBfFRdCjnobx5EYyEyruW1tE0NYKQ9aVMgzVcoMu2r1f+TpM0QvFrIVLpc+Nm73k
	 vbob1vXTbXWRlAg95gOptg81rfVJfBXakw0mgLqWIcC9WZS2G4oTe3sETW2+9kXlRr
	 21lUI4KR4A+sF9CkMtlQ0xe9e6eY/47U+d7lO5kel2rwGf76j+1GtdnlEYQLDfR387
	 ir/DWduFvCQ20YTdn6a3aWK2kDOa0Bh159bBIIBREr4DSR2IZmhuMGD3MGFtd4k3KN
	 BAsHCETe4lafg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983C1C3DA64
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172256735361.27616.11364013082770950870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4507f28802f1a0547d23b5d9daf4f90128d90e05379d99d2e0141fa9386364c6
Date: Fri, 02 Aug 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722567353
