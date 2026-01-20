Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C764D35FF61
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768885433; cv=none; b=YBDafUTrz31p0qJdLVMQJmzxQ7PTSDO9C9rwum0ttpqmY0XAL4XQk9BF8FT+qX8DTJUJDTC0NzmDkjofvTtm3VnM1/T9W6LASEIhuOAnUNe2vPfKL02YJhRCSus3RkkVh0eCthAAq9kW8NW0y4bkG/Ec8DTaxrnNNHOp7Z3bjFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768885433; c=relaxed/simple;
	bh=IKRNLDYquVH9/RNcdVIXDxaxbtD+XOmuGTzCGlN7PyM=;
	h=To:Subject:From:Message-Id:Date; b=UQM0U+q5sUwmUrpCiehWbAfwPomPYbGphYtL2S9lZFgggqIqLoqCpJu1kYS1vC2p3fwquUgl8yI4hT1gadf0qa0ApC7bg5J0JMqhg5i25EDpPCHS3SrM6N81ySxvXXNxC78oMXnCp5pCEaqVj2DSbrN8e/yosHTulrjfbXLIZmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXmrBBe5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXmrBBe5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A524AC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768885433;
	bh=IKRNLDYquVH9/RNcdVIXDxaxbtD+XOmuGTzCGlN7PyM=;
	h=To:Subject:From:Date:From;
	b=aXmrBBe5lnFYnPZ9vR2L7VR/n8fE4rWfYOwMTljnvS8ZUoYPRWOQXJIQ3MQX/IAPW
	 Nn9azPWd9VnV3FdXDQoXH/Ot+rbYZYE6A7y16qsMNYZ1svZRSSTQTuDxamvsNbfgWV
	 tTWS0QPTk0aycWDCm28jBr2OchMa9Ik2d/IrXidVCsXPDbOQdSJtWZlafHrTIL1P5r
	 r4ExNCzBkoEX7QS0hU/T6+hj8m2MLdsW29ZLCAb5wjpvWBuQgXU3LAJncXIFNheu3H
	 rTeFg+zeS085Md6sGMHeH54+rIGj7mthLoJTOC1tY8m8pcrAJjXkuMR2vJoloVQjSU
	 iysRuOo7qpIgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964BFD2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176888543359.15839.461405462204458223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ee64fbe9bfc08120a5f0d21b4480945e935f82ae45b110936673abd8b1dc95b
Date: Tue, 20 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768885433
