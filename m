Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C031990D9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738010154; cv=none; b=Sra8WUNon39uyW/LW5AW21QH1etI9YS1bjIQH303Rc/gqNEQXrshQDmIZtwqkYG4jm12FebUt25GX/zaT7+CoOyCMrosyU+IuwRIUrTNYoB2oKuvvxGgnV+BDxzKcKMvyMvtxksnkFhzoX6xR3UKndI6hQ2oadzMMyqS9YT9HWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738010154; c=relaxed/simple;
	bh=IxjufWCb30aK5OGD5NMvs3KQ2j7L/0UxQ5u6BKHrzJs=;
	h=To:Subject:From:Message-Id:Date; b=Qo9+4VrcNtTDhopDaOJ9QoxmeQObdDvOvCBb9QOR5K5GWrEK1Sqw0NdYxRva8R49Y9RFdAvJYZwKKado43wfCDR49dJfB23HBrHle5Z3V9L5v7mrzd0Q05Z77jpwB0Xbe0OaYFN5tgyaPJXb7rhA2nbUxle5fF+UTQ7zBi8K7Ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXPYtVvL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXPYtVvL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1624C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738010153;
	bh=IxjufWCb30aK5OGD5NMvs3KQ2j7L/0UxQ5u6BKHrzJs=;
	h=To:Subject:From:Date:From;
	b=JXPYtVvL49l+Rq6zOJLPPwOVKRaIWiWqsyCTCRb8RG720R+lgkfj68A3ypKvzu5wU
	 lDXU6aPKtfBqpmpMU7SLf53s2RGowNktaI77VEqaINb4PrlcRfSCavLT1imwmPxod6
	 +zAUlfpBFJjwfiXRtcH3eJTxbJ4odqZtqFoIRi7MrbnbPkCYgWegSvt+NcgOe5Wg6M
	 +U9AB97DC0xh0DxWWYHqgl6eGV0HD8HDBAcNDBUrPEQp3fCJQorMB2IqplQB9Mk1wy
	 vhOy8B9yyuL+gVJCCJGQnDnuyrY/pxzdni/i8p4j/aGqhyzliFKxAc+VQ6lwVU/TSY
	 N6m1ulGl6rUjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A460FC0218A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173801015361.8256.16913831922169176700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c6ac766b13355132fb881695fccce4c85fdc4bedb6bec87008411656d408ac0
Date: Mon, 27 Jan 2025 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738010153
