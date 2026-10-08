Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6950728E0F
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791420634; cv=none; b=QgGSblNDs9+uctuYx+gS6rCuBl3qDJhUqsMlUrrNNspYxpYhYQ7gFObBJc8osjtEq+fG3ltFqzOyDH0Ld6onL+loz2wf8+zIvoVGhwRcxZIj4RN7s59Qh0kKp3CxUxr31mJdT/YyFDYWPVw1mwVnJF8AxC5OMCtb/gQd1t6Cp5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791420634; c=relaxed/simple;
	bh=UHDN8ogZghqv30WFVi0XyuC7Hg6XQFjN/qYsflP5KPQ=;
	h=To:Subject:From:Message-Id:Date; b=e0mR6U4e7zquwcbDSJ5vFidgoRZ0j+svGDpBzd7PnenO35kv/0+EU0cRE7JhKjCBEO4B05QvRMg3Pd6dc1I/vGlNXyXIufEgNr71575wZQ90Pj8deZ1M/mUz16NtK/lLrTC3qydf8+BnY0MCyxhHAGUOtSF18CbYip5ivceUyw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wz6o6iS4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wz6o6iS4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB21C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791420633;
	bh=UHDN8ogZghqv30WFVi0XyuC7Hg6XQFjN/qYsflP5KPQ=;
	h=To:Subject:From:Date:From;
	b=Wz6o6iS4e44nn1Hjs7AeArK7UE7qS21qMm56eDGrgl3TgbN6RhyMYB47yteZvSQcE
	 aN97xW7YAObh+xq7xK/2Y7ZuCNdUxCUjqloO8gy059Z8qCLGT7nlmNDTSo2uQxQlgf
	 goutg2/LGtVa6EgeQ7675aLqBB9p8q39SwXzS/1pce4RjwkrpardTNky6Awftyfz28
	 Vjxo7vi0bcCfCId/cb8XCoZuBONMw1HyyIbT/6ftADrWzCaz6V6xW5okJWHSjZT3cJ
	 STQFb2tE4k9m5NT3nTpO/YPWunR1GUmzphylXB9ZWtVvPzJjjG/JUhISb6Nuiuf3mt
	 4vkfJKsIi1/Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF52ECA6002
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179142063368.7380.7688144205287324468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde4b215d22a530fc9f4b87d836b586fc7e249b154e40147a9a5bc2e7596ae85
Date: Thu, 08 Oct 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791420633
