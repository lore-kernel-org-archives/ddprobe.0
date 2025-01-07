Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232C02594A5
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736216754; cv=none; b=iZZo6ulhddt6r2lSt51S8H/PWXji3XhoWJWUl4zn/N/VecCDw2+zLMVyVZEyKM3SSigXE46Ux8o1Qn2CWhWtlPzjhZnCBx15TmumzQpjcQcnu0L8+pzGzzC9zcUOlRxSoYcqf+n3J3SfIporTcMZo+HGgCE8xFV+wCkHe8yIyqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736216754; c=relaxed/simple;
	bh=3zBqYBNnHSUUs+Xum2yTlo8F1SfOFJjaesKjGzmTdYA=;
	h=To:Subject:From:Message-Id:Date; b=HCTkS99yfvTo5Sgb6HnQJd1abDQfucRjbhYtDgmGb3P823FWYUVDdYMQl8gDaQwQmQ/b5bm2Ewyx/kM+R1yX53W+Q4C/2CwDCNwd4WIc3OpKD6I9HZpmXdUPPE0ZOTXjX1iWOk3aS22qlGpavd9ordbHp5UEnlGZQ2j+wFMbc9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1KQrxWa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1KQrxWa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BDCC4CED2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736216753;
	bh=3zBqYBNnHSUUs+Xum2yTlo8F1SfOFJjaesKjGzmTdYA=;
	h=To:Subject:From:Date:From;
	b=Y1KQrxWajx5OjPHiCYaCZ6Pj4k8fzoPmVVitSyqEjVFXNc7EIvdxIShSnRk1SHpMT
	 kOItVk0jZaKPtNl1FslHXvXH97s+Lj2ABvxtbkmeqys7BRHgf/EUlvSzy4RGe5pC44
	 HJkTfazuOume+l3Xb1FOuaAN0a7lXbMBhWO5nKaDoKQxNp2M6GOde/IHyy4LEqy35W
	 QwrKtwX8tjUvwTVblpAvbgERnJLhOD1YRNimKziO2XnhPU36onPLkxEmOn5dkIgmBS
	 3O1FuWNc7a8IqKgGQAs6XDPTlxtLtRkIgi+HpqhNC1p9spSdvjL+jS3pdo8J6a1cip
	 BJL5UyZNgsBtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955FEE77188
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173621675358.24356.2394332924343847405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ad8e2701e8f805051d97b9d9beb6454fb617b1b7d03d1ae00b80b8b35b921a6
Date: Tue, 07 Jan 2025 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736216753
