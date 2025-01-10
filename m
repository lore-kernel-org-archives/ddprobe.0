Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400F1B661
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736481954; cv=none; b=GHbzsZWPdLq9c5gMoUQW6tE5XwmHXAu4zPCjlRsY0EIHCFzbVWiq1pjd53nXeR3+7xaHIBP9hWQmmRKknE2HwBD2V7s2xJ3Gf/FrkmGyoMJR5Cwm60+0aPfsFxU9uc7as9ph+h5w7UYCLp5Bp0E3bdxA3T7ri9N/STF0n07GTTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736481954; c=relaxed/simple;
	bh=wqP8H+0ce6XWbQpRwoKH/x7giVAzrxc+LArZkEOG00Q=;
	h=To:Subject:From:Message-Id:Date; b=DGNOtjQkuYLuMQ8xK1x95JgR25esIJYxZkdttCThd+JE3bcg9YNfMiPrfogvgiq4fgyvRIEKHW9E9PaA1og8DThE7f768ogYblVsfOjcuwOMSZ6xVxR/Fo8qqR4cog5S4iuo73pV+9db73NznM4IVxPPsefKJgl8NaRZ416BPqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptE+biOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptE+biOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7CEC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736481953;
	bh=wqP8H+0ce6XWbQpRwoKH/x7giVAzrxc+LArZkEOG00Q=;
	h=To:Subject:From:Date:From;
	b=ptE+biOVWiuFT5G+R+508vHyVGqHuJOmoN9YhjKeh7mqKe9YaSS7XLoDOTgrxeI7/
	 9FNy8Uzx3JRXfRY7RgMTu3DdTpX5w3YZa2hdgisOtnbpyBVU5wGyAiO+3P4zb1YpNN
	 72sRDGOF2RYmO35RUp5qDWvSq1U/Aq/k+ufFOuz6AU9taXycMtlnq2ZsUq++DUNWWP
	 LvZG+9eN9OPVaXo/IfarMZCyBh5NSQ1pBBRzOd/ASCCqZOlp641fT3PekkuK6oIMmj
	 n3xBJb9WjDKukTXLIWz6iS9amYe4kXDPe0ZDF4CjTZEQsSowcCSSFP2K5bITrX4Nhv
	 V4BFYQOgcUKrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959D1E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173648195360.12365.17013093554701201198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5170a88403ce6b138d31abefc34983ba520155b796f0798b68f6f2b40b3d42
Date: Fri, 10 Jan 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736481953
