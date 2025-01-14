Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22069130AC8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736865954; cv=none; b=tqIf9I/90vqTG42wtV9l1vkaqEp1kxeissye5e8/T5klj0bgmW5uB2yAgGQozCc8DbiyLUA+dcU+zoTBkevR1D1b2uickd8ZwkcZjpDMfqllyv397zXHe7lO4EH3lc1RqLCtWb2PVjIlmxKBTgSRjQSePLABT3TEUsDW2JPQNlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736865954; c=relaxed/simple;
	bh=GXNRrUSfyvLsFaUUdy3+WrfQ38/dwBVAYzCVnAqrAYY=;
	h=To:Subject:From:Message-Id:Date; b=ugdlgB2W+tQYOviCZ4DRmNPeMFVI/T7NuseywpLyNaBa+OC8zEo3adcChxciWcEM0xs9nIaxFXeis/YukjjymM28GjnraIy4cmrTG6labwCEBhuf7+5jUaVb0MmhSVMFh9IZIFb7T8bEbpP6HJUFQLQJazfR7dl5A1OFguSvMF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhjai50D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhjai50D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4421C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736865953;
	bh=GXNRrUSfyvLsFaUUdy3+WrfQ38/dwBVAYzCVnAqrAYY=;
	h=To:Subject:From:Date:From;
	b=mhjai50DdY4KKJiVXZnfZXakFdcjITGbAjjOXRDn/Pu/ITtunYm14PMYZvT6ZMdXy
	 r+IWqcnNQp/e5FtqSBmhdbi6LaMj8sFq63R5e+/ao/3t6QP+xO0WPTT95vErTXNiMN
	 kgselJ6gIUAsm7u+g9tgqXqdzS9ByISRzAXWYrEPXPBr5KRm9UGIzvNOBYFukN3AP1
	 uedt5UgkDc79vB1Ly3eeIsrVvr2LVmin+SCydR5YJGhzZOv2Fkqt+3WoI/ntjTE9zP
	 7Ndgl+o8sg029wkLG6In5JXSwVch4hqjcEGWUVCUCwK+LfQ3Cn+cD6N6VH0ImHWgOB
	 NE67p58nttzuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DB9C02183
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173686595360.11700.11273043920776867895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1f700597348667f0c0c064fc15ba63d17294fbb10d24553a58110145e2c4393
Date: Tue, 14 Jan 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736865953
