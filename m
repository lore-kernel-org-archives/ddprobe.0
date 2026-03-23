Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153F2D531
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774224894; cv=none; b=dIpynRTEzW9OexcSZzmOymgAfGLimd0MOhlRg+1ubxfs7KxF6IYJDUkMgpBSmJ53VMsn/0O8GfnnY68Lb8DZ/TyMGzGs3Gm7RZExZeExTtNqenpJQs8bu+Z3fovUvgoFzOMlzhWRHuJvOYnMPVRYGvLa/1yOKNRpQ7qygJIPGHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774224894; c=relaxed/simple;
	bh=mahAFPhOt7LOcKyOa6Lnz9ykd+819HZJwEoToaf5BIs=;
	h=To:Subject:From:Message-Id:Date; b=G4MczsFjqoK4J5GpdfNWFCrgGS+98HfWvyw4/gGZqtGVI+Ag8eOhefRlqGI40k2Heep+UDsezgXnKuHF6RQ34hl3Q/qCjkztKe7QAcshOteSYJse2XlEZ9HXOps4ItOmyfuZHsC2l/Cp6uGrJDKXK02DkQ5sBDwiWCYDM7o16sE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UV3lurqF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UV3lurqF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3DDC19424
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774224893;
	bh=mahAFPhOt7LOcKyOa6Lnz9ykd+819HZJwEoToaf5BIs=;
	h=To:Subject:From:Date:From;
	b=UV3lurqFZOKRako3KXhkvy9mFN8ok7U8KAXtnHzazlP7l2VtxRbyjsBXEUPMLjdxR
	 2L+KMROcDeYaglvCCFcLs+gGhX2DrOCe8pLN0phFCyLCa3Q0xUj+nm5Im5E3eFme/R
	 NUVBbszAyTo5IvO14kCqAlsbe+/sRR2drdENmwLvHEDRnFZzQUdak4DDozBv9Vrclu
	 VgNGrTZs3j03/KQa8XGPHy67NRi9X8oYGx011lJv2BaqVH9Iete8NwNZ8fOiIAr57w
	 i6TB5i7BNJqJVm1B9YXA9ULmXp0fJViMLrfy+KY9SFQqaVWlKG5Xx9WMMFIAdODPoe
	 orTZu6vQs+RjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972A0D58CAF
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177422489358.13736.3776374227966653504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff75c57f36f6765e4fcb35b7f82a4035d6dee1549e611f81a3a76f9c698b5efb
Date: Mon, 23 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774224893
