Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DE31171C
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729781754; cv=none; b=FtUnewno+0/UgD/9hjFI0PPuExYxEvgi9KiELBuvjnjqOf/T76x2G5bJS5EfDadznmdrVAPcyJahNLH73p6iUUxg5PSBFdXFBryJp1OsLLce9NR07N1nGACpoDD7ds7SpU+wHofNr04LNMrxMOVjkP/dw2ash091EM4RaWzqJB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729781754; c=relaxed/simple;
	bh=SggP+UCauSw80nyFgAAhi6ot2gVExTVBbgYzEXd8FUk=;
	h=To:Subject:From:Message-Id:Date; b=ejORkSsOADz3m//SxBn/TfmQ4ugGhZGZGs7T29wr/Uqi/D2DYzN70g7T0nSeA+HvMRuVD1bOJq5z62AiEpVWAbVG/T79F2loub8ibBwbGpIaz7ebnLNPzGg/tlmdZft4pPfko/RLpbgh6wzSRIVdzc54AXcp7Ro2Oq+v8WBr1oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkX3Mizy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkX3Mizy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6DEC4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729781753;
	bh=SggP+UCauSw80nyFgAAhi6ot2gVExTVBbgYzEXd8FUk=;
	h=To:Subject:From:Date:From;
	b=QkX3MizycODlIP3HktnDke977/FgKhbLFGtAc53gkthL9PH+dM07mJQWZGIK3XpgU
	 R+fnnKMo80WBgzuuf1qGfzANs/DW2iBEuJT8QOlKapGunBg+/bsNkY4w9SCgAtKIR2
	 81JeRepayzNI13oTFw3MXDKREzzNdMTpaOR5TWLSYoxdR0xEUWqXG2QtZ7PITZVkcR
	 L5/PdXXP0KOs1qdsthpHVarevvZoJNk5nxDf9BQyKlVWr+4hThMRcsltIHSse4PHoo
	 jHFu2399TpFtRrZ7MzYT+5cMdjLDUf6VJ5D0RG9gGo1JtwBB9gzSJV2v4U6SVBvidg
	 wUeBQlkAaUcsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E07CE8E83
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172978175373.13573.7009520518468737006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5efa5775f4f7502c549b77890e141a311fdf12164083d7813643ce6200fd0667
Date: Thu, 24 Oct 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729781753
