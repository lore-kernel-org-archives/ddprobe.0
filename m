Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363D646D551
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790031034; cv=none; b=l4sHYVKoDf0wrymtRtAo+dVBoMGryW6KlfTEjR6uDfMXrMv6bC5yzTY77vK42AhzOk7HOrFD8iqaI3rDxBRX14vMzUiMRd6rZHS8WnH121Qfp255X1PHtwLBIFbWjPdmMjYqqcnUFh8g5e+c6UsAx++04N7DegPA+W+Hb9ER8jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790031034; c=relaxed/simple;
	bh=3EOXIOFwPhwTrfsov3i6InunSeMBMsTX55ugUA1B/VA=;
	h=To:Subject:From:Message-Id:Date; b=ZtTPjfk8YTBwQaHmaeJ/i+m5Hka0b8HvdAmyQaOSxqsaG1UIBwxGtByY4el00cvU4idLNjJBfj+uyEX4FDyQkH3SlMD+NZw7t1gLfHqZi9qklAb4e76j52Tj+oknVUfAXXHo8Az2/ojsailoWf3cs4yg1bSsYZO1dmTOKieF0cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qi3WMhey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qi3WMhey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3CFC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790031033;
	bh=3EOXIOFwPhwTrfsov3i6InunSeMBMsTX55ugUA1B/VA=;
	h=To:Subject:From:Date:From;
	b=Qi3WMheyZ0BcrZyxou6GZ/UAgbbkmUbKkN3wAhYaJMEeFZNQpJzjpX/hjM7DMF4cS
	 DhePGj35OOzVGy67Qxt+7NToXEZaiOadJnNLl77MaEQ3ufaAfZw5exxBoaxWEBpl/8
	 O8x41JumQnKjum+e5RviYIh+BkEF5q2OfSXd7yaSW8ohfQXCajJE46RAAiQsr60NkC
	 iDMlXmwcy/m3I/4YNTMF0XGOOIbSjhD8X9JtSe37iNUTdhcscarrN+8hlboTys04MT
	 q7FBeSQceUGB4Z3ZV7C6RHGaLLqoXFz3/TTV3iVOCTjLesmO7hv8av7/tejUKF9B4U
	 c+UXmy5hCViDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23F4C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179003103370.5966.5814588768709485348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51820913873f8b30bbaf30ae30b497e6aeeb16f63dd97beced6d81685e8f9232
Date: Mon, 21 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790031033
