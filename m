Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203DD281366
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751614794; cv=none; b=GERuagIRtNnumrsQrUdlp+3q5JpItcsnntKMSpy/S0BlX8XP+H53RdAlVkXnUNt5+mSdVGKfl1lpMikklfpTpPnwJlZ2iEwm2/7GtaXdrN0cm4oeW2PoBMuCgHMi4VBBIJRn+Q0x49pcr7TeaWmvmF+OL6zOM8EjXGNMNjB0/yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751614794; c=relaxed/simple;
	bh=jt8WBXMDv0cRDtKKkVXBN23496VmAjogzI6UJnp0vjE=;
	h=To:Subject:From:Message-Id:Date; b=YIvwx6CgZn7AWFHZGA47+oluUJyFioz/WXVEWQ1TtaS8A6L3S2i9YdRGt0mvMfNpr5iFD6NhR8FAKm2kDF3xfPWjvAr3OoSZ/7xYeLSv+OuNVb8eU48tQU5ZBFQA798TvTiWr6WKUAKdWNzECQPklErbMQC/B+ZmNZ/Zp7UnkzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mO9jdRCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mO9jdRCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BA24C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751614793;
	bh=jt8WBXMDv0cRDtKKkVXBN23496VmAjogzI6UJnp0vjE=;
	h=To:Subject:From:Date:From;
	b=mO9jdRCgMy90szAQH7i+BtqPHcio2aMFPyOlzBbcyJIwKzn7xtGvVFdlaNfAbbxEu
	 oMinp5o0UwY13unO7opesn5mXOzbo6S2GEBIOxFfRN7wNhhs8veNNMeRhsrrNnDRHz
	 bBVHiTqJARpJmkF68LVbXMODZeI29BUTdiwZ4QXnCwVt1YZM7HTdRXBymsOqQtSZJo
	 J4BNN1995bqdk2qpoBp5UX/cs4otzIh9bn7fmvbe82vZ4tAOnjOwcSAzUt2ewk5+gk
	 qXMzqCfyZFOtxWyo89rbbjHobCS4Dkvg10c8EVA6uCtA0QDcX5a43ukC2cR1Q4+Fhv
	 o01dKsKanelzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D856C83030
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175161479357.22919.13700736497994616111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ec9c840a9963ddfaf127ab38039892c457caa937d30bb9c39776dcbaa2a4e89
Date: Fri, 04 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751614793
