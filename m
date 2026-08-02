Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7B93976A0
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785682234; cv=none; b=bamG+7P9BnlRdCHCx87cWZix+8VgdNQ2qhW13vGy2qPJWeXET8hUQO3wbyYFflp6j5Amac+IjP+TxsecjDJGH59yROA+mdJDGyFqYjvLGVD4l3tTTzoWhwZnGZxQCHZOr/9SGjQ/AVx1aTdhHf1KXgf9IrCakk4yA6z4sGx9Xeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785682234; c=relaxed/simple;
	bh=Kt8wtCvEGLsqfO9DcanEX6fhVF2AXTTmPDTG1mmC6wE=;
	h=To:Subject:From:Message-Id:Date; b=LOTo8SSR1PH0TpFHP88e0AiJ0DvFtRQjRF9K16xelOsvTjdtu9gLHgsV10J5lJsAQAaZvPTs28AII3+EHGnmtOKTJVDtVuvEJ1uquPBAJyJY+wWs4iYbt87xaaY4PaFuF3po1Y6JOxLiM7siG/mdI+TejJl8rwRrCVnDTVGuCk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iKZTuPPG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKZTuPPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0317C2BCF4
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785682233;
	bh=Kt8wtCvEGLsqfO9DcanEX6fhVF2AXTTmPDTG1mmC6wE=;
	h=To:Subject:From:Date:From;
	b=iKZTuPPGeC22NTfgVdrKKGX57WWF86unrUdiBFnC7bN5Gp/aBXtXNskqvny2Q3is0
	 rwLN36jGSeRI6lqvF6APHpkYG5Gw6njO6NbbgTBVXIeColxT2GdeeaTeJHcC3NCYdS
	 VTz6WaHue/05jKdUxDAo7Gb5mT1L5Xwrvi83DrQujJzQXOlLfziId/X+xYO4m9F0sY
	 J68kkt5VzCudGzXrILohIql1Zs4OGbvur/HY2gCBejUlHcDQVIj5ZMKjQiVaF6vOS8
	 xgBY4txPrYBKMVofHBlDi4tcAFnhvLuuHIMgSzJm3tOkNZKeFv2TnNTCBsBntITC91
	 rQWTvpYTtBmow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE83EC55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178568223368.29086.7216023068045641729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02a31fda53d964faa4e130cea0941f81f5aaa588671bacaa9c6cd6d25635e331
Date: Sun, 02 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785682233
