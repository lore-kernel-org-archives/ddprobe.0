Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1E9282F12
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787462434; cv=none; b=t+j/eJIstVaplxnwnO9uR5lV/SF/NLRP5+D5f7xX9NZjyCoq+CRHWPXbtn/YY3FsxSW91lsjOk1XNyRCVjNm0lzuG6Pk0h64GERhosXXGtG1qHJ+zjJhfRgAZdUjtqtmNbeycu1iVWTKEWApMVs1Rd2CK7KjXwXcGzTIL/toC9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787462434; c=relaxed/simple;
	bh=Bhem9rxXa0x8WONCeET+hGPCQPYayqOxySqXSixfhO0=;
	h=To:Subject:From:Message-Id:Date; b=gEurZEeAg+apaUHNckW5TaufYV4gPjA65gUBiQ04Vh+DOiF9uGzxnoqyWAoAYAaqv308XwOkufyOUks2hAifZg2ejAeuvsSTagjakzjy8SrpFVLQO6iOYQJvzkhSkFwWuIJTjFbTDM26Xdkb5C8aDP7KfKdOol5VtTPd3nt8Zc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ashU3i7H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ashU3i7H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1DCEC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787462433;
	bh=Bhem9rxXa0x8WONCeET+hGPCQPYayqOxySqXSixfhO0=;
	h=To:Subject:From:Date:From;
	b=ashU3i7H4NedMJz0wCmgWPlbS1yfB6wNndq/0x3MIc0GnvZ4l6yumCdUVWGFpwKFF
	 YPis28CxDA9dyVMswpb0+gtyqQRkRwCttnn5MudsCrb1elZUzYxnUQGMVIKL+W4Lrb
	 w/t2egB7OWTtLioZ7w9lS1mtUONNIVimMHI9DzihN9jm2Fn27nJBShb0QMh/LRPaQU
	 rF2XNEO0Y1zXup7bh6ER1fUqM69a7ykh6Kprb9M7mSlpBYdTWws1YkRh0xh+fkIa/H
	 V7OLRSRIwMyMWg6vCHN118Wb4MuP98KdSnDdTXR19rzQlvyTxsb71hOLb+Zp/NZhDO
	 xs6IEpztnIFeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3554C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178746243370.29285.3639867724099865395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d4de200104cabf3e543b57584380a9a2d76d69931db4f2510b15c7a0c0d74ec
Date: Sun, 23 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787462433
