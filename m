Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2EC07F
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 00:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710376098; cv=none; b=uOkLop1zgVQkDXIH4n7QNoWX2KZWHjqcpkKcxZVbLKWim0O3rvSFn+tgVlPyKaYBzlFFE+FNTHxjR4iBINIeExugeVu3W4mFf0wL6DyAP+5V4WWRynej8tNHdG+PL53a+MkJJLTAYajmOE4cMeLNOq4oBdVZWqXTmS55ijJ+7fY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710376098; c=relaxed/simple;
	bh=7JMiMfMrtEpXsSNjfyR+sg/HztpwT0+KWq/6xArRasg=;
	h=To:Subject:From:Message-Id:Date; b=N5fMUQrHZF75pSo2Lk4g6zAiyU1oCJaxbakrCoK6Zp2Qm5tDTLX0jMjlBZGupZ8PzbV5fZ/xOClG4B8E02vmSY+Q1qcxhB4n9qk4MX3EqEDD8uCbHgHlqbMwlLipc10VQrd0+QCobb/+z9XmJuqs7QD+Oq5kag74ANbDVvM0i+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tir689XM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tir689XM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80AE5C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710376097;
	bh=7JMiMfMrtEpXsSNjfyR+sg/HztpwT0+KWq/6xArRasg=;
	h=To:Subject:From:Date:From;
	b=Tir689XM9gIg1E8XY65NLit8L7eQz3TBN0KwlxrPQuvOBtAtSef5jzMTOfx9Skd/u
	 nzj1fkd2xzPzZAkNa+cxQff3Yupg2Z8TJmiltvMK1V+Br+ZFRAsHVlke3MYqPnRXNZ
	 NdyVwZi4EcKhbi5k+lEXzNfgG5AzC/tV32WLiMEfi2icql789c3u+oncZyRvMoS9hl
	 1g12GCr47+gXIIqT8vWwDKD/ypGXBvtIophvSMnuDlg+9PUs3lwFpp7h7uMaQ2tr+u
	 KoAG4Max8bnnyDTKa8PK2oZkgl1NTolokG4ry66ElbO5/pddMpkFum9NPKE+55J9e+
	 RRZVFzvrZO6bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63891C54E66
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171037609637.17924.14355994414441113010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54ab634f7dc032c97b4dca169abea6a972fb88b4b94ee2b6e8e161311d569868
Date: Thu, 14 Mar 2024 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710376096
