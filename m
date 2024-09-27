Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334E723B0
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727408754; cv=none; b=SJ92RQROCTlKhLuZq701egqTyHB+hkWP2bLPBGEzvuta2mKbkW9PL4Y1dK1MCrFWpV3Y6NZFKuaQMGBLYjsZLJAxmmSUZNKUEH5L3AQ83MQbXQI/Ohqoq9XMGhdidSbKfA+KVli/7bW5Rag+bcioIwHKOramAU7Oc2LE28dt2A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727408754; c=relaxed/simple;
	bh=j0Cs0maZ+Fzp5dhAYKG4mSQ/D+Ua6LWtgOFLcHf6gig=;
	h=To:Subject:From:Message-Id:Date; b=MNK7kTbna20Nvoa+yM7WJ9JaZafDwwspsrHrsb/agNySA4qmrb8uZGr1shObvJI34od83Uzimie+IfsZZIMJj2swh6VIDDwLSfHiF1hNPcj1dwg1wFP418tEsZG8785Hat3aCFM21fqbtQmXUIECrRdVKdTmOCRn1G2MRH+bpl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C312s4bN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C312s4bN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3EB6C4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727408753;
	bh=j0Cs0maZ+Fzp5dhAYKG4mSQ/D+Ua6LWtgOFLcHf6gig=;
	h=To:Subject:From:Date:From;
	b=C312s4bNvLgxBKRY4AF0x4HhYHcqY6P695zM8awHqDn+Qoxiq0Mz9MfdCgngltyHd
	 aFo2O/pd3Am/60cdPKHcdhasPYOkxl+TA6bGXoQWPIDtfOYqXIfT86WAU7QSpEF54X
	 po58RdXxxeOSwpTJekatsvyak7xk6wbS6MuQarFNewI1hSoIT786Rdzk/jlRJE/rAU
	 WxLFlfgGz/H5UZg41g94m9hVMvulO6kWtecPVCETUFuCQWD4c1ZK3SWWXdcB7j9m6C
	 Lb0ugztwMFLSWi0D+5u4caWmV+Sahc9L4OnXjKcu6KlWxgBJVqu4jDfBEEpcpaKLOs
	 R//Iq26ppepVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BB3CEBF76
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172740875359.32154.14042934653263182260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7070f30077d3c3f4a28d1e1041bffc1629b04164a66b677e117db50b0683d762
Date: Fri, 27 Sep 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727408753
