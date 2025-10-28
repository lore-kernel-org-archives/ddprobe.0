Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249C34A23
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761664194; cv=none; b=loc9708l+M+jZ+MYzsfzVNLo3hvlsi6iuCpUD+Pv2ncJokhYdTArejD40I5ddYTrraSnreXlXu9yLaJmRCPzff8/FcW+uiPI1Mti1SGOlGBf5uLPQYBoEV7PrfTn8PMf9+RtfDB0lfPFRvukNWavfRPWRKGZepL4RIg0OeZn2y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761664194; c=relaxed/simple;
	bh=u8xf04P0aS3f3SfNfoONvqB/s+PAIAC4t+l7NthZLSk=;
	h=To:Subject:From:Message-Id:Date; b=hHDR85vFDtCDAy16NsxNJ4IGQKdhoYRl/1KVu8xwArBi4OkHHCE09ojtlqtRoB4U0x/UKMq1cM94o/McnZ8cJKTyhEV/IeAJdMgTkMBzeeYWUHUMSTgll6PZNvJG5zP0QYUbSiBXes2nwNZ9ToF9iOb4mb1GcocutoU/8q5T4tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iA75qEzi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iA75qEzi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFE2C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761664193;
	bh=u8xf04P0aS3f3SfNfoONvqB/s+PAIAC4t+l7NthZLSk=;
	h=To:Subject:From:Date:From;
	b=iA75qEziyDXSyyjw/9Zj6W6AQhcjSjFW6rKYBRqWg7jvstO0MaBEqIOvIhw/VZnZi
	 kHRQCxZtsrT8LUliF7ZVkArMOgJvgVDp6a9i7kRDZw6xnDJKHqWuibZynp82SrfFBv
	 efw5yQWsIC0+k6vBdVel3Gxp9BPY1puhz0nxw1PcP6LlN2idfp62EmcPe5Km9WTkHZ
	 e9fcwV0WdWjEcN1EPmzmNceyyBZlwcfund3PYjABmb/N2awmsibtLtTQ9BKzdkbigO
	 BMWbbvX11uzzqQWWb9cJcx894++hBJUxQN3A9byf5v6wV/ssCHiNPII1onncxrZmmz
	 tImnXqgJX0xTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A397CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176166419362.4514.1143088876918686697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 667888e5f3626690666c8581d4cb065b1e7e9ee384ee57b4de2acc2222a43f22
Date: Tue, 28 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761664193
