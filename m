Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12AB8611E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768213434; cv=none; b=aL3taYgisuv9deH5VGnlQG3w9LPZkl0QWf8k98Nf4mlBlD1oJAWu+pjNXkgaFoxBBzQR4VCIHbMRubdNH+zvntROl1IWSAgSkNRzSZlfWB0oZ4KbeU3AEJOuTOT1TO4Hzau080OWmEcMOi67f96bDwoEe4+GkhYs92jcWNuvXnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768213434; c=relaxed/simple;
	bh=rPJT7pM9pqav5+pr06/70csoq0AIWdCk3ySWFcwoamA=;
	h=To:Subject:From:Message-Id:Date; b=j9QMMQvX30dq+DWWlrGTiAtmPeNuFFOPBJ75GIaWyYPbOkGTio6773TWeXsPuLLYCK57qAM4Cj5e0DyVgE+jtpaVGcfjTulpi2DCtWCPldQOmNfxFui+7eArKVdYljSWmBSbwRME6vzSy0/maHJ/4c2YjCUyEOGhocOJOwmw85o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fy/0Wtst; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fy/0Wtst"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A202FC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768213433;
	bh=rPJT7pM9pqav5+pr06/70csoq0AIWdCk3ySWFcwoamA=;
	h=To:Subject:From:Date:From;
	b=fy/0Wtst57m/VS8wtny/YtS1zrIEI7y+LtZUAgkvaj8Z1F6mua6GpilwHaNcHX7aq
	 x0EBoPdGASC7h5fhSIzsMqITNCF/e9sK/Zbfvf76T13zGY3WosVA8Co58GzXUkQK/P
	 qh5yQcVDYVdVUDWTk//GaG5Oj7150cluzXSg4uE6g1BKvcMwEWPN02ns64i2gkUduQ
	 jKY1yMqDVBh4N5BVneVT7lWfG5tp2umncnk2faIOVJVby091aQO4uxnh43HGX9pmVf
	 Ids+yV4EWsrcRV2ySCBb52/V22AaMnQW2ypnNN5dYCEEVmbqx9g8ZcAP4qzS7x2pk/
	 0GvASQkPup9FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B71C9EC62
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176821343358.24553.3635432680752693805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98b222802243df9a756e9043617ee10ec0945be214cd1abbf9e3f18d21d2a707
Date: Mon, 12 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768213433
