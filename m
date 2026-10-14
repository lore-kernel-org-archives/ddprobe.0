Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7DF1FC0
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791940834; cv=none; b=pvVMCJeDBHpf4MYTWzYEnXFzjh6Mhni7NSxlbjyNu70KAy5bl6XDwQyrH0vKsqcMEImEbOHrGvQiNRHN7CFVqkawlLic6mARjrtghj1K7LOBzwjDNTljrTKnojv85yc186y5cqOOCrFHwfKb8KRVtHQ5CtMyjuH/cYcC7UuXXkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791940834; c=relaxed/simple;
	bh=0g0ebK1G7qKZHZvCq2avXL/cLr99g4rMcV21Am0KODA=;
	h=To:Subject:From:Message-Id:Date; b=hd/5Oo9xICnTOQKToq7mFtVprZtqbVNZJUhddqfHceZjdj8s7sZW7pNo4ECe5MVL5LRqtSgZLNeIhTgPLD5hju+XNUvJ3EpMvSvspdLaFrW/S/kbTYDX+9RiqA7TQZyeNWR3qbLovEJ95imnmiZYjqRpAkzFdG4tIBZ5dQEBrgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFr2g65c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFr2g65c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B4BC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791940833;
	bh=0g0ebK1G7qKZHZvCq2avXL/cLr99g4rMcV21Am0KODA=;
	h=To:Subject:From:Date:From;
	b=mFr2g65cjjfLTt73iTa6Y7lnbHLIiKZO40hKpNTY7toQhOjSnmANeXvQJwmciLHWu
	 NSWJFBPmKyystUjkKx+8zp2yXkYmO9Fwi/NVWtj2sK3FVL+olNm5OVQrOU4UaAiK9R
	 JZM9JTs1pszJ9WLgs8Z5vvn7yslXwCJHeHocpxzw3ELRGJArs0QBWAHC9N4Hiy6S88
	 iKgjPKEZY/ilLMVxNKoMKKMJLxAGFB4pEGX0MhkdCujtn94N4IHI6VBpsAoy0BT9lr
	 e5L8ofGgzLI+tGQeFLszgGkiFI17cj2vnwR4EYIWdRUEP1IjeYp61KFw103IRvwlIb
	 HcNkCoh8h+zNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB85CCC6B19
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179194083369.18169.15407321255993729863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9f2c63b9a788b75538cc7f23dc94130cb661e6b14cd2c5aaf2cbefa33422122
Date: Wed, 14 Oct 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791940833
