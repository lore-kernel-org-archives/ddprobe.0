Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2B963BD24A
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 04:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779769354; cv=none; b=af+JC7rEWhiAOolNa0vf6/1fVaDSJUqLdG5T2g2c19T9Kn3+Fu3EG8AwGUM5bC5BP4RDktvVE8uWzd9uAvwgIoSrs9tYnJiZvkpn5ImWtE4F4A8lfrsQbAQ/9QuN9LJIuWsuzSZz0TNdu65k04UkzPAyiictd7MuCkQDoW0XuJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779769354; c=relaxed/simple;
	bh=JADbOjS6w+vRuR8K6usYx7Fh2eah18ybJaf8oOX3IfA=;
	h=To:Subject:From:Message-Id:Date; b=PpKQK6L1CHNruOFDl+/r7Fbt+NzxF6MJ3b6N/+Cynkw01u9mTxtIeZMlelTfwEcz40qH2Rk1u7mm1IZBlpQfKdYLv93OWQKARNWLyDJZfJHc/HX1lWgCXTm0rJOGOnFOuUDtXgcQNJgq/ZFhr0pI/e9aTaKfYzk4FANjpYBiHFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d08U3kUS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d08U3kUS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC476C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 04:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779769354;
	bh=JADbOjS6w+vRuR8K6usYx7Fh2eah18ybJaf8oOX3IfA=;
	h=To:Subject:From:Date:From;
	b=d08U3kUSH8PLD4QkYkDaPpw8Okeld/WP55cdEKJOTeX5wyGY+Avo0vWoMTk2NtF5B
	 1lJ7BkMJROvrILPT0JS8KnTaLf7uAoGoCF2VirdjnqkYuLKCh8cX1jmGaIkgeQfNrj
	 sZHO3HNTd2Gk/5bCP75aI7Jd+aT82Qaj6NCuwwPmTMhGfPJQ0hQgRDn1OD1usrpXCk
	 Qw9ZmccJTwXNgk/4O7+NycmZAJclXDE/bHy0AZGEjJhaQSo5nm+I6TZcjvEdHRl0tC
	 94mjtPg0BRQ+8oDS9GUKCIpdshlWwaQAzmfNeeG8L1engbS2G4IDZrkaSU7EUHRC/h
	 LNiEuiYqIjGgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C958ACD5BB4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 04:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177976935378.20846.8677025663601561331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25b558236e6fabd3503b7d77d68f16b5ab7d8bcf8ff71bd6ebb81aa0073ef68c
Date: Tue, 26 May 2026 04:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779769353
