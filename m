Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D6E36D510
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 12:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764504774; cv=none; b=KHMlpO5VAa6tpQtMomjw5y1Mu47xD78vZVnwh7w/7B7PmMJpb/ky7+YOU4zTNghpfB/ZFEkU5D6kELOPxzci+60kI5vCa6TubMj/n0c05puOaqzyOadxlw0Xy5bh1dllLppL/mXLqjbY0iqqi5IUp1NnyiSZVQGVBBNSgVVztLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764504774; c=relaxed/simple;
	bh=x9ZSC9/0FrnfGgLyk1yTFm+8ieIfMYuKJ20IlY9m3mA=;
	h=To:Subject:From:Message-Id:Date; b=K5a29CVcmhWY1LNzMnoZDlzNLucwFWKbhwxSZFQpEa21eoCmN8p8xS7OewK9C9a88boX89eViewX6B2wQPvrmPjA9LnMn2z6AMONwMKKgIv+CE0+Nbvi/OHX8yCgj1di7AmIEwXRYrFs6ZSe8aEzxsyCIVyIvCe6xmhUy7T74lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5AHreIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5AHreIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFF8C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 12:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764504773;
	bh=x9ZSC9/0FrnfGgLyk1yTFm+8ieIfMYuKJ20IlY9m3mA=;
	h=To:Subject:From:Date:From;
	b=X5AHreIP+qZj+S32atnObdW3SrHp0XUWjr/ZiBAN4WbcXvcKlW43tM+yO0lDQd3DF
	 PH7+5wIvlJLafWRCwH+7T7wMBgbX6OlnHKCtjSQutilFIfk7Pwyj2DfqSJQ0dp7dbW
	 UD9zqiU30x6NTGoQ8Y/wahKmvID4lE7Ksk+o+Of05zENMVgLPb8+txub2hqGoT+ebh
	 TWQGvZdS34sbCcY6NJ9L/HhL2upVOefsFYaAFVky4pTkiAkc8bjbqOQPkL76Ih4poS
	 ID3xPM9TQOlFYHGZXtp3B8Igy7YocNOqsFviYg2R8GJFHbqFRODhKvboPJ+Kbk0Fn1
	 VgV7yiHJylYuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96863CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 12:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176450477360.29351.5299712029059968003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fb4fdb34062f110ae4dfaac6ee2e0fe7cf1fd8e77894284756b76a61d8a42af
Date: Sun, 30 Nov 2025 12:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764504773
