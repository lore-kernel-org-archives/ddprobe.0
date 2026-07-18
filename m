Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8971F91D6
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 00:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784335114; cv=none; b=OUgBLPJ3HPoHGzmzXoaH3BhuOH+0m5ORRXMZ6wT5Ha2737bhFUKewMcQ5f4ownFK04m/g6dh8hLYILvso4SkKyMUWjAoD1yYHegRDwt3bPRPFnlCIpyjEdE7RuETEb9faEHZWQSUKGOuHMMwkfeXxtYIK6lBhaVBAschwBEDMK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784335114; c=relaxed/simple;
	bh=u2dyG7KgarLNYG9RnrboBuYLEEQuUsWYxgYR7iKdCQY=;
	h=To:Subject:From:Message-Id:Date; b=dfqT3e8LOT9Jbp4oHd+ly1h/FgXMeeKkr64Oi6THln0zGPh1xUehSDrZEMA/OsM6Q75OK5GYK6Ke1gTJjcdTrfxty2oCN0Guw9A1fXKSp2FSpCWCXxP7onCfO1+LC3x+ghGSHNdI7s/ubr2U9fDsyhmnVHW2aCzf1kIQ4kgds9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvxcu4Vt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvxcu4Vt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E74D3C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 00:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784335113;
	bh=u2dyG7KgarLNYG9RnrboBuYLEEQuUsWYxgYR7iKdCQY=;
	h=To:Subject:From:Date:From;
	b=nvxcu4VtSZAPGAaLtoKpld8dbIYSKVlRcRCKgdOtxD+/vwEEQwl1niRasUVyycsE9
	 dpdAUx4ulp3Z3MJOITSXV2CXT0A56fGxpkIbt/Ld3oRh/k/3xc2Nw1UxW8t6pK5wEr
	 dwrmLdJGQ6qcXx3k3xRFHtky0eUceuYz1keJOKha/lJQcIOcWb/Iypbfn8LXpegboS
	 qY0wFQlPH6z1vrGv11yt7cjkv45HIS5iVnuMJZKfxGU5NZ8IfMVeqwe9mDAgWtyR7R
	 rV7P4nQbb/yj4lDuYtwNhggHqxGNG/8E1uIEOUxBzsPx8mgrRzQOPszUS7v/CBPQxk
	 krc0fNg2c4I0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C26C44520
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 00:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178433511368.18774.8993757718000632065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcc4abc18a1eaf335aef7035a1013c50bc0f7aee7b9c2b6708af9921680e6727
Date: Sat, 18 Jul 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784335113
