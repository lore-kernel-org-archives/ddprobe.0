Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 685572E7F3E
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 22:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765231974; cv=none; b=tTQBLGF4XDIl9wIe4ijNxiq1TK2Xo5JeUgny+UhJL4/HZL86r+71xNm5mTI0UgPBEhsFqr1hZqPU6Bd6zSdrZ0iuj7pzrm6i0HSwuNf4DlKYQdK/hxOPQGwoavKNvcgEiD4GAOIKQmlX+wEPd0ZJ/M2RgoFSCAezJtY7dPm/B0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765231974; c=relaxed/simple;
	bh=+MeCI9qRiCtuYHagsZUSN/vVUbYZOdfSQCa1fzBSUXs=;
	h=To:Subject:From:Message-Id:Date; b=K2w6et7/cz/6xwUXq+wfHOU1C5steG1ALlNxYfrG90ezpW9FJeMXaZDonBe0MiHlNN3AA1aQcIK/UB8z4AsiqB2+AWyP15TaeBnwqiNhffO84Syfl7q+RtBZNYmGKI3GePl8qpQwG8G2SAsu7qg9nm+TWfHEX7wqFmJfX44yZnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFEkPAVa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFEkPAVa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0586C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 22:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765231973;
	bh=+MeCI9qRiCtuYHagsZUSN/vVUbYZOdfSQCa1fzBSUXs=;
	h=To:Subject:From:Date:From;
	b=IFEkPAVaa1BGSNyWqU1EMcRfn4eFTsm9UxyLtfe0wPqbE06t2Q+kNLv6MtS0v6ghL
	 MPpfU99P1WmlLlDoHusolg3Ll/NNi3T/iRZuyxvJSVns6/KL9VJcyAhU0hoSdRux1J
	 1H9PSdqVnZZWMoDUwcwVbmWjlHusK+YiOacc8TZOEYCHbL6nvqII/I4ghCQcYqV5IG
	 PgGvZpGwTBoXwVu0WaJ5weOSV9rKlT9oNdy0Qq/FHtvbLj4uJTcLH4LbOSD4oQOecq
	 ZeqqNrEjgUQ+X0n8e7tpaZ2YNLTat0uZoRzDEf8kwL/6RzZvhzBpygb7zgWmFOT6IZ
	 6toi59UIdMzrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E88D3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 22:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176523197362.6160.10621103390590071679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9816eb99b1bd5b5c74eabbff6b188f50a70a8cb3c8f3734d83644cb0416399a5
Date: Mon, 08 Dec 2025 22:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765231973
