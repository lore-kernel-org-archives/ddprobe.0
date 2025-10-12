Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CA42ECD0E
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760291995; cv=none; b=AUAtRDfSVQ+9RNiFbiUU9ED2XfHFu6VX//9HImH6uYNbAYaraS1IkyvJNsbKSdkPMuWqO+HzuXzgl+Y26a4a+jbjyNF/xV+oT+V4bqVALNlfQVG7Zh+U35ramou8K2Q+Ytmr1z0m2+ox5rgSU3cxJO/Q551N/Qo5QB/mnLilXbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760291995; c=relaxed/simple;
	bh=eiLnWF+VxkzftYe0naI2WoaS7OI5ra1xsljv1LjlCys=;
	h=To:Subject:From:Message-Id:Date; b=GJoFSUe/ttSTPxNZOUiUrmhD/UjC+kBGwcXwoCF49Je+Jd+/YDsDjcHgHjH1gFUwtXhDV5YDnvdnRudQHtYxfLgxZPs9cDQokhAHiXm19dmQZu6Vjxa36ES3SnJDgWW18QH+q5Ze77190CicLg213r3C6S5fq39vpNzNmIKiwgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfPRjFBd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfPRjFBd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF11EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760291993;
	bh=eiLnWF+VxkzftYe0naI2WoaS7OI5ra1xsljv1LjlCys=;
	h=To:Subject:From:Date:From;
	b=dfPRjFBdnF8FH1Zxh2kcR6A8HgGqD95KRTa4HkWaT5U2w1/TGp/LkrdSoIDWe747o
	 nRI5oXgJ+ewj2trCFi77QnaQCZyYa3pOFZG9jJ/i8TsYJ0wmjjbgUqU5L/n65zNvMW
	 xNoFT/dmwdbdeVYAwgpca0XyobIoG/zs7heunqKsDniIS9uiGNG/yPfJfKcjP/U6U3
	 +YvW4S0FbNG+t0Dg4jFQjNIP/w0icm1rU4DH5e6D2AA4FIuyXQAmwcVQyitFkW25Yv
	 TWFqvUR88FOmr66WvJVIRZ7sF0o6qvq/5c/uRAK/OVIyb2FlBPwBoPnlNZIZKZ5Zie
	 wqTbcNGl8wPqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF11CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176029199361.13168.7178488561921150797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ed3eede2e3ec9e7db20f0d32ccfac04f32290f8b73b9b33fc654076cd22be0a
Date: Sun, 12 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760291993
