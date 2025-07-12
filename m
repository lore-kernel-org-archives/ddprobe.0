Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E8C8C11
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752305394; cv=none; b=THYyijtPGfiJykrJuDPrKuiPxqi/9jL0qktJ0dpB2qooHk+9t3ZgT00vtWXAQoD3OBn91TyQ5SsgEiWOQYnSulXar++09CLRwf90dzfVsCGaJB9ETIEEaH3eCrv8grNRgk78jq9UwF2iVJOJ4ZaUTsJzxzNrOATQZz92jcpneHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752305394; c=relaxed/simple;
	bh=NlGAI+f6DuZoq/0OmoUEn1iPYJmURLtRzRIVgdLmMfc=;
	h=To:Subject:From:Message-Id:Date; b=E2ouGOO/4pju0xnRpFsBkpR9n/l//KUrDadAT9VqZKSIWkCIgDg+QZXCc4xUWeFDG0hNP7zssfYyD33DoqcOchI+kqrrW+3K5+F8mNFZvzPU6hsjQ8Y/ZKPicmxY2ncqAr2JuuBNpUeqW4kl/1Pt0dYyMs7phaMO1CnvxfQlFGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCILdysV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCILdysV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FF4C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752305393;
	bh=NlGAI+f6DuZoq/0OmoUEn1iPYJmURLtRzRIVgdLmMfc=;
	h=To:Subject:From:Date:From;
	b=pCILdysVTxo6crViULlm09EFjS6h2haqTY0MANJlMoaMRG6nbjvHQdPuEz/uxsKwS
	 nsuzIFg8fDscEL2LuxwPl4fzK8Vf9C9SIPBffcz1WJ3uY96MorgriK4hfPVIU/Wjj3
	 BRLA+DEfoM7qdBx4VdGfzApKxIlqQr0E5ds8b1tf44eTbCC3V9aObYvJcciCn0o0wB
	 onZAVA/HhhlpP7JALCAVhUU/uwQT6cT66ptzui978jnGZPVOaL8An8anGm/JhwkY01
	 YGBKniWsZBWOhK4CxGbqOfL2uZ6fDhKPRQJrF84P77R8Oals4DJgb2Jx01L8HleNEB
	 Erszr/27lPe4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937B8C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175230539358.32758.6321552436841030466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a411ee8bd45e653c553e628f0f261b2731cd5260aa16009c4f75d6ecf919a68
Date: Sat, 12 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752305393
