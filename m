Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4844C3E0758
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792402834; cv=none; b=jsPw1gLEbcZRVhy9jisWblg21RbkPibkWg4ZnSMiKGNb4ew7YtW0sVpd4MkIdsSXGvD3/V8MrJecRUZHyd+P/T03/3L+ATLHe+Jzm02HuRRE0TMQCr/9I4kWVzn0mj/miHjZzbEnqNF+RqGViCGCar0yjoUQHjkm4Qoatrki2fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792402834; c=relaxed/simple;
	bh=psZ4e0lkRqR7GkXJUTPqodcru05AqKY57A2m7oWV89A=;
	h=To:Subject:From:Message-Id:Date; b=ZlOKZ9pP6NuuybOhPhJOPUkQEWoIc+ZkVzLpcvx3/fl/XToRZKI9xLyJtwnXbp3TmE6rpieE+9pOOAC+beYSgCvUcVZHxe6d/aUd0utIKM9qliPxlLiSCecwlgn4V+ZO2bW18YTVn2fIXqKPBlGhxnns2FE20Rc6yLZC0OochHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zl4MgrpQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zl4MgrpQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC217C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792402833;
	bh=psZ4e0lkRqR7GkXJUTPqodcru05AqKY57A2m7oWV89A=;
	h=To:Subject:From:Date:From;
	b=Zl4MgrpQw+eMJw3YDF7I+HNNTxIoVh/0bXogUiZlzTGxZ7/OgCbeiQ76gmtzQ98i8
	 gLAOpcesUuLe+qaO41UBmI37F9REWsqyGExFi2tB5k0lItDj05r1r5qV4m7xZx9eqh
	 m1x0i4/qFRahIztJ0V9UHVQuLIoW/W/oWKYrIYYQHmrKLOKgnX19mZUMCzwW/uqDyo
	 93ZzIUSb0cSrGvu8sc76m7s+u7yfo5IrEq+x7qjitsYXD3075obn/gI1x/UlgGpPwI
	 FgnnH5kEKcxWpW4/rDtjZKMoz9rt9cV9J3qa+Uwv3I07Drh1KWmhBWhOhwz9u20Py7
	 R2Q3bCK8Hu/pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B983DCCF2DA
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179240283374.32723.12582949368002984732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1e97281bce43b4f2893a5e0eab8bae336aae6092856fbc5ef3a7f2d62c0e29f
Date: Mon, 19 Oct 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792402833
