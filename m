Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302E81D5CD4
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766023434; cv=none; b=UcGaQ18HodlwHoTBfDkQ7iBR/BosZ3q/YjfINL8BqcSthk6ncIyxHoeCYHQGDt45HJdUcouAvMFF10vEz0E6x6+MI6LUDqek7iJTNaN+HRcc726zG9aEvSRCmo50ke/jafqruvD0Q26ACX8gNfIiAAc01CX7Poz+/sHh/VB85lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766023434; c=relaxed/simple;
	bh=gSzb3t3/4SqHYl+IGjW2LUcTDeeDbSipNLjdOnVHRLk=;
	h=To:Subject:From:Message-Id:Date; b=Nop/cEGDYJe5IBsuHWwb0ihHO09pU1GuOT0UOU5DwGZMbQKtaiue6h8MGUbbLhyhy/WyxGUNybNQRidlZKRpS3U/T1m4IJXGNhSBv5oaR06PyG8O0oA055PYy2NEuZI8pzUwCMPLIeGgqWfSAF8+Qzbrc0lzFLQQshbRv1ty32k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9VAsi9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9VAsi9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AA1C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766023433;
	bh=gSzb3t3/4SqHYl+IGjW2LUcTDeeDbSipNLjdOnVHRLk=;
	h=To:Subject:From:Date:From;
	b=A9VAsi9cJtQlT1Ut5i0virWfs02w/gPLYXwWC0IBDjoShYXrKevclm0ZSgrv2XgJr
	 0sGdfsCbcrnh0cVYH6Qycw4QbV8EJczEMUuL8d+g/O/p8q01LkovI/OnJavm1+UvdJ
	 T9VAJQcA7wKEHx0szuEo7bfWFZkQ4T6jO2oLPQCSs0iDKfNfwSnbj53x78ahUN+0eC
	 IKyPBfLGRr5Nwzn6HATWgkWUNYyRc4NJUGNROlCzAgUhNz/XS5jFTaEOR1fi0mmimw
	 3KwXZaJzUOHdtv+QDMnG6UGBz+MYl5i2ytVmZUkSAEL9ZEMHlREADTfHzI4QzDGvEF
	 SdbswajdwlpPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9195BD68BC9
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176602343358.21806.17819923970444317817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f70bc61009f98bf87bb4b42d8ffb6880ffd92dff5ba779ea1d11b2c0f5496ab8
Date: Thu, 18 Dec 2025 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766023433
