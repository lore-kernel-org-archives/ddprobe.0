Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA26280035
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 01:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783991314; cv=none; b=QGMRa4LS4D8icu717W29yOUXG+GovpbZS32zVX20aBDUOoPpxZSsJbfifF/MTzZrhPO/7fpCbxQAosPZMjvJzI1j20pr1Xt2F2KBYZVMC/4qOfDDU22EWIwQWPAtRaaroUM8nBUHIoCY+R6bXommm0b+sRtL6wg6JHuFZbIXRCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783991314; c=relaxed/simple;
	bh=U9h59lTmVcQgTkB5ufh4SNMGEn+JjIisF5PUkxAQzaY=;
	h=To:Subject:From:Message-Id:Date; b=Sckr0D9+iWQQBxgg+QrfqrdTpPK+JW903rid2skGGMH2CgDzXqkXh957e9DsD9fBMN1eqfvMIY3czkFsMgu8cOkmq8DxCtXyqk2X9vfQo/dwW1ReuLfOgdLOOUSoX+wSe3rrsIhJ3eUjkQdJ72L5ZvQ1grCf5Fa1aBkv7l0lWzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmsrpGGb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmsrpGGb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB59AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 01:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783991313;
	bh=U9h59lTmVcQgTkB5ufh4SNMGEn+JjIisF5PUkxAQzaY=;
	h=To:Subject:From:Date:From;
	b=bmsrpGGbjPwLv9LaTCZwrQmvXmdloMgKRP+7ydr/nVWS6v3OTfE/TROtNqiLwMWb1
	 3P0jdmiqGQL1G19riEVmSZ58vsqJz0X37DYLUi3Xb4y1MqtqyksH12aQfSem5CTbZ2
	 Yex8DaObZX0VxTY8cCKVCUKC/EKKPYKQTOaH8T+sAJYU4azqlswTWoPpONCMn1WgLH
	 8RBQ3j5/45SsRG/A8bah7TpEJ+WLL6o/eirmalS3d0eM7EWI5GwtKq+ARarBBb9xJP
	 SPqt9uNkKVcKYtPJ/JalqpcTz+4NdXEokgpi+1pNFEhrE11n4t4C+O+z2mrdsSsQjc
	 opmcBAcRecwrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B58C44507
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178399131368.26327.2259156661738350451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dccd329d75e856edecfe79ebedb05eaab330cba57e61583c5fb379234bcf52f0
Date: Tue, 14 Jul 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783991313
