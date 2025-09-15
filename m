Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360CE27AC2F
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757961594; cv=none; b=fcD+H0hYvTW/zJ046dwdBi3fz2XKbtF8+QtnAS570U1PbEqbAE1wPs/YGlv4lfYOw7YlfvQSLfIfvGn5a2+SDbeYv5SorxYvoYNtPD+jE3DP/KhxyJNfQzmFQVFFmXABtMI+opfs1B8q7TDRSdMTjCrK2k5rLbW9lyqm+agku/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757961594; c=relaxed/simple;
	bh=jw1DAvN3GlfSroJKw7nW4xzOFOiIySyVemnvBcRTp28=;
	h=To:Subject:From:Message-Id:Date; b=tAK1uPsuYteJxUjUxoaotiuQM6VnIDmfxcN2aPnTZOp/E9csrLGOG++vBZTvLvV2moRRpuaTjBir1M+09g4fYytWVIG6ODlzerlIsF07piV9Dds7frJTMoVsnPeUqa7JXw3tKLPP57KBxdrdG8H8+IDmZVxjclVYtEX99gKJwO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roKb79X8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roKb79X8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4366C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757961593;
	bh=jw1DAvN3GlfSroJKw7nW4xzOFOiIySyVemnvBcRTp28=;
	h=To:Subject:From:Date:From;
	b=roKb79X8niaI7rIg2/r5ESddpLLwM35thDgDGScFPjZdmb6oMzOKz79XL5HSshdLo
	 0Hv5b/IiXHrW/o2R2g8hTa8zcVnL6RtkYVo8Er/IuvT4/BT74P5WUkm1AjszepK6NH
	 Hc8lAtfOpD7/z6upF4lyRdbHMOtcqpqa1zwKYQYI+/XNw3GU2bPu9NHRCjNO08TFSD
	 w+pIfRjAXfUOWDM2r8rXoUFY+IuiHHcIyUo9aoqBpLvEeX6lMeq3UiM0ZWylbi4xpO
	 YfW75PCRPqC0XhyuO2cbrMsssfs5rf+4TsdUO14rqHCLSBu5//ZHic8RvY0c0aQOFM
	 GS5uqfsSjSaQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94779CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175796159359.6885.8426075304458236207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 077138d9e02e602159962444b3e3037475d0b82b54762af5ac5bd11effde895a
Date: Mon, 15 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757961593
