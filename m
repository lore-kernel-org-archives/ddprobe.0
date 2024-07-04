Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54BED366
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 00:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720051523; cv=none; b=k1yDwKtq2mYlWO9+ZErKj+FbOoqVUn1j0VSG+rNFs7Qm3fBeYAr7UvSZVQBJDqjwvkruCBuPqfSL2sp6KUw7Hlj/jTTixuDk5y2GpO6erf2S9G8+2WP20t7meh5QvrGWmhcjuShnhY5ej4BR39X5gS5B1U45U83nQ2sOYQPWUYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720051523; c=relaxed/simple;
	bh=o5xnfZHa4xgP9/79m5wLYOwZvWa2LCEDlVxJrc/+wvM=;
	h=To:Subject:From:Message-Id:Date; b=nbT6JJd61P1WbsxPA2A38CsyD9GV9k/CQWMkTdMXO49UTUDvycdEfP4fPG2zQk6VcqG+YUtlE4zKSL9+/oZ6uz6xCrDT+o/rOlNOYw320rpLw2KUhQVmGUn9FjgB179n8RIjGjGJ4MI/ZuPlkNb1cZCYUNpy/Nx7W4ptDCh9q9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVBSI9KW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVBSI9KW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E507BC2BD10
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 00:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720051522;
	bh=o5xnfZHa4xgP9/79m5wLYOwZvWa2LCEDlVxJrc/+wvM=;
	h=To:Subject:From:Date:From;
	b=BVBSI9KWv7oCJViBB/BO5kqSGA7IPXQH+KAAItevVLMEE5nz0FQBYxMTtXq+hxyaF
	 +n36FUb5WTn1Z6NDeSEnd5240s9tD1CBbVkT9gHEca5I0lLEtqWfgqBAz8L71N9Sb8
	 sNdV01mnhGz5k++lS8+cQd4djz5XC4CTT6ntYun5mcgIOpmPQ5t9THwwvctmmlrOfJ
	 bNAgSVZ4lQV1Tr6QZa5mJZXMYdrDlg89eiQVd0yngWEXTW3h+pfTGp+x2ib81rFwua
	 /cGG82j4ZxhbGlfFnSkJNcnqGLumLPhu+TGXiOX0cnPmFeETYbHrlUC7D31OVm1RJi
	 ++5VR3R0VxhMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD55EC2BD09
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 00:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172005152283.5106.5682100353175738858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b79ea64807b58ded1d5d28890c5978806bcb464130aa7e01814f52d3f0b90643
Date: Thu, 04 Jul 2024 00:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720051522
