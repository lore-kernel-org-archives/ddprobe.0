Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376C71885B8
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742792394; cv=none; b=CXsAVi1eS2iAGuaYuoPSlPHBiRAX9iBfUCxyN6313xipOrmp6SSd3X8M0D/71e+CK9SnYP+frvYWW+SLvgH2g0tiKbdCDwczKQvwZVBSMfN1hXVOKfkJDmrbA/iRSCLBmQssJbSm014Ikxlif5HPPnmNp/15j/s9y9YWJQFTdEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742792394; c=relaxed/simple;
	bh=rw2JIXV6E7SOxo2mNc9pMyeqf/oyZmSBkpPBHYVeb8Q=;
	h=To:Subject:From:Message-Id:Date; b=J5dLdsmmt26snLZpLMgejTjmkNaYvFfCIKpmARtx5PVx+cr3LzCxIbQtMUru+LC6jLLitcpvezMIDTREM/+9E6n0s9n9yXpQWCvYXJp2XolNc2sgxCDpL92ArcEFnR9+X1o8b/ijf3uJs953716t6aWVCHvicI7/12QCV4mKsJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JmSW9X9d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmSW9X9d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B999BC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742792393;
	bh=rw2JIXV6E7SOxo2mNc9pMyeqf/oyZmSBkpPBHYVeb8Q=;
	h=To:Subject:From:Date:From;
	b=JmSW9X9dJN+7vItUR5qWnoZM1Jrd9y9LDL1Hlul3Y5XtVPwX9TRd4cK2veHFehAPH
	 OAtpPDIMzRPM2gnNjXJVGgyDLPXd/p/e1pFb6e4mXYgcgA3bNB1V757rKSV4juJUMf
	 rpy/FlCrmfvtNzuv8dF8AG5pM36UxXKv3MEVVFVLq1m4ngV4zBzszQD0SkYWbrb39h
	 Z/XrjrjLMz7PKWYlzMvbnysJr0ZFYl/iALGH5qaA7ej59jK8W22He4Rr4mqfvxGAKm
	 hm+8Z7uxPM2BMdzNGKP1t2taEkS58T+k7XiPySjfGoVnr15n40FrOhuY09wSfI2ofD
	 Dol0j3BtN8iWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A185EC36001
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174279239364.6274.16477015566755658855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50d4c323e23ba6a4ec6255644bc33684cb915962b4507b1241de17a53d52061b
Date: Mon, 24 Mar 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742792393
