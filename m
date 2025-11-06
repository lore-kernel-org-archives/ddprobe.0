Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A34D3093DF
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762419594; cv=none; b=iYWI3jXi1SNFtw86Vubf8321LOUDlHxl8YGo2PKCrLeVPMtdFLvtaqH5NUkncCXJVwco5dsWWScbl1hDvjPysaVM308zMc/5gPEywl/PFfzMGa9Eu696QvBTFLEJz2MYfT955dlTKwrTRlWY2Ak+vM8GieEITEpGU4GlinJjBeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762419594; c=relaxed/simple;
	bh=02Rmd1MmZ/CZ3KRZSp4Sd+m7jRRlNIdJ2ytnMHJnX9E=;
	h=To:Subject:From:Message-Id:Date; b=mvgUx7ikIOF5X+9I0vgaak37dGGhi53a/ujH7FEtl4jP+6VuZYX1kKwT2n63ivrmpQwiKI6fxSjUro+Yv4fcH4/MV5VD83dyl/SvIvZ5hayCpEMLw8eU9dJ7FPxd4v7GJv+fSxevm299cXxAfEHbWp60kvVyWIy3U3CH/BcSOQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fU4cNCr/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fU4cNCr/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D57C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762419593;
	bh=02Rmd1MmZ/CZ3KRZSp4Sd+m7jRRlNIdJ2ytnMHJnX9E=;
	h=To:Subject:From:Date:From;
	b=fU4cNCr/HpJ2J99bgyD5XcMcPHgAwYdLGi7CeUUMuK4WJDws5aaQGf5phACADlgMA
	 w2RrG8NvVAoQcbrVZp0Q+RvEedTjnp+Ei7rnz+Rzneh3niedzYtdkG1DoTPRc4WIrs
	 N4B1PqKvLua3GehuonDxDP2nB5fBauPgYgMcQLNgC2MQoXyxkfQjUHwkDC3GpykfLr
	 xzQVQf7PPWLTEn27Sb+RqBrkLtFUX+N0v3APcerRT6mk+Ki4SWZI4u6De9rAP3nSht
	 YcIesOMdaY/TkB5Jb0kNxFe11glRTGdOpR/JzDDuUBdp+jTbZ4siKu6uCvcVO99mhq
	 KSJmPqStF6BNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96194CCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176241959360.11830.13899545131596883279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ac24830c1b45b77aa23670e50564c64677349da419b8a6354218bf9628b84bb
Date: Thu, 06 Nov 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762419593
