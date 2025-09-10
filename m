Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FBD21B9C5
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757518194; cv=none; b=QUzkfpVeJ+1ltpWQ17zTtM3NPE7w1h/whfhbZQfDaQsJ4xndeMZiep67MvyO4OXrlCejjMHPsT1zCtinJVgZPm5W0nAQER+bzmmun2fkjGUC1WytEQq6Ev5mz+pvKm7NgbY+oUTNz3hC9ggZJBNqUF3fG2Z/EKELP9fxOAtm6pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757518194; c=relaxed/simple;
	bh=M0T3GCBGdqd4nypvdDLolUds/PczuDrdNsr/rH6UrVQ=;
	h=To:Subject:From:Message-Id:Date; b=XOToiS8+1rDMPGALfEpUofv4ROCL8GW8VdUS64hFOR7rdbeJrerdnVR279m9RnE4ixpkidkNddVzzalX7EjXjq8pOtm5ykj1EQZqQbpSVgggKcx10oxPZnV1iRwjMluM/kLwq/QcjcOHsHvTYHgGomrJBRnvWXHSNhV21zN4/e0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxk65XVM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxk65XVM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49F6C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757518193;
	bh=M0T3GCBGdqd4nypvdDLolUds/PczuDrdNsr/rH6UrVQ=;
	h=To:Subject:From:Date:From;
	b=hxk65XVMUf2rfojOowwbu/E6Q0iJ/WxV21OnUrhXEFSDkLDsmaY3dTlb0hjGetEXi
	 HW8zQTuDAUkQPdGjeN/A1+/UDH1CK+ydX4nOgevRRfLfelPmgV469GtVwMtElmZUJw
	 0YxplH7ynzuxiA34JsbyMCo10e4oLqdfylTg/EeUQVhRULWCZkaC5fQrA3Ij3SkcMz
	 K1vYB6uHoDvy2R0uTq0srBodHTtK2jHIwueJoUeRF3ecNuT2a6etySxK04SxYzUYFE
	 IcJNbbIgZM2cyed0lNpFiDlXKSEq8/XF4VG4YvK4MEDywvUGNp2CrG885WYbFg0hbl
	 OQOgKFVAYa6EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940E6CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175751819359.21655.16577798710341854181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e93064e6bc57af057ad725b542f4fe9c809e7c381ace169b75c3d0583b0bd0d
Date: Wed, 10 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757518193
