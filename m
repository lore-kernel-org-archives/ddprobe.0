Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 823183F9EC
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 02:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714962143; cv=none; b=YSvLUs/ixrU/vIgbNARolQEHEEKAsgsmDsVivvYs8A5U8tlBN0VehIUCW5OKQv3ZHRWF4p/YZTmY6bge5o6t/DsYI71DAD5o100LZGToe56igdQLyFD5WIohLcmd61jz/W8n/dmvP9Fndy5hntsID6+s48pX5ad3zCGdUUpPZNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714962143; c=relaxed/simple;
	bh=Yfy+6GjxwsOeFkvyXwZwelYIHqVTVXN1dG8l900VBPg=;
	h=To:Subject:From:Message-Id:Date; b=R0pGxsLeL1HVhfRVYPey4uISeDZCOKcKGyubult/h8YwfSiJZtQcBQVOfy0PdoCTPWFbC/8F9WJWucoIMCtQla2W6+oZoMDltnGt/p14JvVxeUpksRWLDhjp4lC9ZaX4GoTV/7v9y9WgTZjmYG0MuG8TAITP0nTo1rDbXBd7JiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSjw4pa4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSjw4pa4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0339DC113CC
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 02:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714962143;
	bh=Yfy+6GjxwsOeFkvyXwZwelYIHqVTVXN1dG8l900VBPg=;
	h=To:Subject:From:Date:From;
	b=XSjw4pa4IIHDlwKYHtujUcNAzmH0rMMuNd9w812g4cE7cs1/b5HOhQ1AFHrHUAVTG
	 2Edz/l5zq1n3Iwgire/+wGaXm8V+leJ83V3an8849I9aUjS3G7BwVumIzfZtp/8zbh
	 rwblgilUkKs/lOjLXDqD5AuPoWposZHyhkGzKPF11j1LDs2l5BFUDap4RQGpi9++8P
	 9SF/RY4zm2CwEfW6bYql+LECXzI6/6hHIV/C9eyclOfersWBAfkxz0z0ooHLl7xLUA
	 dPcT8TW4hm2m4mvO8zOXuSVS6bnoCdeT9cYowzwfbRTP6cjCTWPq1ZMhE6Fw2mFP9X
	 PRI3VALNBDTDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD42DC4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 02:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171496214284.12162.13383765710701474852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70eb826dd1f3f1a966f75d99f66482cb273eb7785b0fb12c8d97e9c2514d5907
Date: Mon, 06 May 2024 02:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714962142
