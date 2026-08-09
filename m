Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528D22777F3
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786306234; cv=none; b=cRR+xNWrzPg8gnEBC3axSisfbeF0rITIrDHrHr+PGIrEywb9LMHwco0u7Gz86qIunYPRGtNh+803Gt+H09dpyFcpF64raCO0BDiqkaNzukCNeNVlJUhjSI5hFI7bjvDzSSnfV4ssy35lQTF7Ck5HOQKmfIzR/1CFChkgc3XcXlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786306234; c=relaxed/simple;
	bh=U0zhDeIyNxyZkGvFEYREIuj+XkZpZo6/v7YO54aEl1U=;
	h=To:Subject:From:Message-Id:Date; b=qhSXfMp8eJcc9RGW9gmI3qJYBeWV8gNoz6/g7FqBmqWbxikM1qflhEVKcTHNEAqErKZaSKV9K5nBVXfJWwAE4ibMQkw0vm/W2dTmP7p9C4n7zWYwciAKrdhA5cWkujSudhLZtoR7jdIdgx7b1EG3KJjfR3HelURFGqjmkEgHSp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=coYCl8WF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="coYCl8WF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BB2C2BCF4
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786306233;
	bh=U0zhDeIyNxyZkGvFEYREIuj+XkZpZo6/v7YO54aEl1U=;
	h=To:Subject:From:Date:From;
	b=coYCl8WFEZ1o5H5sN9bdmqjK1KymUChI8OcUfRqhTEA00DX7y1OkVCg89vPS0nZNr
	 P8PxajDsahHhLFoa4GeqCypCiLyeGQ6WWhWKSmOmrObgpYxBhAx1oijR1K2OlxDeO2
	 c68y5rB6A1wK04klYQzfI1cQPFZE7wvA9We2coNQOgzJjidWlUkgkn/liV4pMpjoTX
	 DYtOFCafXxWKxlTS8Y2HytOKwLnyuiAym8Z+ZJot/QmClBdczqcdJTQTJoMDPsQRZa
	 g8iui3rfC0Bxq5X43t5LoRaWOr8EZBcI9ABTHeneoJ9UFXgGt2vQ6XXF4IFPl246FZ
	 bInCpp65mL01w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3207C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178630623369.19658.14891648429912212000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 131a3ed1d1d45452df72dde3f0c1f4f89b6b7bd972879ae2b1a9b69afb145dd4
Date: Sun, 09 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786306233
