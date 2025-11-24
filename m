Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044CB2F362D
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 09:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763976114; cv=none; b=Pmj0acHgCoT2eBrFbVmejfhCj/sLXKkOwAvMKSfK3lrf0g4cUMZNtDEbXS3y5xso1DxjpTJdR7v/WjJ/4hJuKwo2fF5w/bJu8LM1ET/GNTqfqIMKzLIQm3ilCQfU/gUoMjWe+UzGRQtLO/L5nokowIgCpx8eYjnMi92fxaUzykg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763976114; c=relaxed/simple;
	bh=RhLwz5e1d2afN6np+5tOhH1O9p3zOckovue99r3ugkQ=;
	h=To:Subject:From:Message-Id:Date; b=Ex92EqiSoBX8AvYHWRhYWLod11ZNbmD7+rz6dCg0EDv88tDlRlvqLC3YhQ9rYMQWD8BTLDR3s89Wkfx6Sbn3f3CE5RavtS8pxkYiRiHkPi6tedlhuDyIcN7r6NZTWFf/4pgjv3wrRBMfDFzTCngdeV5chHSelvHtoVbc6Jwlru4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OM/2Kr6W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OM/2Kr6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F880C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 09:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763976113;
	bh=RhLwz5e1d2afN6np+5tOhH1O9p3zOckovue99r3ugkQ=;
	h=To:Subject:From:Date:From;
	b=OM/2Kr6Wa25gx9D8JORJmEtsbgRs03Ztd3MN7VVBd8Xri4Cm/IhKjbuTo+RgZBwcN
	 mBBtH9UNmTL91ilQCVc+T9ObQ5plfaowrrjmgxaiCyC1DA95cZtvsIymaul12lVxGt
	 sjjQvKTF4ej8MN5vFPT/Nv5g8rVYFNbx7QFj1dgFv7IGckuQPLoejDDLo/4EESkUKu
	 A9OHEQQkL3OZap4ko2OMPqvkkVMWxB3aqBg0o1/cYSFX5enD3AUu412y5MhYs6wTdw
	 iCqoh31shcpTtvuV/Akh+un6PEVwbGNgQfCJ4NDDAGwbi6ZkNGNCzDDCEHyGy9atme
	 gPDe+Y23TIcRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9073CCFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 09:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176397611358.4839.17780651601624636799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a91207103a01b4aa6949e0c7a1bae0236ee67ef0f00ec84a6dd75d481212cbbc
Date: Mon, 24 Nov 2025 09:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763976113
