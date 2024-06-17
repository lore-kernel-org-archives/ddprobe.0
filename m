Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71D8E23A9
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 01:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718586503; cv=none; b=dQ//8hcqpLaVEqIamUfCbz8yHhmMhE+gSyOWf7Qb2MlulAje3sexOj/CfNT3oxHZk4tr+x0mN+LMidVxlF1uX4RzE+ICf4DWDkjfNsIs4HMUhlp1IDdCyiOIFLHhFln45sHc4LjN+JsAa4KzKkd4xIOege4kp+nMRbYV64FAWi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718586503; c=relaxed/simple;
	bh=AcCdBQ3+C/bSGWNrNDaZIeF81Uj5j+wk51QuhOEXmjk=;
	h=To:Subject:From:Message-Id:Date; b=I1YpYXyUokZtH0AUUmv87Ga3Vfx2Bx8WTztGFROxsSnCa+iH2rE5Wp8vro13jUoNPxsl436CbGwL/XBS5Jg/JeQGuncFTIp2MYA/VmGXwfH/Fs8MTEV0683KQHknQJoJKETdD6zj7uWlws2S3h+v0bGaWvQkvL6yhnAex3zvIPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSNBX6jY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSNBX6jY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1BC2C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 01:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718586503;
	bh=AcCdBQ3+C/bSGWNrNDaZIeF81Uj5j+wk51QuhOEXmjk=;
	h=To:Subject:From:Date:From;
	b=SSNBX6jYvG5ZEniV2xTyMGvUozlyda2qZtlO8c/yPenszcWsWG7BpSQviJljKgiKz
	 yLdXVAIWO6cxZlwG/jguq0uPIpNHzosXZS6K1Kgv7/Pg1+wFHk/VyIpqIDwewqNudx
	 nol53VspJh6qxWARMN7TiWaxmED5InBH3PI9FftR7l8UQrKln9CJ0j8UWd8T2BIEqT
	 yH68qo/MrmnZbi0Ern3Zh7hnBq/l8J7jwmEf8u0Dhu/eyiYAdWwpFLxBJignQekOYm
	 we45tYOWz74H7phXU/O5pa6+kNuqjkv5ciE+6PyWItwbFnRjkuPO/PFy8cqGXleR18
	 zB/21A+OPyLlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D991EC27C53
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 01:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171858650286.20641.18422794300463094011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c1a9140d6fef63477a53a4debe513d365db32fafd05945980a377047c9f4a66
Date: Mon, 17 Jun 2024 01:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718586502
