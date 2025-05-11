Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F24DBE4A
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746931194; cv=none; b=oqxkvWCsNgqpu4B8cKBXesqXBpj+NXKMG8ZBeE5w+COkmtKfZl7KUbPOLbSX/aYDqZ71B9CbavJVxRlKsbI5maKJIUp2J8JPoZo3yHtY4ZgwF0DMgmi2h9AWeQKni7K3yn37x/jjJzWzQLYu2qzySdkdVLNIkb53Y+q5jtxCBwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746931194; c=relaxed/simple;
	bh=Oh3+K9yYk1ljgS0KpEtt3OIwoOiZ0VtJ4BBaSVJ+y+o=;
	h=To:Subject:From:Message-Id:Date; b=G/qwqHK32dJvuj4Gk0/sGOMAqRmH4HQhSskS/a3OMbr/5wjW+pHmCwqNmVydsDB7MuB0bKhG3zU5Dw2+baChCzih6Cd83jSoAooR8ooq8cpLmPb0avwLRkcfGU1uPG766Rz30o1G1e4aiGBjJ/hWt9POisCuwH1kwyN5UuHY0qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1UhviR1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1UhviR1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD134C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746931193;
	bh=Oh3+K9yYk1ljgS0KpEtt3OIwoOiZ0VtJ4BBaSVJ+y+o=;
	h=To:Subject:From:Date:From;
	b=O1UhviR1izNHDKfK3UeZFCqlRAFqoxn4MAhVuDiPZYnH8wKhCn/Adm3d0JNYehTaq
	 Xh/0G2HoPzoIhqJDMA/2QvPoqHHE676qqEkOAeQBCHTaE1AUabIW5ziWKa3EtfaeQ4
	 HeZw/l+AMT4O/z9FcSA5gvsD++riVT3XXIUhZh8R3JcNqWbWyoFs5zQJtkmdHNLWOm
	 Nw09C6ajvnWwxr65gIDvlMsFCCNOn74XvKHIA2TNiAbwL7YA0TZRfahz1sihzuSnh5
	 l3xFrD6ZPlXQYQL0oGnecPbdeQxeE9EvuZl5z50NLvHHRzIXsHi9h0npUATyBHJK1C
	 3tbgUC/WCmylA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DED9C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174693119358.9505.2673349316025239356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53a1fb02d394f612c42961635c1130bf09caa66119d95b9f66bacfcb69a8eaf4
Date: Sun, 11 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746931193
