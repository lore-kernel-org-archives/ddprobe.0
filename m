Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E8416C680
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 14:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716820463; cv=none; b=pua4VugEx966+U5j6btD1vFbXJdeJ1+vgMx3+8G/78AF6+6ZmyEl/7qbRj1ZP6i6mkUafmtlsvDE1wJQvYidqfTNRuQtgodWQ8KO0Hw5qEYCpSrmclaG0o366p+Jhl77TkSzS/qz2N6nt7zq4x6T6XTXf0uE/ByQbo5/80PUSzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716820463; c=relaxed/simple;
	bh=JFncxOZ57hkYNdwlmjaL3fVzD5bRow24ezCnN/duRX0=;
	h=To:Subject:From:Message-Id:Date; b=SEJdDm/0MxCM+LU1yXiHg+h2kzhhBvo9bqC1KSeYj1BREicygEU9nh2vlvs1DH7e9T4SczOkw3Sr1/CKIbgDyKTLuUkUw0z5Q2+78z/gHEiwFC337DJhwmVTPPgwzjda/1Hl06oknT1t+9ZFqESC7hDHMyXkV24nIVZcwG/GAFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHr+Rp6w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHr+Rp6w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E31FCC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 14:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716820462;
	bh=JFncxOZ57hkYNdwlmjaL3fVzD5bRow24ezCnN/duRX0=;
	h=To:Subject:From:Date:From;
	b=cHr+Rp6w/5hhhbOij81gxceehk9+sN1jKBta4ZTl2IHaowNx8SkzAYAEM3fDiBa9d
	 WUxTQHohZhaQ92FsgowdHtv17dx+J7ezgsK1hE1QHpynab+VN7AY1MUuYHQFXqCmup
	 iudUxe/WjHjbrWTLcz5LWvcGtvJc4uoIYiuJZ0nAsmIzXHjJjJmd3r4w+DdL7XAFsd
	 fBWwqi55GT52MyzK8JoDrHN+RYG5lIGgbfcIzNZ1LR03s4SFyuhAOloh+UkBsnkjoq
	 TkiD98YsOrdrM0+dwoRh+GBpa1YL/68cVqJygwSK7pVj3yYMjtzOe5s3Nt8YRkNin5
	 HVc2KpcDoSAkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAB98C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 14:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171682046282.13400.4952220085379675794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f0ee03cb6057e6d400e8dc3fa12feb8b6a9dbb4c4bd765c9fd61f2f918894b3
Date: Mon, 27 May 2024 14:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716820462
