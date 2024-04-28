Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DDB44C85
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 20:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714334543; cv=none; b=cdavFEcftmUncJhHnQBZU2+v9GmoqyOtLXzKe97s+/tTeaO0w3XPgDLb/ebi3GAKjm97SecmEZHkUaseW7joPGRHBwpbG7QbQPfEYtFw6y+dwdlNASxXQpUioIuuoaP7gQORpiu/OWmRnIiin5VVAVopI8f/+zsMg6GJL4GAC8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714334543; c=relaxed/simple;
	bh=LnmjmCMrmaK8c4Imj4vkVf2KJeeF7QC1F7LkoDvOK+M=;
	h=To:Subject:From:Message-Id:Date; b=rNgB+VTOCcHO7DEH4j4/i/frphEC2BNZLDos9VZ0EsYS+ViOc/M/x+iHAaVtbT4aOH2tFMOC9kCkX5dRZZYfjYlXgdxlJRtg2JtqsuogahdqJzD0RAZQZLK2tGmMp4jbMAcF1PmhwUIQO9qh9EKQ0HrId2gCpbqTBmFskdnsFOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+JQDrSG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+JQDrSG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E86C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 20:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714334542;
	bh=LnmjmCMrmaK8c4Imj4vkVf2KJeeF7QC1F7LkoDvOK+M=;
	h=To:Subject:From:Date:From;
	b=R+JQDrSG/aZ13oCsHO6Lvg9SGhBtwn7jBHxidYb86RZDPDpUTol5nuv3OSdPSimG2
	 tgDiA0H3hYxpPSeKYObmOXtqIA42OLeXNei39NKm1DYXJGev1tTuf65BCS+xaz/0LK
	 fdrBN+qKg1jjM0J1JsDOPk8ZgZOuT7bOb91ImG66RjIZOYzj0YTPAmC8Q2H+QsFgI8
	 hLxyZOrfMx6u7/zwXGiROH9KGnjw9i0/CxETXHhWN8guTp872Thd3v1rVPPPdY1+9a
	 XYK1y7z2M/Xm257rz8oHjBVRrwITsOyx0SFCke23PTBWPoOO5fqrayk7x7OeAWGblW
	 q2KAaBHR/gRlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C42DEC10F1A
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 20:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171433454276.30805.17218857728483319769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 373b2511cc6bd731b2c2dbc4444bb6b0fe0c241bcc0f7a68bc6f2770aa266275
Date: Sun, 28 Apr 2024 20:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714334542
