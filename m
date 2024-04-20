Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63FE339B
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 01:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713577223; cv=none; b=GMIsQftr92lPnuv7+Al69c15zMRk5xgpI+5FamRZbPuOU95TU9F6oJEDJqnljEtjMuVQy1j00/muc5nllCfOuRXy8egfIP3pSLCsFhKPMS8m/egyUojJxTJO+hEbsAf8fo9PL+mV/q0u4oeN+HyUyJrIBvXjjWYIN23J6ICTUco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713577223; c=relaxed/simple;
	bh=U8OnisxX6OTDV0SgBUe9/1wKbpEKo6DtBLeCjPwh0vM=;
	h=To:Subject:From:Message-Id:Date; b=T4Na4GCfjk9mrS2Pnx4L9plXIdTc8SsTiEdVPHBLPdeCvz2W7ZVPnzpYnZ4Cxe7vHmVQOXhrzZvs2SrnY6AhwJLH6XURY/N/WK91nYD8WiTXkMYhVPnkH19iIrnGCPVaD26MtfRDY3qb6exe41NWpUeCvJjbZKtrfV+mn5f+IVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwq0uWMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwq0uWMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6006C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 01:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713577222;
	bh=U8OnisxX6OTDV0SgBUe9/1wKbpEKo6DtBLeCjPwh0vM=;
	h=To:Subject:From:Date:From;
	b=jwq0uWMPTEaV8leKPL2E4BnO9f07eOJOL+RtPS79mewbD/YAJX23blVQ7D3LbXioc
	 UYGwQUsPtr0EpgOip+ytSXcsxVY7TaUKV/dV/xucrgIlXj/ZDkeiPXJqiqe0N8kX65
	 Vm0THaxMZQ6ZDwBCOzV0HLJhABM4QrbAaDvghpxr2u06YyZtF/1sdNfNEtU/wWZpOV
	 mYaGWf6mBkQPc6/LEyBMxyF3c1Q3YkgVQ0XSlGF8nG1gKLMEbSGQJFViCYEBmSwP6G
	 CkJJxMI2K3oGdRSB1jLrdHT1t5PTmjiQ0CshgRi2XGjcZHSBOWQ7P+//SJIOFlxwHZ
	 i0B9VQmkjvH/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0293C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 01:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171357722277.26076.11654990460839434264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 022267643dcfea1f389999c472e5f24b8fd3f04685e8411e138ce108ec4b8e91
Date: Sat, 20 Apr 2024 01:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713577222
