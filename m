Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365528460
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759409994; cv=none; b=UaxLK1Ohiwd/m7RRURHxpbz+k7j9hljFW9ZEiKBd1Q6V2F2gn/8gFWw1t92ggzyrP/2sFFWxv0+dvTQ3RPUDGe9u+dLaglmK8sGf5214EA3aAdJV0Q1UtveHbaSR6IcRWAigTy0NGO5hSKhJS0HcM8ky2G2ANYBF5mK8fDrvvbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759409994; c=relaxed/simple;
	bh=9yKQjUIOlnl9HAXCdr69AlXjaTPVhLRoAl/D4MpjP+0=;
	h=To:Subject:From:Message-Id:Date; b=beF3nNl7a780opzzWIX2OuFPrjuB3xwMmaxMcjcDpxOO9yrnUC5Cx7gdHpuaN78m1JGAMPJ7fVOg1TZ/YbGvVWpXMBKbeCXhT+H3uOHPh6QWthY5ELefC5xQdq0IIDrNEMsgSjtCuHBq8WToz2BdcmH5tR4qDjf/SjJdBS/+CPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9BZecZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9BZecZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9260C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759409993;
	bh=9yKQjUIOlnl9HAXCdr69AlXjaTPVhLRoAl/D4MpjP+0=;
	h=To:Subject:From:Date:From;
	b=F9BZecZ1E5zf3+lQSBnrN3dk0ohOoqPhnID8+K3cfVf3+zcuhMSvXZYtaWPEktgns
	 rYmDjT6BywpRtlxUeanWUaxMiNNTuCYLlrLvIe/le2maSHA0iivE2NebAqz9Vf1Jkl
	 Az2obbQ5k7yUAYWv0mfbjIJoth/Iw9qPakI0c4RiE2X6zxueNw8HZiYIskXFf6EM4K
	 0HaG+Q5s8Maq8l+arCxeRTUpQ6AfsNY+m6KMcvxe6RcYERLjDNATrEtc7ZoKPV5yX/
	 ZIXCIlidOrTcmHzVyIniY5GjWW4R52MlSUfmudaInuQdl5vqire5FR5/DP0DkYKr8S
	 pVHMvj6M+4Vmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5DACAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175940999361.1189.3688800857420317511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b5430b0dc20a7092114091517c9760eb54ce9cad058b84abe0106850eb1dccf
Date: Thu, 02 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759409993
