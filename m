Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8540282FB
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728636353; cv=none; b=Ux0vY6/BwtjG731EhFHO+gMs96hVygbg43Nb3nQCMo8SjzueE97ZF8MoFihcM0Pck8GMztd5YZkZQSUbvjKvGI3IxQNkxxcT1dmT2gl6DGRiTiP0oKScCx2S66wZoxcGNKIhtCuGUOQr+tUWMDP5yceBD602qedAnia47eIsm7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728636353; c=relaxed/simple;
	bh=FuqCo8eJc/AlXjud8YRzssCcjKO+Iddcz0KBwDSac50=;
	h=To:Subject:From:Message-Id:Date; b=qAzRAQ7w1MnACzsaQ3qKVuqyWSG6qsHyYy0pddJ/1evzMKGD5SG3iquWXIRGjokTPZmnFmNMDWgtIbS101dAJVR5nbqq5rtiT7gEio/6t/h8oc/UKzp742ADe6qlZxMfUKWAV+Vp3c3jOYsEN/GabuW84LQPDQZ0SFYJK7FBdxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5DcARCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5DcARCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95E6C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728636353;
	bh=FuqCo8eJc/AlXjud8YRzssCcjKO+Iddcz0KBwDSac50=;
	h=To:Subject:From:Date:From;
	b=k5DcARCgDlC+axusiI0jpGGbG1Ft54+pxiM6xgQM5QaRSRruA/6/Ag0wVoIvfH2D0
	 PcBmg0Xg16X5uxJTEFSV6IDwbZuKSzRibCz97QMxvRymF6bqeEvtV/xcV56Aj8+N7H
	 7gMxD1DHNCT+jzwvIkxMwzCSWZc9cViG+Evz+oA1n4duavRwVrXP58+/ilTDT/rTce
	 wzbRUl2J17co3WEDe9ekwq7hU8YbOcBZ/OyCT7rfWS/kQ2YkMuZGXz5W81WT4tCbhk
	 VgmmToGgDe3+ghX/kk3+W76agX+tbrGokajXtdBI81vDrZ8ptRh3xoZEMVcQtbQ+ly
	 am0Kbi6MtWKGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0BFCFD2E0
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172863635362.13069.4985106001398042457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6647dc51ce3b6ef0a6d2688971a6fbb459fba5e54d394d3a00dfc0083207a3d
Date: Fri, 11 Oct 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728636353
