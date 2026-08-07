Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B972DF13F
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786123234; cv=none; b=X6fLgvZ4JIU6cfyeN17uspXEBToRK9yavGEPJom7AalepJWgAcFsQIUSYlmMPZUewHPGbhO9ziRtnWR/bI06cjkiZrSyDXvnCclm87macnJl2BUYPVnyHvdvBI9N5fYcxKJG4BxOfvaB4IBBI1lNMHfx3yBz6EDz5oQhW10opB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786123234; c=relaxed/simple;
	bh=YnCaDZXhk9faMldCaFgmcrS1lYRl7IPQ4f5BL2W38PQ=;
	h=To:Subject:From:Message-Id:Date; b=hOwTSiMlbII6tmy2+gL5+Hqys4yq4BpU6OMKvISqh5GYtd+PH5TLFAf5z4M78qxSc2idZbbxEOqWky6rieio3GS37mB/AS5mA09cihOFQJ6EhEa+in8D/LV+iMx+q/Uqw9S04Zlyz3CrQdZ39XLszGwItcrKrjFX6JTvtmRWTo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HXGfoLhK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HXGfoLhK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA75BC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786123233;
	bh=YnCaDZXhk9faMldCaFgmcrS1lYRl7IPQ4f5BL2W38PQ=;
	h=To:Subject:From:Date:From;
	b=HXGfoLhKFrO1Z+KTRYHPcCRf/HLJwXdaYKi4mLK40+Pn6ti1EiVQ2H/OgQ8PvHJHd
	 quwdwHRXp4WIo3OXGVha2+yENTP6SI2R0QUGlVIknzdrJvZt+L2IHgpjnYrJVTn2Mk
	 E4xqhEfnsKfJmt/YF9DdYhowBQVNfs06KKD1cBUPf4ABcnDSsfHcJhwgSPNPhGxh+T
	 pQHPnf16tZVS+IyFqMnNAtT2N1Lo6qCLuSxnmQnX+QIfnYwKvwqeNe+KzEBcbEiQ0i
	 bEWSlleLm10T0IPqKpTD4D09+UADpW+ant1c0zuZnh3s77ajNKRgFQnl7St4cGAS3P
	 YkTi8E7ckZ7OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EABC2A09B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178612323369.26750.4832183057390497222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4cda37153f15a7b46d5e6fb9721559c2e3fb33d8fd6bdfc3e59b1f4f4ee7247
Date: Fri, 07 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786123233
