Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0693090F1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763113794; cv=none; b=kQIKWI569InfbKlrH6BFCb0OkE3DG6Vw3Vxk5uxDOYgQF9Y9MCpxDpP3XXDKmywciH0mBmMZoiYflqi7MnEaMfOsQNon2fjok0NSaKFjbnL7vMs2FsD2zBArvcQZTymCAwlrDM0Kk9vSGRtZu3eCWujz94xhyZi/hLyOwuxQv1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763113794; c=relaxed/simple;
	bh=CAjKZLxYLn4gIgMPnDgcuYQZrwJXVE0eUNU7LXYU0js=;
	h=To:Subject:From:Message-Id:Date; b=lYiOO0cz9KmnsQfZI8zRYzAssVa0BujEBjQGhdRkqsLemZwNapxniTFySjY7JHtvPTBsqWuSOidzXcbvKvo9xxZ1kI7KvzTcKlJa0ZFl/VbvRtNA54QlqZHip2qUaFs004Y3B8rWYsn4EvZaGsztCcK3k/H9EvsXr7LJqBuF2t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNswDP48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNswDP48"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4C6C16AAE
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763113793;
	bh=CAjKZLxYLn4gIgMPnDgcuYQZrwJXVE0eUNU7LXYU0js=;
	h=To:Subject:From:Date:From;
	b=WNswDP48ROz6vvNjhyyKyZIZGM/8zLnBxz2Kur4zWsq4rwDwUY1c59ao1TEgNA65h
	 Eb9bPW7I/oFKOn1hTqwtwQQcy6HvpFujl2Xp9lvBSuak6wGLCyez3xj7tK+HHWskya
	 6KibawQpRIsKtz1x4xZa4x09zOSHhB5PF2+0uuCXfJUhhMxsmBNenkzy8JFfkrvnAM
	 sS3gKzPZ3x9WHxx7KgEJ5J5joA7zfxB4NSugvzROmK5THgdKdIgyK1U4UqWQt84OWi
	 DQP6w9RXQxuQZTIAaSFzeUs2cGuzH7kttAF1qMYKNhfbg8E8FDus9SJ7LErNwmSu1S
	 3o+KmZvSMmM/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913DBCE7AA3
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176311379358.4336.16756575501737328703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d8625075b3d483d868b040891d89ecf2b50a0cd693025c7963628da45d0255a
Date: Fri, 14 Nov 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763113793
