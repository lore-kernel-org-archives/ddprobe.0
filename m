Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BD3354ADC
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760973594; cv=none; b=NMCNix5vgT+Mq6UJx7umP1DYtebMzgIiwQECuHagMB3FnkKEoSJWxwkIh466TIKaahhFDzz+0WdfCmlNcYEjjGtKvbk1gV4a3iiwNdvioPNbKFHf3R8A04PcJ5DKvkTacRgQvvTOvnbeVPgQKofzbrkW28UI+dah4yPfjXbMFN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760973594; c=relaxed/simple;
	bh=4uJnORwp8nPynhSJ2YTnF1OMLK2Ex6GnzoXWbNtUX4M=;
	h=To:Subject:From:Message-Id:Date; b=Vqo4g7ShnEDXJoQbqJW1KmCz68O00n/seWuH7cWxio1LGXBu1hOXYyNA/FUCzVmtE2VnFUxkYYFrw01/zX7YdHv93OQvIJrsE6Jgznae+W4dOnQqxvsizpEskp58c3je48JgoQgE+Zoc09Z/vbGNCkzDCytsgybcO+iwwEn/9/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYBG9KH/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYBG9KH/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52C0C113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760973593;
	bh=4uJnORwp8nPynhSJ2YTnF1OMLK2Ex6GnzoXWbNtUX4M=;
	h=To:Subject:From:Date:From;
	b=eYBG9KH/0Jo1ZDKFA9JPtjcVUF02ljRWGUTVDGNStQdD0DIM8cKJL4AmtNouu7H2S
	 T89VBR8b3v5DrJo9W84kTHmLOt1ksAzVhkNrgnFm1dZ4UoGMjr376oYKPfbWFReBww
	 Ufc3LXsUzyQ5aks+Nx+7MY3B7v4mTLb7XY1zz6j0o+/1o1aXe+g251YL2MR823oxrz
	 zhUeW4iv24CLMjy6TWYc3wcnsRlROPSLY4y3UPRfTjbvCUNmlGdn1IoYfuvDnDPLNq
	 XEzGvqTwD1NT0NP9sO8GqmMEmv0xcJ4f0ZGyQ+Ile+ecfW8ww5mykvJNdzaUcMWgN8
	 jWOcaEFK5Q7Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909F9CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176097359358.21242.15611579220989996819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93af9b07c80479ac316b7ab8d58cdbef9c0c198ff3d007842cc07b7c35e198e9
Date: Mon, 20 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760973593
