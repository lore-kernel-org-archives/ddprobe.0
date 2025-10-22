Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1526E34846E
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761140394; cv=none; b=DnBYdLTtNwi1SFevLNgu1mwYY3aCYdbGWfxhkRZHoF/7Ql+iNZPIrlEWFojnfSrkt203jG4NjP/9iF2G1p8FKAMez/t5FUy3ejJmeg8OYlwMPhecYG3uERp1gTF4Ap8Od0AAVOJRX+ad3Uq7xqVjT711UM88DLTmmIxayKmZi3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761140394; c=relaxed/simple;
	bh=7CWq9kreNwUsL1XjyB23TfK8UiGE5PuylNbDE9pUjV0=;
	h=To:Subject:From:Message-Id:Date; b=FXpglpYRTXzTWOrcCR05gS9YvsNOQNDE87DLe1DP3V2rePS6qgGmpU9TSld4uq9wr008t4qahH5osNpMetU+sUoQ1cWxhIn68Y37dhg3TYAOXnygnTJyXCvoVIF7zklqm3Si5o4bKGVZWeVkS0xf7a0xk/SQcJwdluiLBLgh1M8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7po0LYl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7po0LYl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A460BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761140393;
	bh=7CWq9kreNwUsL1XjyB23TfK8UiGE5PuylNbDE9pUjV0=;
	h=To:Subject:From:Date:From;
	b=T7po0LYljfO/lxWMoRYlRq09OVJS7cLxFBnvxz8BxzZ0dJS4JZh05pGXWa8aIMrr8
	 /AG48Tk2/TqJKs9GMdD7sKfzBY9Od4dt22oD0M8TVopJZETiaclqFTgsFMztKTtVjj
	 iT3swxWG35W8/01z4IVS9ae6VTorHrsW/gm+QfH0TUOzQdDvSeX5Z42Iq3NZsMaQT5
	 9x3NYqHzPV0d1w9XGA1SN+lsC25PdMspfgwJQQVupu9qQ/yUl8bu4OktHLQboUxIqX
	 le+44dBjzXFNCFxURhm85mkZUBLxk5+0O6DcWt8cej200TOj9FCuZllSMSPDjVQfUp
	 KaGNoEpKo7Gzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9027CCCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176114039358.24355.5323140493663737640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d4bb134002724464d55c3a948c6c89056167022f403a5f884f0eda5bdc88b66
Date: Wed, 22 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761140393
