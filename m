Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B52E266B52
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754582394; cv=none; b=XPmKwSJzYIJVo715RfDRBnK2rxvbM+sb5oZaqKqYYVRBU9fzLMBcREWnkRk81ktDSsbt6pEeiyylcjnTJidkd6rSc39c8Fwn2EWG1WUyymxVbCWF3Rn+T9Cd8ertczqA9dB5b2YkE61ixST4VeCspU7LhBjrfYnpeHOHHZQW9+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754582394; c=relaxed/simple;
	bh=j47ZTJccEts4RjlHBQueF3Pi95/DFzNMNrxfHTSTrg4=;
	h=To:Subject:From:Message-Id:Date; b=nid+nuN7UujQby3GuppbDcqxhjaT7t98+9KsS9mRfPOW5CvUjiZIHqVAKmFaFdmVik9dw+EVusBajeMa0HHHlauY82yqxIPLtHqSEGk8OjOk/EJ0l9oJPmzgZU3S3B5N1hLWzS54dcohI0bcnNyLw/TQ3lWUq3jqGUUTZs2lVSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pnxl3pA1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pnxl3pA1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A92C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754582393;
	bh=j47ZTJccEts4RjlHBQueF3Pi95/DFzNMNrxfHTSTrg4=;
	h=To:Subject:From:Date:From;
	b=Pnxl3pA1I5oses5GVK1KkzeAs3/X0Z8dIn1aO/CAeEDgQx8dbji+p3WygPxqCwN5u
	 F7SI8rH5JM3dXbVmcL1sD10hFo8Pk+63FqVh3+ldmsjnZWndIwH5oVDMXsQ4+IXvlh
	 pu5I1NP4L4Xhy0vF2Vj9BoJOc5HJkP588yDmy2Z5CIzXMrU+IPXb2qpUOJ5RHeVLgY
	 1CVPtn0YzxjFHhfX/P3MbMYfN4Y0bkfGuH8N1EDEdtfKVhHE7VZkuovKumfYdrZK6J
	 JI23J/ulaBcpmkIB3T4G1tpaDkDA3nHdaCVa+MyBfmLIUKHsiQWIDLRRgU+N7Rl9RE
	 m8G4nFvhe14UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F911C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175458239358.14381.11609261052884419893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ebeb5ddbce77a4318d12e27fc7ae5d96a7b4dc3557f12535194dd9c0305b1ae
Date: Thu, 07 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754582393
