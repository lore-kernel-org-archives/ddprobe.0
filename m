Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8F52FCBE3
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768425834; cv=none; b=Kbrrx+3DjAl/8qO7bj66NrlV0e5PN11TjQYf2TCrnvY/mGdQoHOHk87fzbjVqBDL/Fxry8HpA72Xuau1b9V/PnopMAerqinJIaWiiaALkcNAfFy1oC0Lv7nQPrdyuh04/LfVKWrw425SlzT/qA449bBRcIhd7R6skmq6AGE+LVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768425834; c=relaxed/simple;
	bh=A/G6WQTjpvu/qettc0SlIbZPz5zE8D+kM2L7lVsKpmw=;
	h=To:Subject:From:Message-Id:Date; b=LJzn3i7wrT9fODxND1oGKU8W6xs2LkpbgRzTWXrpEGtc+JIkv68n/mUtnFWVcbxcoResa3PI21tAavPv6ptywhPknDToftQsBfIk3yCRG8fP8YzJt7abdf4EKC6bMD3O+ky19fvuq20ihrPLPKZBDuTtXTifQE3Y/uo0AjRGtE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJ1ja4XJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJ1ja4XJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFCFC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768425833;
	bh=A/G6WQTjpvu/qettc0SlIbZPz5zE8D+kM2L7lVsKpmw=;
	h=To:Subject:From:Date:From;
	b=KJ1ja4XJiLpEvughYl62LUUFZfEw/o2yTGxWO6eVbqlwEMegMINpZQjzoymieChNQ
	 bvodKrNTKcGmKMwksFBwcuf1OKalQf7+G9w9klM9tdHzgAknFEAiTtSyxVA6JpFF8r
	 ivZgm33vZWibWnsdc1zf87YPEOKCzov4Xl49oC84zoEOV1ihkIP+v2vpneqQ+KnVqQ
	 Egdk0hAxG2kmGGmCJyFsL4RI50fgLz10vcLCZ/ncQjfQ/z/hr/7j2Gx5rGOx65Zyi2
	 qulxnfJ7Jt/iCrXJtaCOVZQdZgJCCLAzBDAdzGQWyTWGtKi3UFg8vkf3c4CzrSqkmG
	 E3DutUTtI/emQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98426D3901A
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176842583358.8707.6377826536423054243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36df82dc9c2de63d0c58e7af1a4952f94d384a4dfacc6647f78f7f42c8ca820f
Date: Wed, 14 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768425833
