Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A24F275878
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751462394; cv=none; b=ufmn/u4Zkwy+HVO8HlOH+nnE1sJzUVNiurJsqOfdxm+bTrvDlpiWduJPAjhAQJx5VQtTI0g1gBWs5lvLZFwXocFZR34eZaAzcDfTzqhSu+2541iGePDGgGaGMyIlH+JrNnjJLTSaU5UIPANo2vL1cadHEHYghX8puqptNQ5924Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751462394; c=relaxed/simple;
	bh=x8dfra0i1jU52Dv1cOEnkqCYD318WMUd3K8GL5RN/Bs=;
	h=To:Subject:From:Message-Id:Date; b=NHORy7E7sFw4g8Isc8ExKYjOlV/mDEf/MljWQoWZgvxIqIdU6uBULjm08WVYkgMZnQLhjmIizA/xaxcsH5L3GBIAzuktK1UDfYkvJlsVx3kaLznluZrRfDr0RIZyJ7+v95+IAQbj08VO8lNK68yRTHx7NsdHlSB/qQu0l6slCDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDas20SQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDas20SQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07F3C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751462393;
	bh=x8dfra0i1jU52Dv1cOEnkqCYD318WMUd3K8GL5RN/Bs=;
	h=To:Subject:From:Date:From;
	b=EDas20SQhhHS8zvsmpCiiCNt/ODeFvIWgCLCTLG9WiGKNFsS9MKZf18/61axMwPjF
	 rNPjAR6JreuS2nScFzjCuJNxfjDBvGptAJqfU0MHcH4VwwpdZH+9ahTQpotFxaYy+8
	 8SZmoSoiP/ZPkjzze1GuCufNWUxu6YpDrwdt+j3qC1mvOqRcZ/EG7cwm8KBJQH5Fu8
	 3hHOMwOcQsyVnAHxwOZv+k2fwFOs9PoRyv3y7Y+0dy3F6E7cgF7o6FZfFIr/RMul8I
	 abUplegGhg/IvP4xYRB+5GkzJt7jEszg9/rguIrjNeRJEc/R7HcsO/r8QUh2nDKgN3
	 OKw+LeVsUzFVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9056CC77B7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175146239358.13795.4906271642723135104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0903809b64258e4f0084e92a305345bccef5e90ca8665a547d9f732548b68041
Date: Wed, 02 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751462393
