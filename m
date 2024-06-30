Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B7842594
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 05:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719725663; cv=none; b=bQnLSvKOCdK2+G6dpGzQH79uUFe0AUyU0Vszq3AAASA9wDjKau7XuIsfZOQOm4C3tOFmu0EXYzR9QlAFnneV6TFEdY7W32SitIvhWGB9XeK6IbApPxAyeU733Vdf6J8r6vWa3FikRR1lgZaoIGf5oOXdZph9O/QB0+EkvJQLFE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719725663; c=relaxed/simple;
	bh=AXPyV0IRKrvw7g1GYVyd696HBWwiagogSfqGYFFHTRc=;
	h=To:Subject:From:Message-Id:Date; b=jzpUEFFAbXJDmyABgNCiHeHOROlAOshBr85OMa7/PPhrH9xl2exk9z/H7UuzE4e5M/0B0TQoHJR2kIO/tTH1J+z3d9gnbcUmr8OfCj0r2LiKIPoDeAHqc85FPTxtrEMHvR+JO9b+r34scllzJeplIn3WhRO54Amw8NG5YU650kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCsIbrMf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCsIbrMf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED4EC32781
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 05:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719725662;
	bh=AXPyV0IRKrvw7g1GYVyd696HBWwiagogSfqGYFFHTRc=;
	h=To:Subject:From:Date:From;
	b=YCsIbrMf6TSYSs7o7nYxiIDa3lS22/pQ2A95d/zvc2ZBO7JGbKSh+EIi13p1Wh4Hx
	 0jwlmnLvpDVJb9/2eo5gKTyEIBj+q2YhBCuPNMcjuxjbuKJOCM/5KejSHM3DOh34az
	 NIedvSuOl11sBkt6JArclunaNdzfwhFH8SN80JcjOZmyStwnTtO5CsbfvNJGTEycid
	 36JLbIwUAkYM1NbgCRi65hp1+krIXRxT2SQA2LZhZK8KAP7wqU1YAAavNXEsQat+dz
	 CiLpaC3D5LPhISHDKurWr5VJTaeXVIslCMC1rTlaspoKuaRG85TpVJfjDUq4/TB6n4
	 oYNrAGE1436cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7FE9C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 05:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171972566279.4268.12298909621485621845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a160295e6f27c317eda2179786f8e878b065c087e80e89b8a4124dde9da1d74f
Date: Sun, 30 Jun 2024 05:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719725662
