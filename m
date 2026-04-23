Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FBD28466F
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776907654; cv=none; b=Qyh2T/tCj+YuGUWEYEgZ70wAr5HiWY1HD7hS1RcspqfjImM+NPeazPw9J8mSJTfGio//+fWnxwR9LjBm7hh57X+x/jr/P15wv1JzPVu6OJKmCDHYwfRu0CVjwCYxM0OghiZkQN3MqCy9nP3QkEEfIwLbL2NAiYcURiwnVHtvYCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776907654; c=relaxed/simple;
	bh=tU7poWmRQxcKzufqb+bRlMSKGOTHygNJkrQtuC7eaU0=;
	h=To:Subject:From:Message-Id:Date; b=cetLaFAgrayDx102MZ4T/b8A6B2j9eLojbC7KxAjkiDl0qjEXRCAY4kqE5PctLgTkUAc1oa0SDh8OuBeR6yYYfagTBkEaKMDPw3+NbueTf+arozH2orzfRKJsKfnNonBIx2sx04upIL9u0bFYfKrbJQlw8kj29Ndis2+E1I6AcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfFWHL2m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfFWHL2m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF57CC19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776907653;
	bh=tU7poWmRQxcKzufqb+bRlMSKGOTHygNJkrQtuC7eaU0=;
	h=To:Subject:From:Date:From;
	b=sfFWHL2mLIIQpLzxYezt9Kq7GUZP7N3eJ9MEPQppV3xxenYiu37/WU+BAGHNLCwgf
	 IU57qLKjAc3z1MV5Hxluu9kxSgUFcP7qE08LQAcVT4WcQRVVdrhYfCyOKd19Y5lcX9
	 TP2HKAds5ILBn8TsgWGC+Ht+2H+DoBS1XTWsc0eYKBX/9cNvURkW2KqfWlSk3u/yFY
	 LdDV1ecK6jXjKmOlESI96+qSdmh2mdd+TmVTcwkKGLF0AcX3N0YTaNFqx9GEEFjNm+
	 YTt6bpJZnppfoxwzlB9YCxYQD7egyTZvxKWAJkS0iB3ChRciqZ8dpKfVZzVEiut+G2
	 0sNMus8f5TY2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3CFFAD3E6
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177690765368.25878.14777321206181592193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4ec233961f46fc140f4c2814b0a4c4063e3b8dda748c4b342dec37815be67d5
Date: Thu, 23 Apr 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776907653
