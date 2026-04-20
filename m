Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F2533439A
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776726454; cv=none; b=mLrybDto/+35hO+BfuloUWQsQRTGiqLxDm9iVJwSJ0a3OiBpSo2YITZ/SS+X+qqRVrft95jdVViMy2gma+Ar27ilgzZ95q/5ZIlmCRj07eyQLRl06DMlKDdi0iWXLQTCpvNYCYlUEO1cril7t2wLA88//7UGdtnpvdDeHqkX3LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776726454; c=relaxed/simple;
	bh=t6vHA8W+QU9oD0mxrGHGrcfc2vUopsxN7+MFn+gan74=;
	h=To:Subject:From:Message-Id:Date; b=XNIewBr6bFabgTmR/rVnGkhLepF8nXp5POvQUvGYzygS22c2LMyx+lHKc5Ia3suoYj5pDtaled/Eoq1NMkpeP/vnxmZ/WPzu2rjqv/5oXB97w6L4vj4HOzstooMU/sODlOqibsAF8U35XpkApG/kSyw8ugfRi4UwtcbhtMow3dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gsT4S+yS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gsT4S+yS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1EAEC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776726453;
	bh=t6vHA8W+QU9oD0mxrGHGrcfc2vUopsxN7+MFn+gan74=;
	h=To:Subject:From:Date:From;
	b=gsT4S+ySOaWt3aUemzMlWdMUEZ3kp8etyBgQ03+gA3YPK/VaKcOrEDi1DRSDrVvVC
	 +GdB+y42HlKvuA2WX23hEQUoB6uCOQoq5aBj8PqAHx3DG0RxAmTODo2dWoOsaKQTMs
	 /uEx2m+tD/0bJ3fWHMa2soVHZFRqPPasJaiWjBRkcuOtPRyuIRW8lwoIi1+MSsx3ol
	 rfD7I/agRxsuVJ9BN7HU3ZIUJpROOMsdqNkNqVyGj2ujUS1SMzSpBYf4rN/xFz/d6s
	 bTSmkPVo0UgNygt2w0i+e6Mf6Si9Sa1pTISPpd6LvQLr0MeGBYIYo0PsUh7kZBDt5t
	 VS317GYILNcNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5FBF5A8BC
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177672645368.20750.17530714835922580869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7e7a5c8dbd2af92c8ea2cd80029887baa4d81e9b97e460e570578e10c9f856d
Date: Mon, 20 Apr 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776726453
