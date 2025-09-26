Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E471C8606
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758911994; cv=none; b=n/HnQtHByfWI73jek2xTjUxw/Z07XJb4uXonZCoF25nlsltueVQ+V4BUL2oI0AWA8gahaMw7eC8CPkS6iPFY0wn1qHg6ESPucX19uHjAzGZY6rLvTYJtfqXJxtxdfiRoWbTjTO7MJxDjG+hfKrFo0iU/NvSEX6RvX/jpQNLgPek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758911994; c=relaxed/simple;
	bh=+cIWO1mtgxYOmGD4NkA0AS26r6C5GfU14ZAXBDCLSdQ=;
	h=To:Subject:From:Message-Id:Date; b=NECb0KygBnF132jyc58Gwt83jHpcNo6vyhoaXEtDvnL1r6vMx9cUfPZ7GL0TsP/zxwitGikfwCOjSgQS64WW5P7g1rJVrcwEA3kzrbPs1XT0dDQhvDvgLD5EK9p14Hxhoe1BiPMV41JTq5l04JTtybDzapXIwTp1jKCje3FdTws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BB5pIOJq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BB5pIOJq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5899C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758911993;
	bh=+cIWO1mtgxYOmGD4NkA0AS26r6C5GfU14ZAXBDCLSdQ=;
	h=To:Subject:From:Date:From;
	b=BB5pIOJqYlVS/cHIPnqzOTLyWT5/piqu+dISjfqDehTgjlKvppnV9BopgVp5DRH74
	 Ubk6fzhA+Vb+FHFhn7F1dRzBMItn7TebK83CnGAO/Z3quswzqhnJo06tgrat5JP03G
	 u2XfGHb8YuTjs6OGSXqljZPmKbPwOi4gNY7g4D7vWnH9WQ11YltUoaNRs6TPMRGzLG
	 JvsyqYojf4a/OcrE1rvU9XjtSUl1YlGO7VCoB2szxT2jZGzm3ZmTxTCGXravheTNlk
	 DZ2S78AcKEED7df0j5NhdsHB+5+cFlWtFgcFqlVMyGk/l/RtrwYnMXWXrLYcTREs5L
	 Eppxr42ri0t2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DD0CAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175891199359.14176.6768796756631017512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a73388e84b8006ddb84cf850e8b39bb783cb6f041f4f6534812d62e83d0da4c
Date: Fri, 26 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758911993
