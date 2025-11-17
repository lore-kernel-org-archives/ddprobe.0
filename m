Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1605C17736
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 00:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763338314; cv=none; b=Mx8i5NUwSr4s1NzHSJ54gNUPtKG1iaavyHYLUuys7Vy+ITD4O1Erm1+51d9m+Fjjkrzlwh1A8+R/UdRZhfyOzkvPR+5fALQm9MS7yU4ONA3bsCJVL2sU+BXTqNLCPCpkU7kStCpfpuvx2V041/4cRThPfZYdEmAaue5SGx7lXxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763338314; c=relaxed/simple;
	bh=OBz7h9krvgW5vYrwrvUs4enRLrUwaW+6Nbdr2Wb0/84=;
	h=To:Subject:From:Message-Id:Date; b=Yx4LE+hq+jSVohqIr+fz91UxL2a5f/5jNSFfYr/kswUKqdgYB6d+eZW/vAyYxiqjDHEG9GRrCj3I8eHQAMNsMt0ZgElWCMlj+Qr04SPvla29ViZ/R9iWQiBlaJHMk+yHB3NHpchNgdEFl8MSdT5WRHzO0rtozqM0/n1mSK1PooM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPVCqdjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPVCqdjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8706C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 00:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763338313;
	bh=OBz7h9krvgW5vYrwrvUs4enRLrUwaW+6Nbdr2Wb0/84=;
	h=To:Subject:From:Date:From;
	b=CPVCqdjGdf/HPZLHgoQ4BSyNLviNjSkwrOrKqoztaKBflfqmgA9GQ9JrNHpjwGeh1
	 POmyt5RIISE3rpIsiVdnNvmb1DLfEmrp8hc1RT0FElyR4ykXai9wV5BrT0uJk7RMIJ
	 I+B9ZJXX9neMZR1HGFyl/aifsNtH+ynjhdhE2yEoZboVXw+hh8AIncAUsbzdg/ktY9
	 roFjpcLC0xezYgrpaBvps/3bKIBOb+nJCWThnZhcSCQcT5ojUL5KsNXr7uibA86JDa
	 3aPhoJYy+w4qCVYtgmwF1IL1Q6Zfi172qhcvOvgyCHmnypm2mOBGx25vxBMMCcNfuJ
	 ifuBkZhknMZEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A328CCD19A
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 00:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176333831360.13001.5354125894989076820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba12a9a20695d8739113f2a05afc1d46402e0f1aba07f2814a2c2f56a45dc0f
Date: Mon, 17 Nov 2025 00:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763338313
