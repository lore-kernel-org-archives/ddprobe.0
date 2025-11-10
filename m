Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9E628A701
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762804194; cv=none; b=il1hv6kyx6YJNrFmByL0BFMIaypLT//RguZkk48QUlKfjrAKcxma1yJcvEmOKSW8422kQFwTEWUiVI3OpxZHAO+Asr6AiEy90qo/+QhOU49+JAc8roY+Om3SMp4z0xRucZx9io3OWWVsAtYmo92zaoOoQOPCtIv54pSx5CZrGEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762804194; c=relaxed/simple;
	bh=2T3xZbN06Dw2pq6Mn7ACYuVaPVdKu516m/IwaebLELA=;
	h=To:Subject:From:Message-Id:Date; b=Vbb1zoztLj+gvinCn7NQ8sIedWu5xlhjkxoP/0dhXPKZY7HppnmO7d6uuxr5O7fZZlHnauH1cqrI1tcE69Q0Nr9wpWbxSqvUQ65+6MaDE/tOteocAyOqY8tq7zxVaUPoZ+r4kvehuP+PNyuYgV0HJvmigL6GI4lhbhd8k97a8oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJDGwsnH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJDGwsnH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6C3C116B1
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762804193;
	bh=2T3xZbN06Dw2pq6Mn7ACYuVaPVdKu516m/IwaebLELA=;
	h=To:Subject:From:Date:From;
	b=oJDGwsnHc6DA1LzGlX2kIN+RJsU9RI5DjPiZZ+zUZhoytWHFQwAf8nI2MAOGTACJx
	 qMLqxbhPP/XeKdBrLYZXG9ULpq+SC+q99PtAjWemNv8R8TlG08ndjC/UWxmabzBmBL
	 sT/nZlOHmn6Nctt1Im4+06SrW4uZxlM/iVYX09DQbt64jIo3lWMEKiDdCt79+GgbG7
	 Yu8phstQkOKmM1TmbzcandzW1OEXrbKhYTqA6bTbFtZZmJhuHR/uXFhqePBxN4WDdu
	 tyZJEr8UVS178ycnlYT5D0bHqK49KPjeDXPf9Y3Zqa/lM0VlBK4NaqfRrvC0s0He64
	 A3LI1VgVbRRZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A39CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176280419359.14401.9830942468298687019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbce332fbfe1470650a2470e1568766cf4ec2c0c3749341f4cdc77d1cfa8e535
Date: Mon, 10 Nov 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762804193
