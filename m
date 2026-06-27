Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310BC29BD91
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 11:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782559114; cv=none; b=e/FouWOL1gUvBCMYvBp8w3ANrWHAownv7S8I9GTvCkiK8VmjW8K6fTBasCTD87Eb/yhcrY+9iM8KtVPXqEqoKLg6lxqilDN1YHPMLZ5I2L8n2BiX/ieJ0euN/lqJhLc/gnUM0lZ0Kkj/2VUpyxSMaQYTCpph3Ft9uZztQ5FDbeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782559114; c=relaxed/simple;
	bh=a7/gkuUU6RK7V1pvP+xNMVczP4znysJDM8kW4k0tv7Q=;
	h=To:Subject:From:Message-Id:Date; b=Vhn82EORZWcqGQu/Ws52EyCEqaCTSu6Y+3DlLHh8fHorO+YjmIyFDJNupvFtKqSeZ9IKF2RbqGXhjHsnkHJAYPdzOKqp1UJ6eMF72lAFp7GtZwPLvqa8c2ERCETtlbaAyDhp8liBNJgpn4QQlfJnm4Z85pgD3/baqfUljpSZqoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtOpm6tc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtOpm6tc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7279C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782559113;
	bh=a7/gkuUU6RK7V1pvP+xNMVczP4znysJDM8kW4k0tv7Q=;
	h=To:Subject:From:Date:From;
	b=AtOpm6tcj7djUN8EK9EQO2uOkIRKafVd9P8RTIorNBB8/GINPjuzjIdZrKkAqrpCZ
	 Z5BEaajywFpPIUsYoR/enPFinR0w8Bor8RH7AvBmri7uVKb0LdIirobWTyzdxu2ZIj
	 q0a2j4zIi9POR+cBoz+dv6Ih5zufxFLiVAObrKB+6oKLmMMDuTxlT4gsxUqV3AuNXj
	 d86YDJs+90Torauw5BcJ0Kwqr81t4GtmxSMLJilrp4n77tLbxvWeyXxBneGwOkDBni
	 ibm4VIXF5s3aGc0RdzyLGQh1KPQd1Kh7LJz/K4KSLKdE8BmX+fb2CaLG5TKwSy32OF
	 BIDwf1SgwJibA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB02C43327
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 11:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178255911370.17593.15637175194909132162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47ec2aca9a688ed6e2870d7c5c4352c103f32e3b7df5c82727f903487a5e6cbb
Date: Sat, 27 Jun 2026 11:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782559113
