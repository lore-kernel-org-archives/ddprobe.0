Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D95019F40B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 00:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784422714; cv=none; b=YWJgFuLyW5aCYkzCUnQTT+n0lU3oHTgwyF2A5y2OX+Ii712eeIxWcYwzFf3PmW9PNIe8slHAGG0hA52jisMCPxXy/knWos3rP0m1AY6zJ+fpBMQq/VZkaXZJgq9r97HOwZoo4Q3mfSiInJdn9A8hMEocmIKwzYDNApYQ+aEjkck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784422714; c=relaxed/simple;
	bh=tsK+Qwom0TANrdRgKEk17aFOn4/krzmkupT+OuTfhXI=;
	h=To:Subject:From:Message-Id:Date; b=R8kfxZW6fslh1+Q8bH+EPChEbA0bT1hmiBzw63afXmjqH06/8/8qt5gGF9B+E226oXjCp+3MVIus8PhPyJSP1vvOufjpcLYzBKmelhIQ+io/w5LM1r1QM7Lg/GCWmwcjObHTXdFdCb9LJP4ildVHFQvv5Bu8iuWSNY7zFV7c40M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FII2BAJh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FII2BAJh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A27C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784422713;
	bh=tsK+Qwom0TANrdRgKEk17aFOn4/krzmkupT+OuTfhXI=;
	h=To:Subject:From:Date:From;
	b=FII2BAJhR8OwRS9RAhtbwhKqedy0s5PKEtw9cYmx+lojAZtra+vXoAsvXy4Fa4hGm
	 Jk4vE7x37FtpdvceaeqM7WoJeuB+1Z+iNyvANXkOFRxNtxcOIoieqcbtxJWavxjdTT
	 rNEn/LjYgVb8VNUnu2mq//Nvn/2wBt0DaxoSiMRdubCvXnpqKDNvw1o54HQtcTStCb
	 3TUQgrW2B5Mo9rFc0UKWycnIiKGPiUTrjrwvgDE3Io+N7VDFnxewLxAvq+TAvFubzE
	 oHLNUqpY3Qa9PX0Eli/PGnYCIuhkE8UERIh/X2x+qlMTaRoCzD0JH4Avp26o4SPuAn
	 ZqVJkheTn74og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8A1C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178442271368.3109.14223364364105623014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4665e150a967560fc5c67adc7cb8c3bfb3daaeb949752bb68bfdcab09bd67eaf
Date: Sun, 19 Jul 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784422713
