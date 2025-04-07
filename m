Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3331D1DF745
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744037394; cv=none; b=dtrNhpGI+3/GIue1tT11KpJaxtBcmrsW2anXXKVPUTraFhqlMEYUPbn4D9ygS7ihVELQlG+aJSEShS1pLedX19Hki1MMHN4k6XsLoGXFvERuS6dZMDa3yUs6eJTiQCJ5w7a9YALsM39ZZI5IZoZ37v9jOSlWNvh1aSXnlhcuNiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744037394; c=relaxed/simple;
	bh=fxife6NAo3OSd0haP+XR1c8woITKgDXrXxRUZ57RMRg=;
	h=To:Subject:From:Message-Id:Date; b=ELxG32Sbqz52plUWDRbqiL2WoUzwbiTqw5XXfJMkQg4cwEq6lrW4YK+xdQ5vOQL8tzyNpvUOTPbmWd8g4SiAHmCgFybxCD/bU/J/eZUqYWXFjPW8N6di4c6vt6yQ6sB/vUoht4ALhawzDhWQ3fIKmCpcRJVrUgXAs5cVh/jmPA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1z7iUnG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1z7iUnG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FECC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744037393;
	bh=fxife6NAo3OSd0haP+XR1c8woITKgDXrXxRUZ57RMRg=;
	h=To:Subject:From:Date:From;
	b=E1z7iUnGh/p8xVbtW5xz0WjQnk32waVe9QD8Vt2jQUofVaVveyswS92n/vvPn8bp6
	 uP+0ITFD2Deo6kYQ1eCRoXAdii5mwLeZkpqyjMTfwFAyD6/Z7IiCQwU7NmdZ+KZe7O
	 154ssxQI2NGK6xYxepSVAQNQhPnsxhetcuzrwrOxhWTr5zP9ibw+FdX52/1xGbtnB2
	 wPwPIfltEj7fL9dX3B+Hb7HUWmM42yE5m7Lq4latb+WHtXtx1Dbp3vgIiqE7foudQf
	 1Pux62LSMK3RHkod7f0GDDZahjoo7n2lvOvYs+MF380WuLzM/FPbETEkZU9YvwEWC0
	 qnl3kJDoFF2vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945CBC3601E
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174403739359.17066.5814247225784419070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e3edf6df761f36c83f8d891b90e80b7bdba2143e33d6528e41528dd84c7bb89
Date: Mon, 07 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744037393
