Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EBC11F4625
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 20:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741899534; cv=none; b=XiKLcD+V8/g6EBBLK298zZAH0injcaWcbIEI0l8ctkw8gS2Aj4MG5APDr6CFkX9S1sWd1Pumzy2U22DF8uJUZUCmVDtpLj8ZiB/++Ek9XUw7IbTTTut/mCuw0CzEFqYTI0/rYjCC4etNNBuoI6t0gVsxXZ/Jpi7oSA7ZgMSboHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741899534; c=relaxed/simple;
	bh=Q4tLNWfQ3fCmlH3n34VzUpVjXLk6NvNM9K8ORrjhmCA=;
	h=To:Subject:From:Message-Id:Date; b=rgizz5qwTTM+LhTOhQ6phjla7SUBmAQDOxeeVWAQnSaF836UGIiu01/rP6mc9DySNsIz2N+FW4Rhe6qxZYYKFPTcuqpHgopsaAjJSJQ4ncO9OjQunHFVHzkU8zQdK3uOv6BS6wK7jBEbzRNBgyLn/YPHYwwaH3YSd8MP4d75+Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKv4fa8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKv4fa8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA59FC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 20:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741899533;
	bh=Q4tLNWfQ3fCmlH3n34VzUpVjXLk6NvNM9K8ORrjhmCA=;
	h=To:Subject:From:Date:From;
	b=CKv4fa8MPozI3ksu20jlGCtmX3v3Lbpf2QpTecPC1J5pXQ/JTBP4UnmOWKYqx62xK
	 Y7MY2iF/jvDjU2os84AtW3j1IBa6awOfGE/wm5hW745zhMRLR+xs5WrFEB+KqFL1KJ
	 m3Fla5ysSvLoAUpikDraaOMQrG+osUdhYK0w51pgYh0ZvBj29J1p+YkVsU2En0ZtRh
	 CdxNqfIbRF9C/zcRcNcuRjJ+YVX5q2vHhzqmpemyN7T1Lucz0OybB5WK2Ic/NZSTG0
	 ThQ9O+/pfycbSOEHQcYk4hsYjp/guY1CplH2mEIubZ0xF9/j2ckq7rwIJ7MVWcNr1f
	 LKtjJYRyML65g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB075C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 20:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174189953367.3325.8411687982856244829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a855a6466181c847dc92a87537426190d46e4d5b67ef29690505b7b0cf78a797
Date: Thu, 13 Mar 2025 20:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741899533
