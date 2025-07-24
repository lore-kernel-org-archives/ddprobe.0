Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F52F1B4F0A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753379394; cv=none; b=AcrCd6hahPYFSv4M6X/WlTRkwmDuh0pQdCGpYksOuopisEd14Isb8Ho6u1LxQnsc2jGDXO61K9VcGpymunJb5wSUxdx0Kvh1un4XLEoctUDTZtPL8DfGRqKV9C/iAG4DmssZxHESxdt19EguXZLklQ1XzMA89TaFh2teGLpYO7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753379394; c=relaxed/simple;
	bh=rU5AyDFe8aUKtObZZUp6mKRqK4HZGVLJ2xHWyxoCSdg=;
	h=To:Subject:From:Message-Id:Date; b=mer8OcVZ+ismpd5fFH/L8HLlvMTJrk7BS3e7rF2UTNLarwKcUyanRIYx+cTOehmpwOOjwJToNj46cCQDIvngvua+Pyu5OkV+Nn26Hwc7RHaTSuEio+zrQ+dDmyYXSKsVqRdPQC5UZe5YgoE58rYPyTF4irIaYPU+RZwXClVSckc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JwswbV56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwswbV56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A132EC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753379393;
	bh=rU5AyDFe8aUKtObZZUp6mKRqK4HZGVLJ2xHWyxoCSdg=;
	h=To:Subject:From:Date:From;
	b=JwswbV56TCoUpFp5oE3woJ73RhL8vcTgTD+Dk86oRXGoXtGKYFWHT2/Vn1qvHoL8c
	 wH7Ymw4GGrw3pFI7xRSeC02QjqA27JP6tV5u93pPk80aVpZZeeHxWOWNvw8i3YG/XV
	 AiGAykYU+f6bHGFgUsNadladFIjjmv/7SUbfKLr0y47x/SafueDsVSy+wpDEHGZ2op
	 +FFIfGmm0IDMrQ7rnPkgiD+WV/gLqjcmncQQrgUD0QIlwqCTQYOX4jbIkUyjs00Lop
	 EuhO7wMsHnhOJYa3IFdtHV3Rxz0tcytnUQ0H61cAx9F6TQoegV/sJ0Wt1GAyuyZCZY
	 MF4v1KD2906GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAF5C87FC5
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175337939357.25540.14559968154489259784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b291835dd5ab53aa60bfc1cb8958f08ac1d07112e9773cc0959e1c04a945c10
Date: Thu, 24 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753379393
