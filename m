Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDFC7081A
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733001354; cv=none; b=GLKr5kmkuK01QEqLTw1OulPmEh7lHkTge/5Uh8HrY1kMDxXvxcs5ttEcP+myeyVMKXmLqxv5CkD4FS2inI8qUhK2NlzZ+0KckApf2d/IYTUFv50GxODsHudtp5xX5LkepLtyI7y66alFjFPZFbFqED6C68U/4G0XdMP47DcFxYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733001354; c=relaxed/simple;
	bh=w8GWv4BBVxcCzVRbZgtQjnnKSytlgCr16uFJf+cuE/8=;
	h=To:Subject:From:Message-Id:Date; b=LwFQpZ7G5GIao6NeHgQnKcLYDZpLd2RtVK2Lopiw5sRoCHHWFLWKcDfn5dcjXeUgmLdqWdr+ZQV4DsADsS2GkfGgkHQ7gJhwmMdGw7g31nB9CYbAXZ45HMB9Y0bGmenab5WQDyr24T9F7H7qJqQrT0RrrQ/0fNM61DvQRWnJEPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwBcuMdh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwBcuMdh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2955C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733001353;
	bh=w8GWv4BBVxcCzVRbZgtQjnnKSytlgCr16uFJf+cuE/8=;
	h=To:Subject:From:Date:From;
	b=WwBcuMdh0lfs7Pi3J5cEzx/3EBNjPRbvZvvFJST0hzt4Tui7h9qw6RC7UW9Lao/h1
	 Jp/E05VOm+r1wVk8Y3Qaj89fxjFVLccCNrY2H5VbdPpbIJjNbywsdEH5oxOffQcZKL
	 d00Zhha94ZXG6eHGdlKGx54zRt+NQo5u2kopaDpDffxTqF33ojMvJlqYjotUrj7ks2
	 ANpZpAbIkjVPHjN+T3kNrWksQTmxLV57Kb60eo4V31Xl72qoj3wDn0CdOgLhG/71Qs
	 VYo7QOWugdMuyGE47/yxYkfDL0lIPNVo9ZU3kAVJS85kVmG+6vAJLVLp6DCkRZ2t94
	 BhQ/XMY1PDWYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C71FD7360A
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173300135360.30315.10779352899469486909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bae0a2658f4bb8d27244479c5bae98d9c04672fd2bd6c19451f6bd4f94040d4
Date: Sat, 30 Nov 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733001353
