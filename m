Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D22E2771B
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 12:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782563314; cv=none; b=Sh4rpj6lHF6SFnnU+qGSdrKYNcFR05h5VRgTBZw3zAKCbdfklZ90GmVg+VbsBy9hvn9UAg0CG7wRCbTWm9xJSjVfyk6r1aL+7rG3XVjMRdU7VQQ9FQNAHsn0Cm/FRtGghenxS9BvTiZWIDvjmWkcjsuDgJS0yA+AKxbykhu4CRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782563314; c=relaxed/simple;
	bh=0A8qbAxAS1KYDBRymrN1OUxqKSAvNZK+5B+RPanzzuI=;
	h=To:Subject:From:Message-Id:Date; b=AhrRmdHVEODRsmXBKOdNQMo+ZiJZ1e9EAaLXfhmMy9gQp4/YuxlSeNuQJcAzRHNYc/Jyrgoy9Wib9BnKRa8i98z7mdyCQlbIJXsXgn4kNC6JdCLEC6EATzkSrKOFbyLNMD+EcWntqHPWDlAMZCK/hz70BV5uHEGO9a6EdyeAGEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBe2flM2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBe2flM2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6778C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782563313;
	bh=0A8qbAxAS1KYDBRymrN1OUxqKSAvNZK+5B+RPanzzuI=;
	h=To:Subject:From:Date:From;
	b=DBe2flM2Vh39AKa2gCQ5H2oIYisnVKFaHwZTDCWQorKKnkz1wxIEGg6rTlEOr4RIF
	 Wgkxyvz4i3uC+UycqzYVLOkfY47ryobVdUaFXx0+Wb0XvLbFfUUv/tiaA4CCF2uv/5
	 2kwZhMq6Y5uZIgs7h0InK2uc/TyYP+d2UGI3qPzyeqgKbDulInh1Xrer3llMPQhn2c
	 j746Zt925F7slF8b1bVOk2/Cr4GoBvuzfXkam1cpkfr4gFQnV8YykOe8Z7LA3uOx+D
	 fDHtIsWLwooAlTOwIf9i9fXDriMk6CQuf1+cFmW6dgK0/Bquzvz6A266OiJv/yn/u+
	 mE4lWljRklnmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCEAC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 12:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178256331369.24844.5281594322523829280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c52d855cb6857059581f3c31a9690f7e77fb5934d105de5ac2e8c8bd9f562932
Date: Sat, 27 Jun 2026 12:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782563313
