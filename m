Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E09217F2C
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729979754; cv=none; b=TKVMQd3IX+YcEX0a5Y3cE995nRAxoZ3cYLYx9p5Gl3EbEHFQKYBv5+fSGqv8+nBaOuu9bqw0fEe79RaxTPbpORQC27VfDNINgSxDkBmYvuxtlS17gwmkYlCrlqmXx9sHfT8NRxA+rVuQPwBrQ4Yn7Fa8aK+5JR5KPRjERrAPLr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729979754; c=relaxed/simple;
	bh=LhGzTE5kuQD9WfGwd4ezBZkNy26ZJmOCiUrRXbf88is=;
	h=To:Subject:From:Message-Id:Date; b=OGWsginbBuQhqc3fNrFgBXoCVuqZPhrwiLILVHuNyvZ+4DxEwvEMUfzCx1sI5ZNBjcZoolQ/ckxaoLaeMyNcSBNWiobJsQHsD5d906uN9d4bj9nQHM39I2fFTmv9JRsCIoPyjRN0SIFeJEs/zfWN5duhbkJpY/KjpYZlV/C+YZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iP5QUsqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iP5QUsqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB485C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729979753;
	bh=LhGzTE5kuQD9WfGwd4ezBZkNy26ZJmOCiUrRXbf88is=;
	h=To:Subject:From:Date:From;
	b=iP5QUsquPm9MO5jkiyRuDFZ1sJJpRirByiqOEINt2zZMXVMHZJhaZ6tX3XINj3bjY
	 MTzJZ+oIWFKBGK6lCYNXxr/6I1qi5Y8N7ekQmvp+pwShTYVDd/DCwHROnq/2qBZhN9
	 MbCRyv7DX1bt/f+ecd1kB7e7go46RTj91MdGAhpN3ko2R1p5//6KDRtZ9hwytdesgW
	 lLxRCPOUjBcMGbnPkd8fA9ydEu+seEPR2ZxT9/5HiHQmq3c4t7koXXEfIoPJazfUwp
	 CNLRUM+2FEpY7SQNQouk8YabHmd/te5OJTYKWnLlq1/8HqG1NtVmPQSENUiFhZmzkx
	 uuUywHcXaM5jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A324D0C604
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172997975359.7261.13135235322839484182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5d0a64d259c7480aacd50ef5c209f73c6af0ef5c876aeee784c2ae5b75f37c2
Date: Sat, 26 Oct 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729979753
