Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDC04A33F3
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 13:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782999514; cv=none; b=eOyfihKjSgTfXp/PE42mko4wh2BZiKSX+camaE78GqHweb2F8O+MP4cy5f/uCHQpvw0nuPIQ4sC5pkdyUjZ8+lo3BpF3Mam48biCYXTN0r1g6C8gYzFCttvMgu8aBHIDVOzesctQPrSTYKRel5WdQd3Cy08CNDtPTgHJlJ2mCfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782999514; c=relaxed/simple;
	bh=sf9URDW07elVQCx+LL2jWkSMw1FQiMKoq8h2pG/Idbg=;
	h=To:Subject:From:Message-Id:Date; b=PwsDywpSW0so2ApLUvfJn6j87yratTOpp9mgknAbWKrYCUKHxCeLIvkWqfI3SUgeIdh7eBynbxhdSrofDEhQC5L+3sXudv5OVtbjJpff+TqmetoSnPp7MqCBxQNwU1HuMqOx+jy5InUwkB7te0U8G//RurWHEguThVkb5LX+idk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ta7obxDK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ta7obxDK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1111C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782999513;
	bh=sf9URDW07elVQCx+LL2jWkSMw1FQiMKoq8h2pG/Idbg=;
	h=To:Subject:From:Date:From;
	b=Ta7obxDKGEgGdt7j6FgvJBCKaiME/ZdwYE/ivdyCIttawbyOmhBipdDUCVdybJ+RN
	 ik8M4cjVqHBcqGOSnftnXHD1m7h+kiZWbUjREFRNxJyz2hfG25dFYj/dgyGYhj0m7+
	 TVEvhWVPvjUcR52P4UW74XAs00LlJg9/ppMMBoaf6lIgE5L1VToAxFhvrVfV5WB9qT
	 FKBtzNGlwyVHDlE5owbcrWuFQaPk71fmfLHbt5djOToRDlklLUa+YhPc7Nrc4dHF3x
	 JWrbVA8jpYfFDXPEzI+rf6l9B8Ev6JR0qqahv6C/UA3k5qA1kpttYoyOpphVqxC4gE
	 MsFsgF1dcObNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9304C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 13:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178299951368.1540.3174159248752973634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 677504af48034ec0e88bb171d41bf4c7f1a80b0245a095fd1d80a7f5c9d92b90
Date: Thu, 02 Jul 2026 13:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782999513
