Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254C8215075
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767259434; cv=none; b=O3IzSa25jqJ++RMMcucy7g0Gda9j7UZAMEs4/uqmXDnQxll6/OYUGg4fqXSBSEJ5fYu4Mqs+DiEPLn0qMtcW2LlL0A9sF7Y0F2lReCt5KdTR6TrvmH6cHVfVFbmfOn3ACZEVbLKC3D1vLLmpaxtznMnCIJl+iT2BJ26Yj7fooYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767259434; c=relaxed/simple;
	bh=EawGQVaTu1gegrQgG1kFTM7TZi5gLRPG3h9IQB0IqfU=;
	h=To:Subject:From:Message-Id:Date; b=riqTNF3xNU80qP/OHcvr/dGf38z5zS7hI6hrAs8Z79R7OqlRXXZtuyka5PXwB9NkibqUQRwHW7UADKdSd8vMP4u1bDg/sKQMs+vx2PdFVR9mSUqmDR6sDtmpdpwoKMLhxlvW/D3DbSy73ejD8M1TjSsQeFIsshuBgMAQtbSH7iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pB6IFUHo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pB6IFUHo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F74C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767259433;
	bh=EawGQVaTu1gegrQgG1kFTM7TZi5gLRPG3h9IQB0IqfU=;
	h=To:Subject:From:Date:From;
	b=pB6IFUHoPFsECGlDn5HvytYa43MhEzU1DUmy2YTTdsljzNAAeAU/3KSca3D5QiymB
	 AL+obajSOaxyaDSEBYc980f4Jtt6DBlJ7uH38iZHg747Y/VcPpflln1p/4r6lktIHD
	 kTlgcNKP98TYEXVDvIDdwaLUArWrXV2AOLm6xibXXLN9IMFDll/MD1KnEJ80hl7uC/
	 MTX5Z3GeYsPdCryuQk8++sPT7P/lt0dEp12vbpQLaTl1CD7fR5h8tFk61YbwNXxBrw
	 SicZVSojyenSeTEQls29upF59BR69xoEa0tNFsvfiWdC5iAyrP9BxmT9vl5/ou3prm
	 2H6pzLprPJSUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D34EEB57D
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176725943357.19403.6935367773128816341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ffa8929937a510dae98f61c1a51a017cc4db9ac6b18f4c2ef9ad2417a113a0f
Date: Thu, 01 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767259433
