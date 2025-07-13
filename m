Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D753E1EDA3C
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752407993; cv=none; b=bOkt5+4yfWRuMC/TkQvNvIvceaPQHUvAehV9NSPBDljMMJ2zagLr5wZhhHmMLfBQMKAC3GMVrOdHJ6qRTENIDQxoZnVlWprPUH3JrHQ88uC4x4Drub4F8UoUUboaewas5midyUDJT7VioRkj3wQfk7MmSKS6yJShn3XmLdOkjco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752407993; c=relaxed/simple;
	bh=biKFBQ9Q3MO25AbS3TDKgYv7Ltq4AhSz4L8bnkeBZjo=;
	h=To:Subject:From:Message-Id:Date; b=bogfS5fjb7q79oAdDW9pyORqhT1zoHZSIKgEHNBOwjkBo+KBwpYZEeKuDJ2Kgf9r2gC6fUPcSKwTa6khnBB//q89+YEryxSFwdJCrfIGjK4t+hGB6V+UDfcCQtNLJr0pW9SXRlEpwg4QBJZX9I/GdfA3DVK+O7XR7VpsEXY6C70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diC+Lrtk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diC+Lrtk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BEFC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752407993;
	bh=biKFBQ9Q3MO25AbS3TDKgYv7Ltq4AhSz4L8bnkeBZjo=;
	h=To:Subject:From:Date:From;
	b=diC+Lrtk1gItc9Nv7BMjM2PlVP3LALD5CW5GxPpw4ppPxh3f7n7ZX85utypyGRfPh
	 EV2xygWwB0NpCcgd3l3RZGiVedvQLqb/0iy1XGva5leSz6TH0oHDbQCKnuRWmin8EV
	 slT7IajMDZduv1fFBu3Peck4JlfO7bPYlIJQHjMvqU+02ZkJu8JQMEM5Q1P+3xhXE/
	 Jl82iNX/iMm/4uoRtgTVQvoLZ1OyHssV2WhBaPA9dvU/DyCEkyW0xbrhmiKgUUOtwG
	 Jo7vhxFFPYLKLFTjrG0TkvGg//rxWTUzAeTG5DUR6dSOYk5D0++jUvTcX28IMuus9Q
	 o83bI7vhFzF7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930C8C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175240799358.10075.2500452615862298278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5176f9c40cac51a425a397e0025185db1c3fd8626f567dad4584a0fc9d0788a9
Date: Sun, 13 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752407993
