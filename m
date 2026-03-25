Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189C822D7B9
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774452894; cv=none; b=FpWx1SvHUdbDmsvbcZm4MhXZtbNtSfc+BJKkq/+5N65FzYgjsgla2Z+2c2u4sNKwA+1WyS6MR515V0l9SP+Jfsk/Fsb05VWcfAuZsclXfHOxiSb2PAslUgF3O9LFbD0sbNpnHDEnzbzgiInhUJs0JTN0fjHYJBTQ52mEGzXkQno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774452894; c=relaxed/simple;
	bh=/qRxhji+dHidzyGta3Pt5e4TX0fJ2/H0RoPz+0xFbKI=;
	h=To:Subject:From:Message-Id:Date; b=YNzFVpqzRPT7fNwA4qL0vo6ZdkM5j9ChaWFslX52RK6hGTQsdNPGP5ucYqFVdnaiFYLoFyb/zZ0+9vAoWml2gl/SVOhIh+hgpKO/HPrzSiqKRmSqevtnNfE/Q1arZZhzy7TeIciQGW0JCkJAZfBZVuazfRIgrKThuM0QaQuLaVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TseOmNMz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TseOmNMz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C6FC19423
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774452893;
	bh=/qRxhji+dHidzyGta3Pt5e4TX0fJ2/H0RoPz+0xFbKI=;
	h=To:Subject:From:Date:From;
	b=TseOmNMz48lQo+mAC41xqxdwvteCV9dr1hwtcZDZw32G5fKnRinjO5HjXpPfzevQ/
	 eeTwnJBvSOommJamp5NqENLjKgrvnVRZL4T8cf4SVsw0BCaw/IzDGiW/G3FXjkpvYC
	 8bovo5atw/H/V5rXkcYXdAUnBiILEtL+u4uy7ZuuQUlVL3a8+0SUEeeCQfSICIrF67
	 I5YAmoOz/IeBdLre24iUJyecATIQKnvKaMe5SYbXzmPpi0s7Vvc/kv2vjuqoXMIZzV
	 d4/dJiLWH76R07mMD7kHFvkdZMg2plybcDN/LCt8xipTioRpBmAGBwIcvvZ4xQb3dX
	 cozb81iZb1f/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E1F109C02F
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177445289361.405.12128964899155930684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8365a2cb181ad31c32efd158b770ac4f6c920bd5876ad8e0ab543ecda8f34d7
Date: Wed, 25 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774452893
