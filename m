Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12925F513
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769327634; cv=none; b=Va9PwRvNliUkdHg1wJSAndUcjFOch21W3u0/5MWcLWaL56Zx+iTCt+N1Uum19ddYNPj1mB8sV+8G3nEdddXsX5y/eaIzJsj/TyFzmxo5qgykdt9M36rhOlGXnwOTAcCYaJGhIkmwD1c3pqsHRSGUeZWDsgcW0iKsBhhDUwMq/jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769327634; c=relaxed/simple;
	bh=zxwy/LffgYlgZuPXZXAgsrhisaWABekOzUx5nKDprS0=;
	h=To:Subject:From:Message-Id:Date; b=hfRsuL6k1k0l4/LYLE3901TQlP04cjiYmonadBgAwHuM5LqVyfeoI2fRrkleZXumNMjxex7QUmrBO2W3dxfnJXXt5bQu5jlcMHdjjaxK4xuOQghDiRjgrpsxHid1Se/eg257VNv/WGt/aN4GttVpM6vR1TZMAOQy28M2F0HOoZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIUO6dH2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIUO6dH2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AB9C116C6
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769327633;
	bh=zxwy/LffgYlgZuPXZXAgsrhisaWABekOzUx5nKDprS0=;
	h=To:Subject:From:Date:From;
	b=UIUO6dH2Vrsu8K8FebwDL8ive+dttxQ7M7YHoxTaTgBIrs05G5dv8g4GoTrfgth05
	 v5FM8sr4BCQ4bU3BEAqYTalZ/E56ausJUP1DIpG8SJUw3Pw8EliMvYJyNCq0iB5nA1
	 dYBES97hqjLwNQ/9EqQenY2+uJwoV8DBK3SFhjbctk8VNDP7uSTpjtGF3+eQUGI7wV
	 O1DWmFk5yUI1cEtMjdjoQHEhLmsivy6cMdXYafdbKWqeeluK7GbmqRzf/2iVwWIu9S
	 JeZ+RbCLx5y/IlzUNcaEnddodC9Rhy2sauABtJocQKaNST57jdzKu1DufjnVMcUnOs
	 e4pP2iKE05yOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95546E63C82
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176932763357.8403.3446428258231783751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d8740fb7af20008082901e7390d9079b4e1c152856008ef08af69ccffcc68db
Date: Sun, 25 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769327633
