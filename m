Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6C21F583D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768118634; cv=none; b=k7lAeQpyPdUE2PdaRqp4ig1OdnqX9rMbxFaG99e8C4m8rQHgRxTwIkvro8jKWKJn9SL5tkL4OFn74hM42Bv1Md5T16LrX0/NG6r6UC4Y08F5V6vOqGVnvCWQSlLrs9xXd2HrSI6tRbZiM9UXANHWUnSVEqOzA+rzrZQkDITZG2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768118634; c=relaxed/simple;
	bh=ECLfrgiHM790NPunN/60jUjEUH0fmj0YEGTKYdZFTko=;
	h=To:Subject:From:Message-Id:Date; b=aOM4xQBOJ2A3FBuyiO2RF0THF+dRp4OaWgSmMg0VJDmypYhsb4yYJffxYNrXQNBc5oQHDRN0Ql+HKFo6IQ6A+iv11xeF2elakI2DpaafMr2QZ/t8VaOWR84UJ8C+OwFsbsL+07mZxlMkEknrpiMzr+EA6+95xVgcv0UoZvrKqEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/3dkAjz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/3dkAjz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CDFC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768118633;
	bh=ECLfrgiHM790NPunN/60jUjEUH0fmj0YEGTKYdZFTko=;
	h=To:Subject:From:Date:From;
	b=m/3dkAjz6stjWKXuEAwvrbQ27dxqEt5lScmzheaS/J0N5eMzolF17OkYoIDaK1nks
	 LLmj1Y1fszxZgaFMEwwlNmj89N9aHJyE4mT6i2rcP6hefx+R11gD1SkVX8zMXIk+Ik
	 HrlWwA3N9ysXtrRDG/dPZ5P1FMK+k8zuLrmRPtBsVIqW3pxXIQCQ6tMCHDzDAy7amj
	 /OrSaFqCh/noyusr4WKypATsQp88GZOYorrLassoileqFueL8FoE9G3xekvq6Z2kv8
	 i3dgQ0JR5Q5MliPdciWYLPpZdQJ3Gn8lLqo+w+80bSOwSr/SEpMzTeSCFqFWhV7zoc
	 4q3Z43tM+M+sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C88D2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176811863358.28256.16707301226530174231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a06d1584b114e12751b28580cda6164c2021cdbe2c752e657c5e8cde2e4dad53
Date: Sun, 11 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768118633
