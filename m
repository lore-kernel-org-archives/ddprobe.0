Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB78329367
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 01:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782349654; cv=none; b=gNFu6RBYgbL9PH8DlWqdv/xc8hWUShl9wXUuiwb6rLIJGgMRnJZBcWGuV3/iEjN/PtMl06XtL0tN+OZ9orUqPzDtcuG/ODctluHD6CAbrFs5yArZjXDxLoh5DlG2jr7iMSvxxzpOZEtqv10fhf+CpmPtN9hlIFnE6O4l3En+4ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782349654; c=relaxed/simple;
	bh=+wtIPPgtHn6XvzYVO39EDcyLstuWKMZkwINtbcCVtDQ=;
	h=To:Subject:From:Message-Id:Date; b=I0s8GkwV7/B1kAiv28IicHlacYt6gCv8HdpmrRvkyEFm4Gvk1h9UCnbD7vtlVCXTgm7sFHR/5JU8gKA2uvAHgA7TXO8dtlwMSTAL2MJ50WmOEzrJ/54Mg82kurgMFXubWWq6Bb9Sb0Mh9eYLall3ElKmxdDZvhsHrB1zl2ODEPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D54TkwsZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D54TkwsZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9DE9C19425
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782349653;
	bh=+wtIPPgtHn6XvzYVO39EDcyLstuWKMZkwINtbcCVtDQ=;
	h=To:Subject:From:Date:From;
	b=D54TkwsZsyZHilZb6lsOQ9GkOVUJQ02dWNXMnn2IUoXJL/m93dnPprwe0PZNPhZMU
	 pGqb+0OnSBEqf5RZ35ziSU5VFY7CcxY13h2F6tEnHaZfvEUbb9CUeyXbtUUd5F9WVt
	 Y56i9rl2L3ucExe+yjQRBiIJSVQTpgnnbu4pDM8WfmG8UGD004K7QXWzblsINwbsZj
	 K4y+nUtfLZRl/3HICpVyGMmw2JUobD6CJRwrFdMTm9csk69jY21kAO6L7JTmsi9W+Z
	 5r8jB6ONfDd43YH6JBZT+Nutul6ffjzj9JIktQ3kjV2JXNYvNngV8KwA3azfgBL2e1
	 TSsLF+4yAIhlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBF1CDB47C
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178234965369.18669.1986794150098721646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0652bca9a882bd26af3b5e74ce2e449f2a870ad01a6e1ecd141ee02a291c251d
Date: Thu, 25 Jun 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782349653
