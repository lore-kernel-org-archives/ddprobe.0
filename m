Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15121139D
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769481234; cv=none; b=svdAoy1gXZIJrFetb8yPqGt7vPcDOHAcJCZs95wpr6G59YYi3+VWXdOPX0VTZ7aPxxw7hjVS17dTWE4rxKUcnQ2rpL5Z1vBvTM9CEeOmzycLyKwzxec0h92oYvXme/NywvObqQ5Mu6sJRXsMcsp+wT8FNZZYrx0cHXKVO7nbNOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769481234; c=relaxed/simple;
	bh=M+PqGkh1gLnR++yn18t3fxbV+mmqBTCe07SUF4FqgSU=;
	h=To:Subject:From:Message-Id:Date; b=hj1K9ZtQy926O78S2B4+hLxOK23y6z+SpsC6MtMHatgghE/S7f89ygvtNPGeKOjCsveB2RRl+vRsN+uDsXvhD4XnVbxqNmKrPRWhO+0FQssFAmBVMNLRecEiaXVB2U/RAPuHPSyhKFWRVmgKVd8SIg0FO0NBYTdi//HE92VDbxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Igv7MPAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Igv7MPAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F684C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769481233;
	bh=M+PqGkh1gLnR++yn18t3fxbV+mmqBTCe07SUF4FqgSU=;
	h=To:Subject:From:Date:From;
	b=Igv7MPAdTuuhNi2hUYsIQuPOyem0L1o8lp46KiO26U4Z4RSnJJ6F44Ni7fnwysqyB
	 Wrnu1z4LSpuyoAmCex3RF+JHYMGhPM7wxa26Z59rWsH8xUrDYxLGRFU8EqYEbB2zkZ
	 OqvodmdruT8KHrMJUOqw/lhRfBybkMuCBwSr5Se/eTx/8/FbPB60OjYVAc+T70PVXw
	 EqmeAEpjuGI9ZmFMwfwJ8E+CDNxI1uBmnk0zXcZtZRwbNv/IxWxTwOpaDWre+8gxxz
	 mDjBCbdKIpgeCnr3krbZFWzve/F+DabpJTWyKebUpKyIgZkntVPi8T3c/d3pduLOoh
	 +RgUrnIo1eoVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92832D13C1B
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176948123358.24039.11391690598800681006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ad5bd2642663f335524551e357ebdcf59c5d912fad11d7606783275ee1b1f4d
Date: Tue, 27 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769481233
