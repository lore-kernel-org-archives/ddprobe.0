Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251893914F4
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 08:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775118934; cv=none; b=OmUleNkNhAnX9A9ne4L7vJZIWc+cjtaGOwOvPcrxoQxcLhB5fIQncinVc4NPnmSICdewz8w77JnvF6el6TNZngH7UiDo6oEF+P0VCUmfSblxpJVz41tFyKzfUp6HdFgM/jcqvfMZcV1m3sOXjObRBBFTimT8Y4/Ult0R9C8dhZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775118934; c=relaxed/simple;
	bh=/TSZ0N5kEYYTZPZXDOxcMzOcitv9VVypEHcIfLa7J3M=;
	h=To:Subject:From:Message-Id:Date; b=W70Csgw0uym+VzL9blKUjmp+4ZfFv7CbB5NK05pyIsthDSAR9nQ1f0JXtI4Q+4GQ3za4AoyVHFrZNilXuiMq/Hp62BA9mo8QeEMXnyAc8HnYbvSeZUMJK8lNgJdgkNabSpIhapr7lxOZh7InNqyWAZwqI/tYNsJ1JH53mgKV830=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akJ5pR0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akJ5pR0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A4EC116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 08:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775118933;
	bh=/TSZ0N5kEYYTZPZXDOxcMzOcitv9VVypEHcIfLa7J3M=;
	h=To:Subject:From:Date:From;
	b=akJ5pR0MdwLv30QRmHhkomjnYC6SOiJ0JI+vpsUaWJ25VFqHBJJjvux2OOEhumwLs
	 sVUWAFo48kmGfyDvqwj0O+28IeDEjy//dgzcy/lLrR3+7E+lDeLj3g887uQWIONaQu
	 7ioLIlkjGhUnfoTEhpNxye/MRzHNUgBCJbAcV00ZUMBU5gQGRLDmgmC47ArT1Y8wEJ
	 C0s2t3BwHEk5RIk9jVr/1vA3s0WDKmX/m9pa9Zqo14e7f++XBy7MC/1MdPW5/DPq1H
	 bhTkUNixgX2qxKR4oDLdJZQBWRNo+yrWTmf5uDAAXrCNQfoTUCbYn/NfnFwq9QN6yP
	 PW26GwGjhtrLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B66D4CC6B33
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 08:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177511893373.23029.14071889584062561792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a331c8c165d56191911dc91aed8e1d4ecfc952a71548f4a88b16fb5c1c4417cf
Date: Thu, 02 Apr 2026 08:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775118933
