Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E85817BCD
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721692554; cv=none; b=sR+iO12zN+838IROuI7+hBul0rIs+DRaToddWTNldPLXh1KaiPWiDyiwzKhTS6MhoAvlWd0E5Q7GDl+GF7g5AT/AnstoBgY8LdM6/CbQXJiMTYG7K8m6z/CtvI+gIdU8H00nYrJJRZNm5fG+YjwLl5GBNADy6kwCFYrVBNyGCXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721692554; c=relaxed/simple;
	bh=nePG1hH21dPlKv5NaVLUeKFzPDFQWOu8u/CCrA6PRzU=;
	h=To:Subject:From:Message-Id:Date; b=j+kzJOXRcLzzN3qQczinMA1FZeSWfPs1pEEz0b62GjMtexnaWtqr/bw5GntfksGpmfFUOAeMR5Bl1QvP2EgtYan+ALM1gfuy3GSmfcgRULgt5A2VWlHRV2kN4TBfaSLaRiQ5wBNCgQjPhpmhJ/WRWjhKBJcJNEgjSdvHkkQjS0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZD1jwEF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZD1jwEF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7941C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721692553;
	bh=nePG1hH21dPlKv5NaVLUeKFzPDFQWOu8u/CCrA6PRzU=;
	h=To:Subject:From:Date:From;
	b=NZD1jwEF1n5p4vsUtyp/Xc9R2IvGK+FsaNtkj97kkNTduNn2wyPz1CqCdho0zjzMP
	 K+jUwc3yi9aZlJJITx0ZhKt5OElaXP2oZZ5j1U95dCt/N5r7kgS3CsEO9Ys4Mur/eX
	 vsF1C614clkAUUB5c8zCAylDaKdkrT8IT+XtScG0PukOYIo1M0qhUCt2VIu542Cvgn
	 IaU17uFJpN1qdncq80t1l2PPjVo3OMyN+BpcGflGD0i+SXTdYTjNgqkc1wxQr3rrZW
	 RNlBGESfXmrrPqU5fISGSJn9P1+IF6f77UG9uZT+zU8+7UvVwNa+/DLAcV39AzTrd7
	 H9hHzKBRAs0BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F94C3DA70
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172169255360.966.11029546446984163998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00e713369ab0d54efe6adb9898d15b9ebd9f4ac6c3878529ddb2ba5425bd150c
Date: Mon, 22 Jul 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721692553
