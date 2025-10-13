Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184BB145B3E
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760339994; cv=none; b=BinbOpaueE/cGA/8Rmrg/9bFX7jNn+qsIRzI/zuhufEbutoz6PT1fW5mkHxVnY/Sd7k3rf8mTB2g6UoyMr9NHerU6Oe7j6fTZFQWGwkObHSqs/ovAmGlVo84a0hqQmlSjMLZmpHEIWqy2Ly5VWF/ivQRAFj4Ll24HNTBaV3XAvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760339994; c=relaxed/simple;
	bh=FddcNpWCu+yB0JzjB6lbqcSX3898kjUk4u98M9bStow=;
	h=To:Subject:From:Message-Id:Date; b=dTDryfqFp9hqBsl6puGv23DND5Uu00m/0BWq9rpzHBAaI7le8lkGuLTn37bRk7bn3ppzuSDqCoqzRsruMceROp4Z7qJ9q0Bd9bGUxWiv6CGFsxZYPRsi0MHp+0M9X+2Moz2OCNDnLtBZpeYJsVgyn7hP7h09nK63rSTjW/5h9bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPpYGqTq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPpYGqTq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1366C116D0
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760339993;
	bh=FddcNpWCu+yB0JzjB6lbqcSX3898kjUk4u98M9bStow=;
	h=To:Subject:From:Date:From;
	b=ZPpYGqTqGMmFyg0YLga2T2rwE2MWSSebEDk8PqOmW+WRNzgR4tKJirI280Ue3G+42
	 9UJm3K6vC1zMQRRcPDdHXd16C8jz99Ve1F92TNdOYGkg7vcCgXUw7I+LuoxqDnib7z
	 5M/hnB6rN2qa59NRw0guwzwR0zPBOVYuHMN7xhGFFsoD8SALCki6vQHmJYpPnaSv7M
	 xRjlZe+uO5M2ltbNb0lhcpSlm6ql7KnpcnfOnaPkJXD+RwAIeTfWOVZr9WD2a57Klb
	 26VyCVCztZl8yyVV8e4UQQOYVwgrDV0qNN6KnD2p23uMX6O1Atpb/lq0piUeRox2V5
	 j51RMDbesuizQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F700CCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176033999357.21927.16092421033447301181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74cd3f1fa8e80137506cd3c3ce0fd9cad6abe86e0c0b0e0897b27fe0810aed68
Date: Mon, 13 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760339993
