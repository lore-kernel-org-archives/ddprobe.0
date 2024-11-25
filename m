Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255511B4126
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732553754; cv=none; b=f3QsF7ylUSiX3C853G4t1qeZlEmsua2IzsfEnpFZDVwDfHOvZ1D3srreznyPOuYRPRf6tHAOMVaiM3AANNb09KrrazY3iQSdQJyYPPXi6tewZzKa11WOWs1DPQ2eLBUyEkbSsdD0dMLt9naginPoEqgUZ3/p9YEw8qbAdcGjolE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732553754; c=relaxed/simple;
	bh=KVcnzaRFVbZANDKcnxJbF9YcRZs1hon9rRrZtex1fEk=;
	h=To:Subject:From:Message-Id:Date; b=MT+mb8ZjFNTZC+PhILcyX0UUvuCXKdJKvCuZmosrQCySkaSoLFZ+z7wuLBJFlUt7hqNj9J/9UodWdXQHsyXqGqEmBfCztVXqVFgxAUDg49EbGp9Mo0awFZWoyHhag875gJm7sHCiQ4qRkvpgFN4vns7p5Nf9hJKUd6jcXYhcAQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtTudxnT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtTudxnT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19CFC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732553753;
	bh=KVcnzaRFVbZANDKcnxJbF9YcRZs1hon9rRrZtex1fEk=;
	h=To:Subject:From:Date:From;
	b=rtTudxnTUqOF80mYVzTaF+A0I/SHxmYhXgxhRtZbYYhZ5fdeYtPxYqFM4WLvHR4af
	 jgfV6TsQbJauMbBDt0PlX3yc3IdolWWyQWXcDlAW/kQdK0ldPsA7Ih9xwtSNgdt8QR
	 SAs6HX/oGIXbarVBazNnxcWXl/vkXcwE7sbmJOiUxCunPr7ERiu54mLBYZ5aZK9g6g
	 GYrk3fEvTt+oKHURsqhUTvyWhk2amXIo92vaTtcoWt8xtbXvifvraLHdjlMnUtQtNu
	 I5lf5BhEi7h/JegTSCnLrQyoUkTsqhwaczUiEaLhctm04jbL9+TwDe3gDHXDPwQJQe
	 HwLlW5nPNR7rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C92D58D6A
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173255375359.14788.1070086733574031719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fee0470238c24dd3633cf5f3ae5a7f7fe8142786ffbc1b0c52d3f09d0b76cf73
Date: Mon, 25 Nov 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732553753
