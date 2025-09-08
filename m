Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABF426E711
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757362195; cv=none; b=JfY/F7oIWWo7/VSqHK+H//hvAH2sVMlfmR9paJor2LyO4G5Ko1lBXCHJGeWaEnNBsTTtdKx15ZNtGNzMR7jfkTmC5DjXtzaOFTFlyfOk0T2qRWqiw0xNhWuuZuTX3kDpNo82XTIVg+y1eakcVWPMpaU5v4aIik9ubTNwK+c/mug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757362195; c=relaxed/simple;
	bh=Jk3HaCxhXNZ+7b7M3QImICFJj6kerQirwcomgL+tvPc=;
	h=To:Subject:From:Message-Id:Date; b=jbl7JKl5CGEMcfqdmiWTsOFtiJq8geO6OzbED96YnZ8YtLmlymn/Y6xir03vDrb1W25O39hJgk1sMyS3zEJKmbopyN1kg7/JsNR4Dbw7/wMx66cEYFCoaGEbcH17p9BRpBS+OIjex0walpRtI6tbE26aj+4peglV27jIEYT1pts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFS/hxqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFS/hxqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C453C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757362193;
	bh=Jk3HaCxhXNZ+7b7M3QImICFJj6kerQirwcomgL+tvPc=;
	h=To:Subject:From:Date:From;
	b=AFS/hxqNNtP5sIIWXGLhZDiycmHtdONBsSKiupdZhdk7TsmkH9LtERz56kXmKz4OH
	 QzDFsAMq3GuZEBH5Z6F4Stz1+nTjopKuxHUJ/Ik0PqQi5pAUL9i06ysWmoryp1K7mA
	 agu/4036rWy0zwobvePySK5qTjEkyWKEUDRyk+hiqHUgAMFU/zru3DRyMXmCIaMODP
	 EIWrkmgxx3WjIlaahnEwLmf3jEXD6pduDBh1mW4JYkizXtFHDO5NeIRdhrqKY22+04
	 68EL8MxVceI1yOuoAt8UaZwI26AqTRTLApztc9VpItIlkd5BTt/J9i0MX4gL6qobnc
	 jOGgL8nwDzCUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F37FCA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175736219357.27535.2442446975150432580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede46b27ef633b848d55d491088fb5d9c215a5cbe8d7946649d77f276efc6e3b
Date: Mon, 08 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757362193
