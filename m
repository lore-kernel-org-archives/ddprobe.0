Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A3F43E8339
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 11:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779796354; cv=none; b=rP1EoLw84y3BsIuMfubDHxUonEOpj03hyoNM66qyj2D5zvFCc0myQK/u2ZDj55GNm/wy4g6BIAxkHEyUpmLaxyG8xRcQdwuhAIddc98mmwMpqsUWdOZ7aQKRP1cYWk6OIip92MjLkFNMvuT1cC3YsO+NOhciKS/HxfIYQlo2q64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779796354; c=relaxed/simple;
	bh=AbFgY0Pq4Aujnn/FeO2qKqnUhgWE7cNaYbmhSITlQgo=;
	h=To:Subject:From:Message-Id:Date; b=ccAFfVvbwugqaTzmn43muisqIv/ZZTSb9wbEXhqKWBQRWLQbcgghPwwKb30bGGIVj9KviRIrkQHhyPQzCdOw+Bkc7K+4afudPnq6Jp/ISy3Rbtbog4e4qxk3vYDFV41V02j3ZwZrjrC3t7XDZkvabG5drPavtjcg1X3LK7Nmk84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fU7ZgSge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fU7ZgSge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A77C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 11:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779796353;
	bh=AbFgY0Pq4Aujnn/FeO2qKqnUhgWE7cNaYbmhSITlQgo=;
	h=To:Subject:From:Date:From;
	b=fU7ZgSgexivrzaoFZOk1dStHrj8OOqstu7bwdp61lqTXMUnNKKPlsqZwCvGVKqiXr
	 6PskHYlVe/Bk/NBCdQVAWuFzRaUnYm8WH2RQtzRFYheHAkmlaqKoPBm3wvImJavLU4
	 fL20xF+0dAgI/uScb7b93CaltW6G5nYhNP2+RGtTXdl6dgQFn6td20en0egUUk613f
	 ZehT4zlSGmWIK6byfyDG4taDPHHWbjPAva5+pmjW6S1UHfPptVx/ueafgQhbm4zRMe
	 8MvBw6HSeW7Ts8QPnDFyQp8OpV51/4ddlfDZ2gLaFBRJ5E/U2unx+ObGKVCuo+NkUe
	 aVfG3bS7Pew+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC681CD5BD0
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 11:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177979635369.8191.5301215087791210835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cc49c737afb92c379feae1ddb7c0fa23559cbf775c5fd1ffc7b6d31848d9737
Date: Tue, 26 May 2026 11:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779796353
