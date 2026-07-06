Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5B7433BDC
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 16:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783355914; cv=none; b=I5iLWgQrJ8rXkqijg3N6Ui69LmA3VuQHIi16lIypbY1shEGAhzhI8STdq4pPxGsfu9V4FOxZErp3LKO/wMaLd95Fm9/EjzGDLLwwmroXvABbU4bL/g/AejpvAamfBMaDGboT3FgonnugPYMYqdgOOFw5PyOdMx95H6PTEUxkKlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783355914; c=relaxed/simple;
	bh=6HX1WmkVhxiawM05IvYrU8tFMLRbJ/U/qSbsA1nEwgk=;
	h=To:Subject:From:Message-Id:Date; b=jS+2CLTPGV3kP3yz2MujhKj1WVzIDJsRVYzL6K9qYnjYf6nGQScnvGX+gb8cZJ0d59/+j5aPEwEdu/ZJx9u3WqnEelQkSRlzXMt+3CmbSfVcJxPVVkeCkc+5oqZ7Bl31Ge+cz9s0f7ShONlJ9jL4eTf0JG8THA0s01CWl9kG83M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHYw2ozF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHYw2ozF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C99C4C2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783355913;
	bh=6HX1WmkVhxiawM05IvYrU8tFMLRbJ/U/qSbsA1nEwgk=;
	h=To:Subject:From:Date:From;
	b=mHYw2ozFqpWplplQRJtzUe84aW6wfT3dsuOD0OLvVo92ZFhoDk+5UihPuJzEOvJbm
	 vGAnYDwB4H5cFvRk4nO36CBvjoy0gmIVYGgPlFGuYkn+c9gNj96esl2Tx6kHP1y4ZN
	 wbsYWQNgDkDboEUepSA1BAr/cNO5hHR44YaVspMCCH7rzM0sA6OC6I5VwzFURxFq6A
	 yEVs1rqJl4rIFArD1jmtXZSjjpoqdsnvlE18/kL57oH1dH3nbctOlTXybkAmAQ4LE4
	 CnmtFYeg4YF99zhoEYEKls9dyOJp228WBp4WtrDB0XQ+KthWOxb1wYeMH16NM4U1X3
	 tvCkDzr60hiTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95D2C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 16:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178335591368.1236.7413853625874209818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac4fc4807f69a8855fa1d2e5e3f7271de51178a69a482f7f1f55f194d42badcf
Date: Mon, 06 Jul 2026 16:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783355913
