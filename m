Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263798488
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726020354; cv=none; b=i/e4Bc0J42CdgZ7sac8lhCfd6QYukbSOzLwCv6yTEny1GItC2K1tmCCTnGd87XJy0yTBHqLmE8ZPQKfk655LmUehj4WAEMa1l2m0R8U8QcB3Dx9lGySMZ32a0cJNGDYYxBcsIar4JDpXtDKiKSmF6OdaHxisPBN76+U3t4YMicw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726020354; c=relaxed/simple;
	bh=UHVijyTF6STaCsNlk9GJka90twHKKQL+47vUjIJzOVw=;
	h=To:Subject:From:Message-Id:Date; b=qI00Cy6MsQf5J+kWo/DnZaW67N9kYCAd68wQip+l0ZhA+9Zjjws+uKUi406w6s6xB1/NICLk0JEaPFAekzE8WUCQGtwemarxqYofAVLys2TTqakOS7uuGlwEZiZ26p1ce+0vnprnhSAAgh9pVSenuCt0JHQPwh6Nzce2cDyDqLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TlWFQxIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TlWFQxIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCCBC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726020353;
	bh=UHVijyTF6STaCsNlk9GJka90twHKKQL+47vUjIJzOVw=;
	h=To:Subject:From:Date:From;
	b=TlWFQxIrGNEbz2csh7TFXKgaymKrGi7/bTjCFVpWzDtr7SEut4sK9jl8Vp+h2hitT
	 oKJuQR80HjTat56ULyklLpTzmbfbIhICR1pcSt46ajEPwqQ7WZAqwVmSQIkTYGB5Av
	 TIHPndRvJyzaDJwFP5nnG1EiZ/OPCeW8dYYBbW5rvXLTOAi7i1CqG94bluA9t7YUuv
	 0CLFovlKVO6CbHj1PR8Y63cahRWhHSP+fS80vzFSVa0VGKvzfqAuGolSblefWnI7jK
	 GxlWMEjlEB3EdDFwEcitL4xxAx97TT8Jg+G5rGjTnhno0WiTtZrHuw44UhzyrTpaR7
	 2dDjT//s5RUig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9931FEE01FA
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172602035361.1955.16636539805882565560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30d30a9271785b925ca75e42f6ca5964587bd3bfc538ac2476a1e2c8839bb377
Date: Wed, 11 Sep 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726020353
