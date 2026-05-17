Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3D9261B91
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 19:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779047434; cv=none; b=t9lp6+N2LZYyvFGdwGGfmgyQWoWunPIhLjz0oxcWsSzVEHXY1JftHMVPLqXfE53zQ029BNARJPF0BuywA46ZYsqsESvy72OzFlSPCp+4bCMJf6zN8VukeyiqlsJ34JwmPKBgsWyyyHRUtfjb0jYcBtdWSNp0QrzEHHlyHCX3cGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779047434; c=relaxed/simple;
	bh=Wneg4mdelF9S9iagH5s6nNoPclqHXnlUAkQTn0I5ta4=;
	h=To:Subject:From:Message-Id:Date; b=BFxuJ0uXo/Z/f5wBTQ8sAP8A2tWaBJFO+fyvGUAOgYeeFRaUfJiOU/MRaJFkHkqmNqaPfjDtLSkQqq3RouyQKH8/ZbjE2VEZhlFbV0l4h4oULPk4HdmMQDdBX4PhdKbO+ZXQAsKL99CnLSJMI4x4JayTA2nGIqd3KPpQNGQOty4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfDeWDqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfDeWDqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCD0C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779047433;
	bh=Wneg4mdelF9S9iagH5s6nNoPclqHXnlUAkQTn0I5ta4=;
	h=To:Subject:From:Date:From;
	b=dfDeWDqIT9AZTz5oRwS8hnfAo38LQm12iyZ1EvUK1fyriC6BJ8X5fnlENg3XgUeGc
	 DE5fz0HaVVA7IZTZ6b7DmaNy4opdvRAm+6bCs9LRFGdA6npZmtIjC/f04uR5hkYIuI
	 gMkTehQRFKwMObYXp78NQURxWAVlrJ6W5AyniHE5T5JnpOJh2lLX4ajK0bt/B6tydA
	 Bj8y75f6xeuOWOu6HQWDYVrISBkBxVl6IJ1BS9SKY23KCl//nelebvX4MAQdESLk7S
	 v4AMNnZ1xgVVUZvpR5jxvopXp3ncPDbQB/JYdnqb9EWrU7UZuA2ro+Vj/VWTsi6ZUr
	 5ClhFQHhQ+FOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB381CD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177904743369.10179.16943879333192814884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b73948060ef4a5e0d74ff589e8d49b925f2cb6ec963fdca2d18567be6ed81c05
Date: Sun, 17 May 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779047433
