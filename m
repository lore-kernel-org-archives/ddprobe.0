Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107341D5ADE
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755002994; cv=none; b=C+Pctq6Mxbq609RqtgzI3cWajdeDpf7HdindyE8TdV1fAFdhF9v+Y/gKGvsB0dNX15QumH6J+YzEbaHXooguVLItE68bJIEIg9zybedDVC/eUd+2CkqJgsEFELhNfSPO6bqvod1nuNkN1rOHcbIRqwPieMO2eSxbRqRO5hNmFbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755002994; c=relaxed/simple;
	bh=YnaGliez6MuHpuHg3aDI5OK3T3nXMH3pfe1mcn6M6sQ=;
	h=To:Subject:From:Message-Id:Date; b=qtrSdqCOuHvccsXuXMFpmDluurt2LQuHF0X85eJtlj3KKwV8MAmDsmAH9c7VSNGWEJrAtXqTftQE5NZqBIT9AQkRxs3J9Vk7tzlvFgLVJbuQssK9Tn6m523YKTU8+XUH3F+veIXJL0gRlnxbUT3AKTzLrjM5NYyrXuDhlGMU9O4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CEQRBjyx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CEQRBjyx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB20C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755002993;
	bh=YnaGliez6MuHpuHg3aDI5OK3T3nXMH3pfe1mcn6M6sQ=;
	h=To:Subject:From:Date:From;
	b=CEQRBjyxLbWJXc6qizIuCQ6aMCGGhth08Q+GTms1V6nDkjFw/4+8Rk1F8iLJZGZeT
	 Z2dhPYFdtz4LGG5YEiygBMN8bN/Zs0SoagozOjV8/bYE/rvwXj4Xy/cBjeCg9nCvi9
	 oMi5+8J6iahjeF5oiPwFeVTDYSVWic82RbDtYA+yxc+DTyei3n4hvRqu4MbEKwbcg1
	 TowULhgerywDqoW2PeO2ssEeSXx7IE7jxFlL4+XTN+Zo3MUmadEQ0AvkC2JH2zbg0W
	 eQolHDTgRkvPxGX1gJWloTIgT+7eD8FhCBANV3MZML4ssL5XmgwvBVUQ+mZI9HkE2K
	 uMnf3h6r0sUvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9A0C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175500299358.18076.9229986933267291654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d71719b0516cbaca82fd63cdc2cbd9519b9cbeadf01e2f8cc2b4c2f9f5a25428
Date: Tue, 12 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755002993
