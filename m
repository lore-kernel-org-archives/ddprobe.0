Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0A72264C6
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757748594; cv=none; b=EqtJSimLe71yi2mxqnwOdRAj4pTHe0BbRl6l7agvU5hJ2xrewlmL+aBvpLkCHrt5XTCI7766Ejuc+DrhB0vAvoJmBZXzn1BcAivkxK9y3RQiyP7IIjhHlsaEXANMiJx59Fozgl4903vGemGpwoAzqYp/rm86biq7UB+M4TaXRIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757748594; c=relaxed/simple;
	bh=KKNVW7SqRLinZ/y9Dfy5iAVhwsG8PkZK4bKMEwzBY6U=;
	h=To:Subject:From:Message-Id:Date; b=pLF2Jr+0SSAfFjgoQGby4Ngz0fR5Nkp8pzxV1A5LnXdxFqai8szDpULkFhFHBera6X3+MqmGTZdBSQ2TOmYlUfdr9OAzgCcBo1sOrqBK0YWIH3DWkaiD0+xCx4gMEu47Aa0LPgD3WjfzdHSNxrvoqS0bKvRAqDouFt3goJdOdmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uo/Yqnqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uo/Yqnqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ED3C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757748593;
	bh=KKNVW7SqRLinZ/y9Dfy5iAVhwsG8PkZK4bKMEwzBY6U=;
	h=To:Subject:From:Date:From;
	b=uo/YqnqzVXdgI+0W2vGy+gCpRCL1DhK1tAsK9hm8Iys2WoMjNtLeFw7DZiPpW0XfY
	 vX83FsbYUBRhv+7CVJI4xiSED9VR1oVoWRwj2k8llABl/60JzWuKa5uXW7ByOoiYLt
	 visCgUNkdrAsCLSXNsTQ3nmlO5L9Sl7qNmyLHPD5TGiMirxhuNz8af3o2nWid9W+YU
	 VQqUJqBG9abbvNHOtBil1Cz86fQclROVgSNvv7OlPvxbz1dMJg5e8FVEdH5T/DqjvP
	 ri6UtDWLezd2Ih/dX2enLXn7Be/oXoB44LjLa1b7aG3VbOeHbB9+HGXWLeba31kbfu
	 M4oTs1Fm7tLBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F56CCAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175774859357.2670.13255412324313532042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c32b73fa5f7519c9158e7d67f59179b0779d4c28f465b6a5e738d230275e815f
Date: Sat, 13 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757748593
