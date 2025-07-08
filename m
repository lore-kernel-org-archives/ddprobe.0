Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286C318E3F
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752018594; cv=none; b=DIJloquGaW5R1+r9alSpP/JMl224TIuSpC6NSPa5DMsI9EgOsvVrB/m1zLFOM3B0INGbM+AgVWD5ridgeRnf9pdTTHSUhhALQhVpFc+GMlEEAcsObGI0UYxUM5Y4AzsDYfmH8Qa/202SHked8s+vJD6K2MYx/zTseWBjpjBNTTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752018594; c=relaxed/simple;
	bh=Hb0UhVk7qLykHzzI44rW+9L1dAX7INZvmeLmIR0eIYM=;
	h=To:Subject:From:Message-Id:Date; b=UvOkrZtb7D0yNC6OjefrqCS2PJy1yLcg2sasRWuLGBrUORzCilkOpDePGFWyrF1GgHF7+Iaj38ieraZlzRSRxBeq4aBG2p6f0SHT/co+HEp6Bo3BnG0GRJq15IfV0P2yzZhKMhPMHyDgObTPxeUf5Q9tOibIZvRfWSVrGTeQLl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFjBg+uL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFjBg+uL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC68FC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752018593;
	bh=Hb0UhVk7qLykHzzI44rW+9L1dAX7INZvmeLmIR0eIYM=;
	h=To:Subject:From:Date:From;
	b=jFjBg+uLPxFOZnHimXfSJvSFA3QgAhhHfxG2HKCNAKW/+uUrc2lWqUf59DDzhkbdw
	 7SjCqeNdEDVkKVFLprjFL6ulXojqNRKC9nKXoUi6F7BBB/Z3TWwuKKOHn1SPYZvEjj
	 TJGEfAo01BA4Gtzhh+0LTXOrw2pnLLD6ZnaIXdXtneWCDHmDGZazFqak6B3syCZbWc
	 QR5ctP0eht6a8v0VMD6EyNRlPZrMoLYYIBRIQXe1nudwYEs+3pKLJMZYtUB189Elbb
	 jrP2hOxOPF1om/cqzUg/ao0Vs4DgOYoDLaMWbKPBqPS7JWO/iPBRiRNr3Y7jcTzelK
	 d7yI9qo4Ke24A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944C3C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175201859357.20977.12467258298658360580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51e15b4ea150ea36a183be100b24e1275941aec187b51736da6b2d8278d9a6af
Date: Tue, 08 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752018593
