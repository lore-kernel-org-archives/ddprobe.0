Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A18C25A646
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737977154; cv=none; b=nSVQc5jOInrtsh/q9/E9wkaMa7fM6g8d0sqoNd1c8RHPi3FmX9hZ3XchbkXnDzhVfYXPQLy8abaDmVwEmezfs4gYa1CdGl8Hps370bAu9PB9PE47uBS4GT4uhxWL+JPdxZffT4lHfTboh6bOgAnhmsyq8ZE2mMZdJb7HskYczio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737977154; c=relaxed/simple;
	bh=ZhFLLbisnw5PgRqapo542alvpsAAz7u/YoKh2suKd88=;
	h=To:Subject:From:Message-Id:Date; b=B/DaBSJtVzqRu1FyYlGIoDP9Gg4FmtrCcXr4wvdvwTtaTfQC8F9urxcLXMcAJzDzWn9osqQIMGPxmWoEmxYC+91qFGiCDnc7F1b0bHc0sWjgWOWrpwRLk37qraasoxiRXhYJh1O+6xIHRaPWPLftB/YmZxhpAfQqGg2A/60rUOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfOEmOr7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfOEmOr7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D797C4CEE1
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737977153;
	bh=ZhFLLbisnw5PgRqapo542alvpsAAz7u/YoKh2suKd88=;
	h=To:Subject:From:Date:From;
	b=sfOEmOr7noks9HuF+M3VPiG4XfUcNlzZPFeF6R6nTloR5VGgAAi01GCACTqlZyeTO
	 wll3tT+Ss+8NYfs5dclWHxMyzLlbiUFUi3zMuu2HfQOtLwhbsk8Z/ch2LIVnWZX156
	 CYHUtuSKFsxZM4Vjg4EQRjPIP77yuPqipJKddDlSNh5qpRtLU5a6ybDH9KW7mbNDF1
	 qfA8ltVnpTfVDWWCDdtgNMuKax9DkhsP75ejZ1V7w4USRqRvMruWT2oNr1nnOUCrn2
	 aXntCkPEbW/mHhzMbA5BLkTj/50as7z6Eb+nHBkHfsRwl2yPqf2nzy3peR48zjjFGa
	 jmg6lp1k01ONA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9ACC02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173797715357.9049.5216951260878444671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff7a83d6803033df958baa7354d01c492094ed12db35c97d999b4fa3f45807ad
Date: Mon, 27 Jan 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737977153
