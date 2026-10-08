Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445473806C2
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791495634; cv=none; b=TpLYRudBLZVPFGCjWM/zL+Eel+sIb/9WiGyr+QkvzZv4EonfTVzFqK3MGsl/EHYTs7dbD9x35L6YFgI5fcj6jaDuXKuIV1sCOggvftAuVMJ220vATmOj7h/+HpHxO607WetWEGh/3rukEIzrsTdr3E6vnObfPINDvEUGvw+eefI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791495634; c=relaxed/simple;
	bh=m+iNfekNGLnUxRWozF1/7hkNNV9KqTUW4Qj961l6k9w=;
	h=To:Subject:From:Message-Id:Date; b=O3tFjp3c5+UtKiIrg9W3rd41DSWUuY7LNXAOFJcrbhKWv6CkyOxaClQbpfcSESRLsMHaNZl46gQncgzFV4c6DB96FAbKkOidpCB2bGxI//gBUyavCMcUK6VKruzSRpjLKeh3rd5FmJExVHcPziebKz+xDUs/SrM+Qn6cXtTgj0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFqWeyAS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFqWeyAS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D000AC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791495633;
	bh=m+iNfekNGLnUxRWozF1/7hkNNV9KqTUW4Qj961l6k9w=;
	h=To:Subject:From:Date:From;
	b=kFqWeyAS1Grerdnh1AZ2NAXO3SgOFTzqKVM2cNXfreZ9WwMBpAjZsMxYZcoh+YZ9J
	 ZHRHvSpZh0+CZpkWsILQZyFrAiEhlpBNlSyOKNbGeOvzrNgZ6D19QTydQXGJTqBgqj
	 DkqoPGIFsSAOmh0CGqC+pDKKzrOV1oredDDz3gFXNz2Y0Kvz2UdMokU+x/CoGrTlJJ
	 o885rx0MYuDhYLLy3oY9OuYLthnlnmXmrEPMKSRpbTsOoW8+LzZdW/VaaDenIcyOyr
	 SB8x2CxtoLyBYmvnQeNfCa+y/u77LrqtOKpsefzDrrwJrolQaBdmENcdqo6uvgwgXq
	 vAls92ufbfCAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA295CA6015
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179149563368.13820.2296887517199082002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b34fd57c8d0a3333cead7b514bbe7c5b909dbf37b5ca44caf63b3b6159c18288
Date: Thu, 08 Oct 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791495633
