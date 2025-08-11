Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB9D2D97A4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754946594; cv=none; b=njq/DhgZTbVJCHXATJyXSB919w80zSi7b9gvgutNppTcA001BU4oLmSEqzzXgX5AG83bGwOKkqz+Bg1sWe9x/SaQoNa53O+hVf03gcHtsF9lv4hFurPGsiaTvNOQGvAfOSNKQSAByZorXItUeCwDMDItF9iyzPjh4bLl/XpLgOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754946594; c=relaxed/simple;
	bh=QPgYK3bVa2GMKSsRDqxyKOz5GapSXxb1IiNCi/yLWa4=;
	h=To:Subject:From:Message-Id:Date; b=L2AUcc9EKKp1M23JtUtkIXgRX4Td/OK34KAdCV4S7I2yBfiGxKC5dx3I870fG+oL0Rdt0C/58woEmh03BrdWNC4H/JFAaRBywp0JFeD64Wc+s0gJsk4XcBdTdFCPIK4eVVJhvxw24BxxYYkvJDP6PK16jTuHveLXRmWXAQu3I0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ooKIJehO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ooKIJehO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC0FC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754946593;
	bh=QPgYK3bVa2GMKSsRDqxyKOz5GapSXxb1IiNCi/yLWa4=;
	h=To:Subject:From:Date:From;
	b=ooKIJehORHx6AWZ1v80hKLuBoUw42tehClxVLHgKpb390R9iRoTNBa+vAoielmlB8
	 y6Ii4ZDtmbGyGdy5QJYnF3qKx8AKNTD/uh4ba8DW4m8Yn1dzyLab8qs/u0GvuBH4z4
	 c2d5MdksVqkGCsV2+RKql26VEK7w/xykUxKMPLJ52O6nam1DfZ2uHlOanrjcZRMms4
	 f05n5bBhuLac1iUuI6XMYr6ruQvtPpO750hyE1hUDs00chghLHnPP4tojfyl3XRvy9
	 WtvlVI4MBIfEjNBR43ee84PKMzXt1+ps4ln2mteGNR+S42sn+qLYk2xo5VmeDfKpB8
	 TtJQNumWcRCDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCA0CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175494659358.10102.2846073882551256522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5648b59127fa22c625be88705505ed77fcdef8f31789100c2d0a49b009cb18c
Date: Mon, 11 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754946593
