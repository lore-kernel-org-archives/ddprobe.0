Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4370B5D8F0
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742767194; cv=none; b=n38wmkxusPgdjjhtfEmvO3z0DrU6nv/u/Aboe+CoBkBkHQ2zHLVJsAPs1PvAV3XIPQMZINZYTkF0gm7FDInUTUNC95r1YYuSbxmyIn1k85bJqHOAz3w2D7lKe/e7JODLJlnJBIupsN6fQRJSQGJXnfX4R+6KWpcosx0j03qqUGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742767194; c=relaxed/simple;
	bh=MfX2CgmAcai3QTTi27a/O/nJjypJd5c2fWX8glf9WaQ=;
	h=To:Subject:From:Message-Id:Date; b=OYbombR0QMdHT5G2lFTS09Uaq2HYQ5eBZepxpYHMuJ1UQAo5LALGIQH6qqWEV/nxfGt3WTjroFlpMpn7yie62J6uXZltjeshrSwltA+gSJTlt79Dm5YOx79IKVlt1BxY4iKX8qcZvOMNkDjSHbtNw/pjW/wOhnLh5uLXI5oiy/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kylz5qlD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kylz5qlD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC654C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742767193;
	bh=MfX2CgmAcai3QTTi27a/O/nJjypJd5c2fWX8glf9WaQ=;
	h=To:Subject:From:Date:From;
	b=kylz5qlDtXGEGMmpnB1VNWlRLVinj/Fa44QeDoL8dBDaJ0oL6W8Xwy12ur86IvN0Z
	 /5kYYI9RxsjW5TEW3bGxS4nLyPpDkADcW8dmtqGVy9ja2bB7jTRdgTZ28jfyL/jaA0
	 oScJUXWAglTLN0FStiFWEEAlelnZbrnNLlszs19iK6KKZQsWZKOfJXmfLky7Mts/8s
	 LaMXw99JzPA9Ya1cNy9oQDx2kDkv0YyF80vQ0r3hXgwSFcDl9ryJitnf83AcSm6rFE
	 pEqjv8awKA5uEyKhx/RJH/CCQFWijdn7bdfkjs5PGnp7Te+AVSPudMwFM6Dc+w1C+9
	 3EZ90KX1Jq8qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F1BC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174276719360.3911.17247231643107009593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 135b35d42242db669b6c824a29e8a77ca1f393a4599bfbd79ed2a6bba1a4fd7a
Date: Sun, 23 Mar 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742767193
