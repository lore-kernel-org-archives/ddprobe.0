Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576E4265632
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 15:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764515574; cv=none; b=lTEa9HCeR6hu44aBLbDUalOIOPf5SqMgdK2JMzaY+zfYeHLzhRQpKHG32KQRgDmGr4DyH9OoAX2Vr02dIt+hD6TuqtGCBVYx3jhQq4A40dVv0CRJ59XOvB+XoQ8jgNCf9uv9qOgqwn2PLzV8xTQgpaAu5QXc4FTE4SP7yq7DJYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764515574; c=relaxed/simple;
	bh=O4Gd8TN70MkDx0sMWLaSP0RdbzGd9sGVt94IXhc8urk=;
	h=To:Subject:From:Message-Id:Date; b=Fv/tankR5cslmUSe8agnehV5/huY1AdNpo4hoKHP2c/QOR54R4P1eAYcNT8kIph0iM3Cc1Uhbp3fW7NOXlrLoBL6KEB04ANWXIhsrZh5iSF3fa+2+mLVPLT+1vt8cYp3oMviWt52iHMZ6P7+ruy1eNocGzNtWE46ceuP3Ga0lRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P3qlVuak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P3qlVuak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3C2C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 15:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764515573;
	bh=O4Gd8TN70MkDx0sMWLaSP0RdbzGd9sGVt94IXhc8urk=;
	h=To:Subject:From:Date:From;
	b=P3qlVuaksPD9NGQjRJqbUrJ0GFZD2wsZADbNUCIj0MSkEEPpYByBe8zqK2cLdRsFZ
	 H9Y2VofHd97VIYRio7tI0bGnancasrhbf2DyMoKP132OVCYXLlKX8vFoog4JeL3uIx
	 yqxOu/V3YjdTvV+1WeGe0NDGseH16EpT2EhoxIDdAJATvVM4cGatgG2bG8bHebNUbN
	 DIw2w7XRfWE9QKJb7cf78z4SeyfSFIp+YWaWlzE9kxd2ijw2owgHX7ea6KjmId4uBS
	 PR3VQaaY1Wly/l2MUhJ7Ut3DG482A+GPxOKDFwf5wpP3/kN7zBxB/7tVaeUuWuuJq4
	 VEguXdvUvzqBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987CBCFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 15:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176451557358.16072.18302915048391477587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e24f88229a4977095375d9d5a964678ee0c349c49083d830e42b6e4743313d4
Date: Sun, 30 Nov 2025 15:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764515573
