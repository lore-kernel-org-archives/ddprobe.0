Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEBE152176
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726603554; cv=none; b=DR50Xt6yGG8zmcWRqaSzxPt7tXYemvMTeQGiCyD/3uFaQHckTW/IHJnYqgDjz8nFnojcu1plXZ0I934GR9kZ3qbyDaCNxvh+FTJEP3YTJkbrn13TU7GnHTg4saVQV51D9euq7fgBhszDgVGZgyVd0as17xGUgBi8Fhyq3VHxnNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726603554; c=relaxed/simple;
	bh=+q1Q8+HHuXppEhy/xipfY+BY6qV1RC8SC8tYEbW4w8Q=;
	h=To:Subject:From:Message-Id:Date; b=jJuVUeSNiQMVXheLz8SluB04zCQNgVdBcqUbQQRIqDQbpbNnu1w9TfZqYrLKN3LX5I4QRgUBlIxf4KZiq5U4+F/53YZfnG2Tv4ZVRUh3S6FTB7qIYEK8kfrXZjJX4+rTBpXkeBcbnK3Ad8OQIhaH1aIdAustCTh+eFYQvmgZMMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNdfDBQv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNdfDBQv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA9A4C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726603553;
	bh=+q1Q8+HHuXppEhy/xipfY+BY6qV1RC8SC8tYEbW4w8Q=;
	h=To:Subject:From:Date:From;
	b=GNdfDBQv2SenhejFAJnZZOY6BPN1yiN8Klj2joSToybf6+IEb0bS7fMWbCb+XQw0r
	 hLgRcf5uDymr0zNEN1YIxtYo/+JoQL7wR2hUSSAf6PqWsooc8obrJsuo0PA1s/S+gr
	 f9T/N0tmKQPu3aHZoGGFBZLkBzMz3NBMJruYDN16WjmFWjpe3ro+lvAnWefJ51Xf+g
	 aahInl8yFP+Iv5/JXlBzSZZaPKH0AyA15oEp8DLbmj6h7TcX6U18ALNKOBO4F/39B0
	 UXJuYEmus3V9jHAIt3CBF+ChJxm/ZhKDiaK9pqdwi/zJopJ4Tylck32y4uQdBahoEo
	 Lu4UXxV28kvlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED9DCAC59B
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172660355359.32167.6309476204265464446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0e55002c4f75d6be0e99a31d564df924376ffe4192e00956c3ed568a466cb12
Date: Tue, 17 Sep 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726603553
