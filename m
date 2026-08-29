Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0AE272E6D
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788036035; cv=none; b=HXwzrA6HHlrAjYMetdgIn6rkzvK2cSuPpaDzVUqFyHQsK27NGPpjWjQ9dcn6a/27I94etlv+NX8UwpSze4PYV7HB/TKU+cS1aZL/5yIRNJru/gVEOZzE5VbBhRTUE2y2+uXEoM348KBfg/1BpoIC5A1YiuTAo5EiE/4IFUlsanE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788036035; c=relaxed/simple;
	bh=Kctv37PFnWrF3qX86V1/tMm/mc9kp5uMvFSZIwM3pqo=;
	h=To:Subject:From:Message-Id:Date; b=ZQGr2E4b5GqIleKx64NbzDMi47DfMYkuSjBUf1AjlpBa1VgCM1ogm5FqVxujOB888jo4kW7aPZwJimsUJhsmBRwy1/k58+GPKqONgDZcLcey9GKh8R17zrfsE12ForeTx/IRn0NRBAPtHSxejlZ6xqTUM7DWYhn95k/qdfPT4S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGj5GRND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGj5GRND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7FC7C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788036033;
	bh=Kctv37PFnWrF3qX86V1/tMm/mc9kp5uMvFSZIwM3pqo=;
	h=To:Subject:From:Date:From;
	b=nGj5GRNDqe7V3wo2TmZc2EdpX0L/QnoSpLDgplEpYpwBeSknLpJMfUwEt7Vgwvhij
	 w1k7OcSG3NUrTjdHosL7VpOV74QE2o018kH5nTVbB9T1z4+D/gDPK7/WzhEBtv6bzn
	 2u8WI4eKfw1dc90zBk9b/eYPtJSgzmlRcYpomGzknDI705raZ1l1kHdVnTf17bdQij
	 OJfn/eQ4Q6eqMUExfk47+KJXWimgL1WYZtvZoR2DT4i0HPHvRI+ylf8X0HvCW0rz3N
	 VY0L7t2l1UaujnSPMIfpoSUakUL1CduDiA47qKHFpwgfG979U2KMCRoo6WPGdAferE
	 idGeBuHJfMeeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2061C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178803603370.999.9810231669326979029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8784f95103cf7fb77fc75feccd9249ee20b3ef31726b6be5c2bae214fcc39b1a
Date: Sat, 29 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788036033
