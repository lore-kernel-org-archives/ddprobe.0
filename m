Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141D630BBAE
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 17:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775064334; cv=none; b=RacOyAkMxyLQ9naK0/WAQ5Xn6llchInLWZwM5NvjgR/b3G3NwKy01ZbDPiGPFSq5jbbglFSkwMpSmMbwzoAEJaDduWGSBeaFhyrlevbbOIxOAOtGc2HlpFNiYrepVRI+Scq7Q0dv5vLj0aKo8CNqXDOL/Eh9QnWPZD005Amz06g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775064334; c=relaxed/simple;
	bh=NyucEGvFFz6SWPoqJzZ9AZfbAfQWCv7VtbFSah1dR5Y=;
	h=To:Subject:From:Message-Id:Date; b=Kwe/94DA2E1Zxzqnb9YBTeGIOuJMvsdQOp8bL2drgtSx85vvWp7CvjRyBlx8GAgC8i8pbCyob17OommrYfpY5msHkq8cvJz88xQFDDJi3IPrBR+17jz0PISUARXny06/+whB1pfv5vrGDLaOkjc9tSWw1FOTNYbr/MWCLM9SETw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BwHi8Hfs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BwHi8Hfs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA781C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 17:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775064333;
	bh=NyucEGvFFz6SWPoqJzZ9AZfbAfQWCv7VtbFSah1dR5Y=;
	h=To:Subject:From:Date:From;
	b=BwHi8HfseqbRu0UWvQbzi0+n7BOS+k+XSArheWVn910TUrW/bSPloYXZfnuaxqvke
	 ICrxMTfJtBtFoEl9iOHpaa9TYswA2RQp2SzPXrgqZsc26JUTDG95tNpdxXX5RoQkz0
	 7AWlSLp1MFjrwgUsRdIAPn1yqgR6J96NgQd6NgTsTq7+qrJbSHIZ5r8SR2syirKNiG
	 O1W5lZja3zSisPYrikN9z5e4/RDfJ/m6vsYtBiSETESoibaYPnDVfAb2zBwFH/3c/3
	 om2laTAs6vhjR27KpypcpyFxsJ1hMKt0PJ/SpZthf0+lOzQ0QAy6Z9fZp0qaGFK+jM
	 jHCwyKBN2HwPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA43E1076386
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 17:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177506433368.3935.23307168081601742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6052f41dac7b1e28db31ac3bd0658bc8e64762d85c21b0a17103b7f5de717a4
Date: Wed, 01 Apr 2026 17:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775064333
