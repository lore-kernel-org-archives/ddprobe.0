Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229C83EBF29
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769929434; cv=none; b=jBIt9ZWxTVlwTqSI+dZxWTjQWF/BYJsSRnsoTmUZzpZGuxPRXXM4W3aA/GboymvW1s6EISNyT8bGjYrfBSAbShoW8YJpX0MZSu5JhEOdsjwrRA+IXZNTSOT9+XjvM9BsTZN1tRlVOzQKJeMjZJ/vVPkFBU2n2MaEqN8PJ33uqME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769929434; c=relaxed/simple;
	bh=lpe3tMf2wkPpK6jnRQN7zJFhlhkLkD6E2+uHeb6y0W4=;
	h=To:Subject:From:Message-Id:Date; b=Rv0DEczZIalXDS8+vWAGOwZPaC6RBRsmyN2NqyYjhUf/f9zwqousHzuNLW/c/C8VmNg8HRJAhQQJODivigWa1kpcz/glY2a7AFkkMSThYh268Wutlib7PsUQyeZ5DawwnmSWe0JBC/7Nw2mYtArChqPfyDxv+0rt+1BsqZ6TmAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnCdEy/p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnCdEy/p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6255C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769929433;
	bh=lpe3tMf2wkPpK6jnRQN7zJFhlhkLkD6E2+uHeb6y0W4=;
	h=To:Subject:From:Date:From;
	b=hnCdEy/pHf99fo++jWHYPm2n7A/VFpnNI7/fultetCEoTW2q4tydKbr4E1Hf9qt1W
	 5Dkia9e1F6P9O1ECiKHdvfz9bVy6y1TISMOgUisvhrfJgktDRezJsuj0FmLAA+ejSA
	 A8F7uriKISoKsz+e4d5aqNgg0D0zyhPsWHEjd2pjG0hzW6P4bw/xjD7y2rEOnKSbyB
	 VGFIPbsGPeceP8E78VD8rMMF8cn57OJawENM4763BgXPIntCuz5As4WLDNUE5Xsgfr
	 xsjuVXU3hSRIUrQ5W1+GSMDw0WJd33OJFBP/rrEVNAyw1siYIOkY5+91uA3V+ee/UW
	 EflbnY58ZU7Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9532CE7C70D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176992943357.2595.15243527284772336815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9182b623c2bc548129188ecc9fde620585c8b6efb708ba84f8c586d1816fee79
Date: Sun, 01 Feb 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769929433
