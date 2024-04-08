Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E37DA622
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712536097; cv=none; b=Sg1fj03rMfnyI9yhPnca0zgBo6uLS1F46lNKkihHe2QojeN5OEuHHHW/OZHyURPOn9f93DkOONgs1QYDna/GDtkmszy7+cvY54fq9MjoRljxT8fnWj4tVNFqpqJ2Y4P1AXiuFtaE+y6tJLMesyV9/7DdPWNVRKWmzdC1N/Vxxq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712536097; c=relaxed/simple;
	bh=ZAB4nP6YOQ/ILXYok3rTd8ADPKdTp1CyC5Lr9qTwJnk=;
	h=To:Subject:From:Message-Id:Date; b=Pm4BKkl/9uUYPeSkbEkNCHE2Bz7AjZzWtnkhknwcCKx6UGHTkKcEMFjoEJRLvfmgUPKmFvkPcKXV/kt//3QpSKK/m85NDJ5cDRPd8cw9fCrxNw8hATrok9KtiuocmgINpopQasC5ErqgYuZmndgZJfeaeQ3k4HrZxF1iNL33UaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZsNQptY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZsNQptY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79334C433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712536096;
	bh=ZAB4nP6YOQ/ILXYok3rTd8ADPKdTp1CyC5Lr9qTwJnk=;
	h=To:Subject:From:Date:From;
	b=uZsNQptYlOGj3Pf9NcrjxNouql8PrRCxsLfDsIASEbtf8/QOfuwK48i1wmILILdDI
	 RGqpAAdy3V/Nu1m8i+dLN9cAeuOBuUwnMCm9EDgAZQa2eUDmZw5FtNSEM/nNu1Pq81
	 G+lXJKbIAgvh0zvrDu9v0BUf72h/S6lb7ZUh/QKG++uiHjAcuHWNjXTkmgalQXkr21
	 L11zWdYu8PfPsGHpzy4uYCjOwcwnEfiGgfQPw51jwGUATtrt649zTcjvDxotXDfEQF
	 I/ZAE5pKN6zUvAgMvP7EhuGLbr9S5AxMAIMcgYm3lqjr4F+ww+sQPV0n2X0je7MPqO
	 MKRf+O+w0PkHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6774DCD128A
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171253609638.5621.16195698673605975971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b636f1b333f2a7509465f6d604d3dcff66f6be203b384a8b2fccd12a220ac40
Date: Mon, 08 Apr 2024 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712536096
