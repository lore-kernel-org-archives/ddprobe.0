Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9D1224B0E
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770446634; cv=none; b=YudJu7RxYRqB0N7WqZcsFiKsf8OmvzW9mC0F9joihsMBfcbPMp65ScxXfqGjaZXAQp6Xp45kWnYXTBO0MLmcWU/EDe/U3lVj1LcEc0aLUSIXW0wjBZSM7niOG7yWOlrNu3qMXyjK+RJUB7QKvL+HC7LI6drVfK56nzNOX+0wsZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770446634; c=relaxed/simple;
	bh=U011U3cc12HL7tWXo9/z4I+Wu05ELTZSH9nN24ZYBt4=;
	h=To:Subject:From:Message-Id:Date; b=CJh+bBVtKrY2Ix6djZy741055UlsMngZJwRRgHGIXQ8Dj0Cfwt0SspP0zlJ5a/r8nRGI05nf4ux6r5o10DHyL0KmM3CCcCEO5C7xtBKOP6bjtcaorTWUo0MTcFdCacwkuAwIO20EbF3nc6rVY6qLlkrQOkdxThWmLcBNny3t0dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYz5usP8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYz5usP8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7322C19421
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770446633;
	bh=U011U3cc12HL7tWXo9/z4I+Wu05ELTZSH9nN24ZYBt4=;
	h=To:Subject:From:Date:From;
	b=aYz5usP8tAv0eXYJa90I6mAerOwpKL9atBydNetVyEfxH+KW1YxXgYMmVW+P25Zq+
	 SPq2HgRmGmOyciIp7X25J4eNUhRff9xKBCbIAKv48SETbkOZ2/7ajUN0ykljOLtsFL
	 b7f0tvQAL/f92v1WBykqFMOmQUDThMMWKkzX6VqgeJQCN230NZaw8Ne+JKBRTUnXZT
	 7CBZLGQ93kDmJT52QUwd3XVc74JFDqQOcvImrpDOTKCO6s8lc/l/VkDmq83zquMhgR
	 cc9saZadJg6+FC9UThcaVGzqdB1gygOOx2N/WFO9YNP7JLO7N7bDqGl/klMYF6XpEj
	 qmFvN0Cq/sPmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3557EE6B76
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177044663358.27071.16107289573850788168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6531d7f8b9d8632ed79ec6d59ac87a6f6d5023f5b72b8cddb7743ca45b8ae27c
Date: Sat, 07 Feb 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770446633
