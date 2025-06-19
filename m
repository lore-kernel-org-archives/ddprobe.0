Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C686C23CB
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750358393; cv=none; b=KAl95QcAC56PJkMeDisbj8yysiSbKrvnmxOx/zGZTqodEKCzCmH8kn9FHSKx+yrjqNTnWXv5gok75D3yozbwW9NDTfjOdJoCoTd0NmHL7Lu5hFUkdhIhp4W7Q4FmRU3CBG68TxoP9PulCWAN5Y+WsqIkjFrmJuOO+NEWdWbF+E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750358393; c=relaxed/simple;
	bh=0t0UAvZejhOxKwyK4h33Lq1NkWEc73haMfrxLDQnUcw=;
	h=To:Subject:From:Message-Id:Date; b=DvvwiizrmUDHMX6ZUtoLaK2dNF6S0T7PgLe991v6Pl4LZDWmLyeO7szd5+O4GpiH89yo/ys17spMAUQ8UzHTUlKpWXr3+sILZdvGDr6gtVsLLYq8bJmjzw4GOvg+FSWW1uuIuu7RaGYQVtRkbsmvxgdsYOWwLt44iA9JlGXExLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXafa+1T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXafa+1T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD10C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750358393;
	bh=0t0UAvZejhOxKwyK4h33Lq1NkWEc73haMfrxLDQnUcw=;
	h=To:Subject:From:Date:From;
	b=KXafa+1TfvZgHxQPEiSAHsTkAgHmIN+S3FYbJthdkimXQv1hZI0IFhGcjDDscNwLf
	 fcqnKJmyKKVR2AhgD4bu3FJQ7w2o3U0RoJjbc70eIER0JIxwGJFs0X44OYhs/zEJEA
	 NfpfwQDCnuJnkNiFISPKcMtv03cPZXm1l0LN0SrfHm5Rxq1xIWU6fm19TbFEgxdQ/R
	 oTUqjdsht75eEpKY8IHMJFgnNi6O1RVbNDqQS5th11MuHunvedc4c4WwkH84L1WDWl
	 uPQhRR0soQfdKt2a9L7I5/nJp8pc6nLfF+0qcgMOMOW0MmJnbSDzehgVO53EwTxDwe
	 bwICGzkHOVdJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF83C7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175035839357.23788.1495403946850427322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1a1aecc45ae7694335a8339ce202afc02616d6b81062f49c01ea4722cadcbec
Date: Thu, 19 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750358393
