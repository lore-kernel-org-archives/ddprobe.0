Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2036B7E0E8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769743434; cv=none; b=riinpCCr82HhJxgmaMAxtM5nTYEN3/zu+UE6rKktwvbqhtb4djJG+UxdF62RIVtPDvRJbW/jOoTMF6yqzMKK+o9Bq9EUucfx8y30fEFdKj3KuBH38foGMvWOQX+L3ruTDPShHrUPzdibHt/k3PSYPaDv9QOUw23XPpZslKKwAFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769743434; c=relaxed/simple;
	bh=7ahml2clZkLGPaXoWoONCuOYukLp4EeafDRdntpdTtw=;
	h=To:Subject:From:Message-Id:Date; b=rubeR/D726QV/NFcMDwvPXf1mZrmPwP4QB9MYNunONmzRz8I89c1vAgurU4Jlbovnq+mRrw1WzQSh2LMeIyedBeF7QeGMeEyWX0H1nEhlfm2xSfF7QOFMsf7rOAbiHWlILN18jRH8FMTcVV8jvCePIfa4tfzM6sphEmkIxGbAtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWPz9fAM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWPz9fAM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A122EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769743433;
	bh=7ahml2clZkLGPaXoWoONCuOYukLp4EeafDRdntpdTtw=;
	h=To:Subject:From:Date:From;
	b=CWPz9fAMEdpA023L+F00c8oXiRzdjAsWeDBYtOrWzAeiDYhduAvTO2PRfTJhVozwT
	 yR0P4+FAltnRJnFikIUNQyrUs/5Yd/bLf/2qJy7B8VZPuLJbxCoKeOjIRCfFeX6W4A
	 Q1Y2XsuUGAfPYMbYISyPVJfI2zosQkcWIyC2BIyiN9BNmY7UK4SriDhTCyfMPYEPBw
	 9CeTIoWsVb3QFbpvq7RU1zvIOUOmhJqGVwB5EvO6Btgkvqcm09UvpT5FK8HkDoNzE+
	 LWYfBEYTM2DV42UWtSDIf8TCFgc7dAYERV7PVnrFESE4BJAi+7VwF1SOVMG/DJrdMI
	 DvCrU5V7A/O2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FDBD73EB5
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176974343358.12212.8122304558203340094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8d80468ca83be3474557d5b5644f64ff1e6d3797694c286c5a48e85dc7d4ced
Date: Fri, 30 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769743433
