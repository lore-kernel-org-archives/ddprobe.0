Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D083378317
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765889034; cv=none; b=i3JldyLaFek/nChvl4z4Zgf5jhGxpq0c+E6eh4C236GA7aKgstcUnHYKIcgrNyyxIW9EikSGI38svGTl7II0fLS1UyjD9W9mKc6hYl+SXITy/EDVSJTX2CSQUV+13PzC9fEIc5IsgZBcJf4tL+NHHx+p+TCQSg11SDCz66ouyN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765889034; c=relaxed/simple;
	bh=cbCLosyJuAD9vUSOFiLClyCGRjymriUMOhMFh4POKco=;
	h=To:Subject:From:Message-Id:Date; b=LGCaIWIQB+JBorW1t/JxCCW4e08kVvEQMWSPx3YYTOZwFhllmBohTbieu/CTk+dutXsju713/goEqK8owvdIhS29zcLNbdyENCUMZIRJj6qEKHzHBRujb4dsuXjfJ6kBTrTslTNAHB3MzATfp6HYxr1vwa5lLCsGCoDGboCl30I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y7tiLSl4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7tiLSl4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41E8C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765889033;
	bh=cbCLosyJuAD9vUSOFiLClyCGRjymriUMOhMFh4POKco=;
	h=To:Subject:From:Date:From;
	b=Y7tiLSl4dsvBN2y9sgpd0rl7m1SeBUe74fE9E+XVkAWNTr4sdwa0uZtFiq4LSGui5
	 OYgUnpOPGeNc/S4SsJYD3dcfpUdKpQx4Ic8v87wE0Gt9zvMHA5dGE/pHATZkGpQqSu
	 YjNdKZcGOymheRX+LzCQ9J7oxXImgtMmF0iR91Zn1wer1HUb6iBRZiA3BnhDJC+wwA
	 FwSK4YRE01CXCn7KSa352Y6jypOFSUdewd4h6G0xE1oBg3WAUcYTdSDeeNMvRG2hPT
	 yeRwG0d3etmq90a1Q3r1AzNsTIBozMmd1ce5rFrSaiAg4fGec3GN44+2KYHKumdUbT
	 RnvMLut+AmBpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921CBD5E144
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176588903358.3494.4481592365775467582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b55848f72ae7092becfb64b6658300fb0ad0155f35df7c93f7ea194aebdc41f9
Date: Tue, 16 Dec 2025 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765889033
