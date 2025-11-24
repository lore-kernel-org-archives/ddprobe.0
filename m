Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE71635
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 01:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763948514; cv=none; b=Hh8hOCdGioVgOjTMIsLOhyuok5tzd3ZzpuZd1/3vPiRdol8ptF3aDxnfqgNt/UeFWvkxqAWx+hVWYNyRvKhrAwTMD0Ep51fdiANYKN2tXkjVlaLbDYgVgo3aP3qTDIWg4QAgmM1lmzkTIhgQ6kAYxGsf48IpdwdGgEbm3ZLrvUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763948514; c=relaxed/simple;
	bh=6hf3EBPm7Fo/TqId8mNw6Vs9IpyFZrQ6IH2i/Njtm+w=;
	h=To:Subject:From:Message-Id:Date; b=gHlkkQPu8iPlpOks+tU6/gtPpilGdA1xV9Y9/MDiILb4nMQzv2+li1ubD7+4tG3cE6byMRHq/yXBRUvPoupjJ8osWJQn8H/UbnhJwwszcmtYBMleKHlhJgdM3bfvfBNquGIH/FtQRXmOnxtb92ZyL1Fff8wyncX0OCC8J2+LHe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOGPI62S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOGPI62S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3805C113D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 01:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763948513;
	bh=6hf3EBPm7Fo/TqId8mNw6Vs9IpyFZrQ6IH2i/Njtm+w=;
	h=To:Subject:From:Date:From;
	b=JOGPI62SUB9PZabr0UBq0UM5qFkotkh7GZ8y7FmMqEoomTt/9ZJe9nYDr3jeY0gIw
	 RKCKKFgKtjkAQX9yIA3G43Da536bHEmB3U693Ttj0Nh7TuHyge5ODqo1ut8TwfkQqQ
	 Txi1858U1akwwCaZXDs3NeaZrGAnTSoTiFocHaE4yDNLtrbBCpVaOGzD8cvIQujZdC
	 vzydsD7poALm8S/4hRDxK6jtD1g3U2FmGpkVzkbcXpK1plxoDb4B/XGMDm8UtHuqZm
	 pexHZsmPVqL6HHiYv2KkTwRErRJrxxiwwHyNq84P6vU235zhoLEiliGtRCpa67mnZA
	 bd3hJnvlsQvgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ED4CFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 01:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176394851358.2312.10669702894967938754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5200890dda56d4e8749aa58a0ca5dddd28ee004932210bdcf536f9af4300312a
Date: Mon, 24 Nov 2025 01:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763948513
