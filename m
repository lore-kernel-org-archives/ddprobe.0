Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397AE15350B
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746311994; cv=none; b=I2xFk/uDipYI7thyLDd8pweWUV+xZu2M2yuoNoOaWFVQ+dKjTNWHBIcALXTpFxyVSIN/WXDhqExQNwncyv0xzcSs80uvYCOjW8jw+F18BW0Pk+hu8XRS0XzENFp0eXI5UCoZvHznMYiIvnT52uQSbuTyrCE48Cj6/Hm3fQUYMHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746311994; c=relaxed/simple;
	bh=Isw9trqEq/5dWH4tV5Gpvs06+dvbqcNYbw89oyA7PwA=;
	h=To:Subject:From:Message-Id:Date; b=oAKJvH4Cjvq7UYxt57b/7DGJaMw+v1n6TdbCN22356vCghPUdbpj05erIFrz/lztgnWBh9uf83iXVRUyF8M4Ey4YspHLy0bPuS1BcyFa96I8qi7F/SIM1/mqri600iNI9FEnY7PED/9LZTQhkiUaJ/liXEEAqwaQ71vcNorzfpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYsxvkr1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYsxvkr1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A006DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746311993;
	bh=Isw9trqEq/5dWH4tV5Gpvs06+dvbqcNYbw89oyA7PwA=;
	h=To:Subject:From:Date:From;
	b=BYsxvkr1YjWxl10Hz137uG6dMz3VAxfPBAsAhkfDcJi3/biobqRz6eyz0J5RtN3yZ
	 1tl3fpxKbdnYwMO9Vu9+N+Hg79npmXYhUBossCOJ63woccyxb5TsPhUOUiph8SEF53
	 Ikyjmn0lQ27uPW9bsnntUkK6yejsuge+1hMB/C4LB1U0dUoUpu4YVdgNof+il0Sk4m
	 Hmcbdutt2D5KlF0SdtMtG5+7Jeu2kZzHo3ubYYjLoZSPju1Axg3PCdNRfw/vrpxwFj
	 DhJnthtabAF/nrZ9OG946DAw/her0KupLC7jZy2o7xqo6nSM+Cs8P+fkW86esVzdP5
	 MJjkDCz4ZzofA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1E4C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174631199357.13786.11030178827095446947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82e32d9aa52c0da52e5828f2684270b5d1b131654047e6ebe3b536b556bf27c0
Date: Sat, 03 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746311993
