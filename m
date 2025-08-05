Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B721F4171
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754431194; cv=none; b=UJTofDHJA7Ikt8Suf3ES8abkEunD3VH/O/WX8gXnIH7lSqzEvTviZJY8YxCZpj/PntAMrVWZaAYy/dPYh3BQwQzHLyy7t7ZKLdZsItjtsLISJW+h4CqxxwpH6j7lCMJrV9y+rDJrp4UESyhNB0orwgFztPhkPEdWuM80KogFJ/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754431194; c=relaxed/simple;
	bh=bQPu3Q9k7RjgIFuCcUMIOm8DRpqWeuDE5JpacVoPLo0=;
	h=To:Subject:From:Message-Id:Date; b=lEEQiUFtE7Nawk1OhHOiI1NFahwbhStoa9iTD6STwPgG8sye6F5GtEZM1Oph5laKhq+CCkfoyVf5HzLSO/uDxMAnSEfvTBM+AKYMdJ2XBGZJxJbvdNhXgrCe5z/cBx7BeilJMF1O8hcM6hEJWN7HkN6rNHFqM+N5jg9KhSBziQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJ7v+18U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJ7v+18U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CE9C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754431193;
	bh=bQPu3Q9k7RjgIFuCcUMIOm8DRpqWeuDE5JpacVoPLo0=;
	h=To:Subject:From:Date:From;
	b=BJ7v+18UJ2cRWkauXZXHcA9c6aWria/d9gZTBTJieTP+xxKih1pPiNHFNCMtCBipS
	 k5Wh88aYUmjDXuU5WOg8hINAcXX5V/HUtmn46R87J1DF8i769RsVw2AXcMZ/wXqhOu
	 EhygsLS91jU4XlNMuRwz6HIpApALDM5qG+BW+1DxrH+Gpn8/tELi/VS3WP5yC+cCvy
	 jMb2YNrt+4LB1bT9u19zEkb5rzk1XogIHxCPC8XN/Tzvf1a4AhgqEEg61YpgBeQNTP
	 cAyAGZEejXrB+dH4YgQ5U/WPpvOlS+rpgUyPHGgmIY4RseDcEkfJncNyEsREqxqHDt
	 TvfzWoWsGFZAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91484C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175443119357.6392.11035254434423340064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c53acd0d352faee46d841dcfc7ab433eb1b569d9f47ffc45bb7e43f5825f81d
Date: Tue, 05 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754431193
