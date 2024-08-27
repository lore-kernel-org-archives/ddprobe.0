Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0BA9450
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724735754; cv=none; b=OiEG166y1v8b5pHBj0G3ke+WrfpZwudhF9hlPBcDV1TjKYDAqlWsNAxTujp7IcvxBi3Z263+ImBCsGZ/Kp7YmjI4j94MOFPMedH0NUsP77bJuS4GxP7arDCrg0guiwBTCFVGN69mNYgPPQEkanqKgYPAtKTAHboF5pr7pBtDSng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724735754; c=relaxed/simple;
	bh=xGvdIsYUNFJz7Hou1pJ7JJSNRvKeIrX3ZFcHLOwM7rY=;
	h=To:Subject:From:Message-Id:Date; b=EZ+18KaxnPOmUOaFCobCpCB17YXaWxh1JeMt0sqMxPlONeMyYPBq/hFXA3kW0PMlHgM6PoIo5/cEk8HISKMckURLCCjhUwhrtw9ch3Ce/lmnXcdeHNwH1Xxmkm1Hy4O/dcdoWYob2A4OAsKRn+iHwhG4Rv3x6cEVkPAGRuyxmJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjAuxzkn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjAuxzkn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AFBC8B7A3
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724735753;
	bh=xGvdIsYUNFJz7Hou1pJ7JJSNRvKeIrX3ZFcHLOwM7rY=;
	h=To:Subject:From:Date:From;
	b=IjAuxzknab8cdSMGzbnEkqNOyovOFhLThYOZ9O02lq80zXtenynxMfvHVTihrl+Sd
	 n/yuVRgChUHPqbobt3GZDNeCyyF9nCEd5WeB8p+KBPABPuE8o5LNquVC0PCP7Ft+KY
	 KXPmRloF5BU4Fp5fWLzFRAyg90snWIKN2qQAfYefwbPKIQ8dGAe2bHwY6aeq+MpqiJ
	 26PhIArrjYBfKRngh4IXwpRGmkwFaILzYBT13OC0iETV/CMZTEErsPWn1k7YuI+BZB
	 rvJEqGrP7mhuLXt9uk296qM8zKEYRVeb5ezBtrqlId0inJTu+VoRX++AG9DHfNj89u
	 aEbQP2M1DV5PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9702DC52D6F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172473575361.5114.9683423506474754879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1105762fd32b110e78253513718951405322137a25903738bc4ba11b3df2c72
Date: Tue, 27 Aug 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724735753
