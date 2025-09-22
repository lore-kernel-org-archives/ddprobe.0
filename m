Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1562F22DA0B
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758573594; cv=none; b=FatFN9iuCYLmPPAro3FZvOYqbpps7jaGsM1lWngb3Y/hvF++yWOaq1rgWVFCjyg7DkOOENwJVWxh4z0oI1e27G0v9MKx+U8JHT/fzziO1RuyiFCTDaO7LYKrDFIIOFh7Aujm3DlR5WSBfbFix5HjkeU7cZB9wn8K2zZK9h/pSmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758573594; c=relaxed/simple;
	bh=WKSt2Mm7lvGJzG95a0pESyhK86bzexOCxGuQTJVk3cw=;
	h=To:Subject:From:Message-Id:Date; b=RG+qFqUbDKJd8bPpUSDJzHDgVaZgSNG8ugo2gIEyN6elYk7wLY1qQYlBkcWUEazmn+WW7KRvAU8d3Acwy1a+R/FJQDDOtvs/dUISf1yoX7E/3Rf6IRpt7uTTVyo2duQp73pLM+TE0PShE3bVrekTYXw/JJ5c6bceDa0Pw5AI7po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FR6jrf8m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FR6jrf8m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83BEC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758573593;
	bh=WKSt2Mm7lvGJzG95a0pESyhK86bzexOCxGuQTJVk3cw=;
	h=To:Subject:From:Date:From;
	b=FR6jrf8mPVb0+3iPgKD/H6M2M99bnSk+lGJucT/FOWdyiZhDH/EZ7WjR/4BSbkNTY
	 4wBPK9vALHweNfJyt7y14Uzw5gMidAcAF7zoL/6RtWu9olBqUk9G+I1vz3hFXLyEua
	 Gf9f2viOiM2iGbsgixLm9SdhHirnBlJKhR/1BkijWnpKR9yVtcVikml6edUZYSe/71
	 xO4E/ijLTUZtnM4GIecEhhZqwqrQqYO/VfSI8DEyhx+r+ppga/XlBraqLQGDunwtLQ
	 SauUUOzrqsqOMIaldgePCdo2vjxZKzVa6TSREQUMaVNXHSlym7wH2HuONKuii49N8K
	 9GAF5X8mTmHLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BF2CA100F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175857359360.27204.14758696112107549056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d5b53dd068907c6827c0d3edb5e08b5222ae4c19d9e44adf9f2855dfa65db57
Date: Mon, 22 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758573593
