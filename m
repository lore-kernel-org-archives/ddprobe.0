Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9AA21CC71
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768193634; cv=none; b=Xq0ujeDkeoihHDHSTKd7wGOBIaHceySJdPODCFr0Kg1MkdGDMIuBPxUjmGfuvK30wBzQ6UsBK9JOnucXoVa0premj4+pbfYCN0v4IljRIxf8mq34HrebT1n/gSf+pl97GHJJdmc3xnZ5PmF7d8f7FCoaZwRiOCRLAGbqV0L5Joc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768193634; c=relaxed/simple;
	bh=S/zRMc3KTJ0MqhDH1f1Hsp1vaUDqcEjthdi04DUGUc0=;
	h=To:Subject:From:Message-Id:Date; b=ZVAzdzwgmBBVh2NXhdgpl3Wirt9zSGlVDMDH4VbIVXbDTqCYYUEuUno/ZN9/o5yPz6Q7rXB5t/SrVbb3vkXG7K638YIQ5lgb7tXAOjb1JbGttslZHY/P2CGH/Srv2Xxpavl7KWvwzvjlMN12v5+x4jeBUSRpdWVC7XgYlXvLNb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bk+buIg1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bk+buIg1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3A8C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768193633;
	bh=S/zRMc3KTJ0MqhDH1f1Hsp1vaUDqcEjthdi04DUGUc0=;
	h=To:Subject:From:Date:From;
	b=bk+buIg1tW9eYEU18NL0nSzLCd7i8m2nGxJHC+HtlEsKrz25y9jDaXA5U2PKXQSGA
	 /jb2tb6h7r9KPDzWhimzJXNyxHCj9FsTLB+MRr5X7uFOgrUxUqxn7KeRxqKAA1LQEj
	 sPwr+jgVwOEofcdzzRwALgDfyJTIYcymFgitiSf4pM2irg56zSSIR1vobLQ283OH5z
	 j0tYXS6yg04S/ZxoNzSWBKURl2Hw7JMZmnc8ifp+5FR+bOkJcQMgi4HwGuw+gP95rT
	 tOFGiedsHDT/5ykY6FFu7IYvyxlg6YO/bJh+1KdvlN1hvw124MblRM5KIQfz3yLisi
	 sQkTREwf50zXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2D9D25030
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176819363357.21585.13577935009030969868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f15840800e98a1f7dfeae2c972cfef72e66d0a61d3281ce9755304bac51039f
Date: Mon, 12 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768193633
