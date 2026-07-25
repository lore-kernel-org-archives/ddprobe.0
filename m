Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66CCE70836
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784944834; cv=none; b=fORZ4NfZ5YG15j/agsiI/SQPtCwl4piOJVFKnjFS6FhE+ugpeNtUL27uPkAvBhQ1UYIrswcL3sQW/keMZB6+nueLF2JjX4AAeyYXeXOxL5uIKQJ6gQkin3loDAb0zzu/qz6g+TmKQbDq0VhtF6IhOnMDuiU3XySjNNA4p7ZuzMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784944834; c=relaxed/simple;
	bh=zyu4FbijNF1mSLH9l/cvRdDgwcGK+lfKQm02OralTLc=;
	h=To:Subject:From:Message-Id:Date; b=ThmIRIzHxAskAXNbq1kN0ruwFUrAiDbQviFvohoRBPyH/XSQXAlN2FLiczTmyf8ApkzhhmrfASu7qBOUac9jnYA3a1M4cvj3GKacRc7qMFTzJEbOkIhs2QxTSeEUtu42IAqg4VwCVwh9jKZns9CPu55oc7DuFXITVbIBqJU/RvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MiImmEXQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MiImmEXQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DF7C19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784944833;
	bh=zyu4FbijNF1mSLH9l/cvRdDgwcGK+lfKQm02OralTLc=;
	h=To:Subject:From:Date:From;
	b=MiImmEXQLZA9+tnJT7KS/dTHGd5uboKr9qZW1CYUEi3Jl8VDcsiDQJ9jBqQZ52qmO
	 O/wnO9IrYWs10qYUjpoQFFmk2YkXv+K/wdVKnbCzv7jGFdV6vNWVBvrqthHMcbkSu2
	 /Vr32/iP/Z4emDkKeW2XVn3mU97PfkiQKgkARtp4eM0uO8DQ5aB0+0zDE4+4gTcB+4
	 Uu620hi34+dYUJtQZRwlCT5HOPwrVrKaXBMBIK1kFFtf3gWDtFmVjWQhFAs3JSY3lU
	 Btx3C5+euvYCsZ1Dy/+Vmqf6tUo6sCeZwuM/BCy/58rRUXOycZ0JwdTvrfuXSImCDC
	 2jiwTfhMwoo+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC443C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178494483368.15532.17712212938489601129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a841b91a87e3c4a8b731a584ed69cd85f9e5c6b13068369b21f6f19439af115
Date: Sat, 25 Jul 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784944833
