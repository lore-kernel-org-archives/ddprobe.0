Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D6338DF9
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766745234; cv=none; b=HDwuGzJg8i/ymtSlNxFm1CAO8KTvFmIoUXeR5FFLWZEt2wIFoY9MHzeI4lwfU9Ym6hCWXcvR7lQ+o7YDEPt9tEzzo9c2Z5Rm7nqIwuot+C52hA+HgszrtitdlyzIiConSUkbSGcTOA8bsuVRRfAKB8dtp2UJLVReVleGllukPzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766745234; c=relaxed/simple;
	bh=fPcUbGPVLlAmquhJd2Wplkv4mvrvIUBlNLR77AqgXNI=;
	h=To:Subject:From:Message-Id:Date; b=u9eZBmNHh43qR6OS9AafmozSY/VAKTdwhzpWWLkRvBRJ8OujkWAQn5HSEPzhNrZcecz31wKxEUN8iQaKnbOGjYVO63JSFzpWVtuoKP8XO0ohqSsDmPvhBNEcTARXQOM5xQluaj7rfyGMlWQ+OxtPrAg/4b9FvDKPQFRi7063pR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYonHKI3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYonHKI3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB661C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766745233;
	bh=fPcUbGPVLlAmquhJd2Wplkv4mvrvIUBlNLR77AqgXNI=;
	h=To:Subject:From:Date:From;
	b=jYonHKI3HO7Q2xi+9nqkcriIiFrLyaoswhZSZHG+17dSCPDJ7jxQur54KXaeuZDRV
	 AzTyCJJmszs3fGDaNoLqrR3wv4RwRvmGiPrTy8qukJHxsP5Pw3oM2VqtcfLy7FlGqN
	 WM0DKSipefoljslK3VZs+k0nvMUz6wXoKQC2q0WzAM+8D06gGApA3saCXjCKIh5R+V
	 GaLDTZolSjBp7GvTBVYrnUWqhZowE29tbt1A5q3hoevsw6NRssQgcZygJxhI26wbE1
	 8HyNkx/w5wh0LDvbn0N2/Dhh2gYaLKoCSJ1p96uJk3sTDCr2NmNqIqn67kMuKaoyLn
	 B4JFaNZsqZmRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96661E8FDA7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176674523358.25894.17359269344535669773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 192516d4434f9c5fa940c8ed0117ad85833310e2a5a509df5316f41719ef8171
Date: Fri, 26 Dec 2025 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766745233
