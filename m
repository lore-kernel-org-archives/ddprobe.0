Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145A819E993
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725284754; cv=none; b=RCvDxAFX/0xP9tg1+BWbWITafh0VCuile1lZ1THFwVW1yW5G6ny9dHL5PkrhTeZqvg06PHDJWlN761QhIX0lvvvWy8IuDDrLuFQqAam1iKG+FMOOpoNrfuKHOsoqyJ62HErlq972zzqlIUTpeM1UIXHxBXutIMtwZGcNcYt2lDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725284754; c=relaxed/simple;
	bh=ZpHUIVAAWbY0FvBqZi/Ks9fVOptFN5J+4hlDLSf3rUU=;
	h=To:Subject:From:Message-Id:Date; b=pX/6AfvH7A2eyLGPU0yGHLCnCyEk0l5YegwA74vvjRf+KYHsVTLvg4axgPIfFRHEE1Yia4NfWDoZSf3O9dcC65tWZO1s/+OzaerT/1drpYtH2zIjrErlp23OoW8OAGZ3jDMCvaDAMNO+4yjVO9oIgCYoxVVFTZJEECcdlstrQTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOWhLyIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOWhLyIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8209C4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725284753;
	bh=ZpHUIVAAWbY0FvBqZi/Ks9fVOptFN5J+4hlDLSf3rUU=;
	h=To:Subject:From:Date:From;
	b=dOWhLyIKGP9UjdO5KXarBUNzx4E2uyii1yS4KZwTh6J2+m7ktaKdTCs6g1xrmTQjz
	 gYX2iKblmPZtiyO5XEe0GB1UKKx/78/GEXBrf83W0KeEx2wzS/jQgjLDPiQG9HCPaI
	 QfvcUJR8cUC2F044axeVPyCNVxx4zJcBLuVlaaMigkcqjgZo3tXO8pHRNiocrOkix/
	 fi5EzoNGEBUif/EyCutC3XTV1d81E/SbTfQ/C6vT5Ok6vVCLRRrovLg/sxuXGXiDxu
	 xo1GQKfJZ8TunELcAARJvELoTfcDiqvqlKoL/e7nyUvHmi997rgE+cdr+3zM/ZT/46
	 KXS4k3EqRB/Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9691BCA0ED3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172528475360.13256.11847339363862365709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48bf0b6c5942e4f99b0947ca99c1d2a42a8d9ea0c15007a5a4884709d3f640fd
Date: Mon, 02 Sep 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725284753
