Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9C240DFCB
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776233254; cv=none; b=KgNsikZzbHyFephLXZHHaB4x1pkfnfvjVqlfJ2TirN3jMgYMXqKpISRDW9656OnMo4seVJXM/Qv/hd8rtnBeDE9QxIVF5n86K+/P2X7Npr4zitdaVDLGk00RfM7dmtki4indY0jMgdu4DRvgnnIOxzhs7tAV4DCtXf6QMdosrPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776233254; c=relaxed/simple;
	bh=WV8oz7N4wgZ0mrhqdWaXISBEIGWEFRN7H2C+BX084yo=;
	h=To:Subject:From:Message-Id:Date; b=ZCohpNIz9bqSCjpldL/iAA6tYbdjPd7uxTHsDKD2LYJB4o25XAgZOsgCpJjoIhTCS2gl4zs2b4E4lyLtSvQebRQbxQhXmKjTeO5eIzW3oBjRvBG36rkh46/trP3OIbA4eHAejRA5kEB8bPHvpn9Ci+7IpJyNr57ZJuoP4DJxzAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T6BSoEMH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T6BSoEMH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7C0C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776233253;
	bh=WV8oz7N4wgZ0mrhqdWaXISBEIGWEFRN7H2C+BX084yo=;
	h=To:Subject:From:Date:From;
	b=T6BSoEMH07LEgL5p+5G5HcNjv8qG45LTPGUV2LPFPGyMgqBVzSrOezfV5zQBFV5bI
	 x8G2AE92Le9epE/ALz0OY1oCeX+CTb8VxIBzonXWnxoZdtQx2fR07fhsYDFhvIbAoF
	 OJMKbK+S52UJOnq6TBk2z9zJ4NoUPVBDNZIrMD+fzd48x9T+kaYKoUk2gB+P5oDWMe
	 FvSXFEaIJLJ3OAx57ShqohCW4iecFT5NYWKcmb5Rc1BIxhewj0BYKhHG1CMeQTa/GE
	 nWsLCYmtwtxVy0D0h768JHHp7B3CQsdhGvfOqaRvctx4AD5z8aRytuD+QKKbB6lYDY
	 lQm34tKZs2fag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9213FA0C32
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177623325368.19884.4391523954637405139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c383c66642ef8aeafd92dc6591a8798dfd938324515b391ddc6b53191f310c25
Date: Wed, 15 Apr 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776233253
