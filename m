Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA2C2FDC53
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 18:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782585514; cv=none; b=MU+qs/gfEYDqYc5zJnaIY03Kqt2A2rQir7nxL6nhB32Tt9PYpEVI1X/1M/4E66bROWEfLBkRSRssnVmw7fcW4fzMMcIGxWluJs48p7e83GD2vTpszELx/ubYCN6FTUqltt9P34XIQieT4VTSgGbYheOLgk+uo8RicWdaH6VWMwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782585514; c=relaxed/simple;
	bh=nOzKM0vBFqQJyv7UDcVN89szQEVYAGiMtqgp8tsQSZk=;
	h=To:Subject:From:Message-Id:Date; b=GPw4LTyZcAwOKYhSz9/ZjNKUghu+ZkyHLF1L8dr1XIMmLxvZYA5e/8PWi9pvbsmvmfyQckCTYMHh6KnVn1aGspHK7u/BmOjGjbBpaicmOCZjtX/9B4iWRcFrM9u6/zshQKQNJKOhA1+W8zk98Uf8dTq+siYaYprd+PRcKsiWHj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6YPPLwV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6YPPLwV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF791C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782585513;
	bh=nOzKM0vBFqQJyv7UDcVN89szQEVYAGiMtqgp8tsQSZk=;
	h=To:Subject:From:Date:From;
	b=m6YPPLwVAUkCMCzKOYpkRuhTa2gn6XaUHm+Zs1UXqXupA0D0/9dEfIrwSZjP+U+40
	 HNvs35COfqPB6tSsV1ezsN/iMe+893t49nz92TEv4Xju85Llh9Ih5xa8r0OMPakInQ
	 v7ch3cfze1T0QPWDe8dmN8x+zufAkRhMHPtmXj70TGxBo0yduo5/A3hbApv+Vg3ag8
	 hHRaDbXs0moOASD5G+WRhJQp4/75J0GomytqSlLyYCeYETG49qpfwDIHRa2sozd8UB
	 ZOXRUrmTFatFS9d1ePjzDh5kCgpxwPbxzq/3DPAnGV0MMyYSE6wWSP3A/2vja9uL4l
	 MwO2uEHwaP3gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0717C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 18:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178258551369.25692.18168436240786012536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed6a3a8fd120b48edb69c1bdcb16e003342ec8e5c896eee0230d53fca6a4f41
Date: Sat, 27 Jun 2026 18:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782585513
