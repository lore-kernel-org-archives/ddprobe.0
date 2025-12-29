Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC8C331D366
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767018233; cv=none; b=tSulV+i4k95YHq1F9Ci//MubiHMQ1/KWOv6FbRewXr8DBlIeDEz38mKeq+YPcs3n98SY7CXsG9GuQGT0Nj1+DG3kjrrTnxi3dzH5Ey70ck+3LBs7DIGNce2YXD1GjDbNowcZMjsy8tFwQoPFLAFNrnfxEHhhbO2tnRcNX1HcHvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767018233; c=relaxed/simple;
	bh=H25iB85E3z53hB2fk1bZd75RhSOtTTIvnrK1O0yAkYE=;
	h=To:Subject:From:Message-Id:Date; b=pd59ZJ4FFJYg1WpGF/8CHad2tMyW27PfIovSXMH05stBcby908Y/slQMrKvxq+BOQ3wWwmtBKIrlSN86K4rsW8E+3yQzTsyKrh9EJmcjWstR7GSSMiR5oKDvH8asTV16R40M+1nNSDzvTPKtTf2xhe1oQ+vrT1kMrogFjnZNVC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOD9fd1u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOD9fd1u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3016C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767018233;
	bh=H25iB85E3z53hB2fk1bZd75RhSOtTTIvnrK1O0yAkYE=;
	h=To:Subject:From:Date:From;
	b=SOD9fd1ucGfdoywxdPeoADeoXZbLEP5kRmNFtA9D4K8AaHcw6p1DZd9k8gIJYhq9m
	 z7nwjtsNgkASTcejDRem5zbffekEV4OwnKV4cvb2kSl1KLXTILXLXw246/jixyFKcg
	 jhsSOGHH85uF3OquE06Y2WzVmF1UxpV5ReAHo1qvj/QyZ89b2V9V5ghRbEVwyWlFK2
	 wXQcZA4rFGCNBNnimhIutOsW8cP8rNzNTDjBHE5eIKIuKzj5P0aEtp7yGYCL/k8CnS
	 AgMWqRW1lSnZZSY1pyPnLSFZOh/+IBz7ZHCPRXuCvtefWBdixGOq1JOGBkphklDmcX
	 cvMjeL3EViCfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AC4E8FDBE
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176701823358.19890.3573974235701843090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aea4c263d59a10729e4f791ed148871bc5a5bd200aa46d5be06bb23ef94c7c66
Date: Mon, 29 Dec 2025 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767018233
