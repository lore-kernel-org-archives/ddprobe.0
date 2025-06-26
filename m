Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3257263E
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750919994; cv=none; b=r9aPYgH/62FRg42NoieJAVU52O/FmLPX1z2MSXtjitUfdIAwrHwlJl85kAvYqnhWfhYm7qxlG2TvvoRtfUyb+8RfkZ8F2R3tVXqo3bdDzDJQwQuNDl7EiWnzKG2B+W0Q3RVAyA06BYTxkJ0I3PvJfCF7AnW8a2oUXOfeOX7Xmhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750919994; c=relaxed/simple;
	bh=5tQrPAaoqqnJnqOJOF8vYVcLnZj8ZGyHaAFftnIdyd0=;
	h=To:Subject:From:Message-Id:Date; b=j/l7m9An3xkcjqqdGhQ+SuMxa7DtT7edN+X/1Lj8QTi77937Bw/xXLAs++REeult5tvj7UsznScXXsVDseAIJ21hEDgL8OGcYwQtUpZDDXji6BINCFMeahObr6U+QyPyfVe7tXs+hNHjC0rgGjtoUcw7AKRkH/ULqP2GTK0kV4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EmrioWMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmrioWMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17D8C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750919993;
	bh=5tQrPAaoqqnJnqOJOF8vYVcLnZj8ZGyHaAFftnIdyd0=;
	h=To:Subject:From:Date:From;
	b=EmrioWMlV1iRspyfr7S1ZizEEdV+xDyfPSQ13I3am+wRSsvKoLT8qULJdibx3C5KN
	 JuNTQYPkuzK/e2l92TSfZq/fAg3E+wYSrAAkcgk75DabPRXBq5iWJpaGagC78UoJ2v
	 89CTkcQfYTND6nVNBBw7haGjnrE27mGnDMHtV9u8eD5jaKVCNvJ9DW4VsQ2tv8MYU8
	 totnGBf8Y4NYvNFzKS9B8vUlPBBwCmkTLIGAHr8EnWmlOy1sfSqXZRyGkJmnC89nrT
	 NLmm4UKFuwqJ/r5oA7bO7SzaYJbrwcAj9tCerqig8iV0uC5JGwsIAURdCGRgQHqdiq
	 UHOOJXTEW3hWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90859C77B7F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175091999358.20657.656119734210794793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a61863a140b5802fef6012131da78e47139482a760329a5be890369fe85cea08
Date: Thu, 26 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750919993
