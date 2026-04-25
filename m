Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20311346AD7
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777127254; cv=none; b=GZEOqOsDFvBAR6brmwvi/HNFHuVBi6dDzQGLY9fIm8lA6PLnzUSOTU5fIihBcombeR36g+ZVF6rJYSCKC6pHhBb8YkFAu+kWXpgx+BXAreHQyGpJFgOyZCTA7PBHpRxnC35qJhgrqJ1yraZDlT3UtisyCQ6B4bO2T/7emDr27JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777127254; c=relaxed/simple;
	bh=cvHL5m9BFmfUYdjAsd8+4D+CyGtdhfQCqgD1FMTC6gs=;
	h=To:Subject:From:Message-Id:Date; b=BV8dDzVBqqyqHzY2HQ3u2bMakvESmjr01Pb1mNzoV75JEo9V1FEoOG+lddiELle+6Nt90POtqQGx0eR762M1WaRsXPNHRSqQBP9bh3R9Na08K3SmxEHU4qhb/ivzghVXSX0SiOWmh6Fm+bdw8xQRiRbk5AbvpRe23IgO0o0tPFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZB300INb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZB300INb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD2E7C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777127253;
	bh=cvHL5m9BFmfUYdjAsd8+4D+CyGtdhfQCqgD1FMTC6gs=;
	h=To:Subject:From:Date:From;
	b=ZB300INbYhRjAgdc/9GFbjfrYjxgS/ZyZoh4MzrLjO9rI8HahgaM5Fvh4vzPYGzWG
	 inVSO2m+0wUTfQb0luv7WSMq6EEUAxTOwnWu89i0u0bWYcdTHz05GpET9NyWpGCsjq
	 /93RCF2QCOh60z7j2/Ee0tnCn55DjTPOrKRAtZjnnchSfNxe/bJZ02mA26C8Ocy9xQ
	 CWHhkzeSBxJLp5b2XAGIGOoAXssxCz/T7ancdCGB199obhGHf3/QUVm5N5cYxTL+qE
	 GCM3vsMKB0N4/zzGl8UjulQPcxKbj+LT2Nhjjhj3SJJr9giHGJHDXPHN1XDtOkg6eO
	 UHvVjkaHFyGKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC293FF8860
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177712725368.7947.908031787676508889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6438251025a40ec3667de5d5ca5cbf483d91ee8cae75906038635f7e50edffb4
Date: Sat, 25 Apr 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777127253
