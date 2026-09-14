Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE6641D239
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789380634; cv=none; b=VE/O75vB8+6IuKYzBIW88x8TwVNCVKsAWr9RIZ8q/8cnaAm+5POUoKsZXBI5tMjZdzJ8saJFDAH900T6ThKiuwWxJVeDbUxKiGTNoVYVMribqac/pdUrESsdfFmVndJYW+Dsnfvo7TnFHmY/fq6F9BcVXYqv5W9JCSZmG2X3h/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789380634; c=relaxed/simple;
	bh=3fcRzpufXLqDNqblp6GE4CVVgj1nCPjVUiLT0feaDe0=;
	h=To:Subject:From:Message-Id:Date; b=H/D7dNlbQmtp4O8EXkCpRHx7JI2BtA/K7tOWl94QDxX44x9ZKg+IXl8T0GYkVykcKhgivOemhqZ5GGOrNBgQ7RfqDJKlWZOxwBt/4Xh5PG6Xh1RcEnR6vB11iqVLtHeG0fmhF4r1CW6RoBgYrKuqYRBGdd92iIckEbqIULmRd+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+J6Rkao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+J6Rkao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D456CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789380633;
	bh=3fcRzpufXLqDNqblp6GE4CVVgj1nCPjVUiLT0feaDe0=;
	h=To:Subject:From:Date:From;
	b=j+J6RkaodyuRqjg8qAI4+TbjLx09xXWfJsO2W/vw6KBsGX789j6+w/zB349KYelMq
	 pm2fRK6kSy1ip/FtiLAubgW0vgnXQJO3jjEWR0JSjNvWL1HwjCebDJ6yVoJbAOEsdl
	 tWGGGj6ILLAq41vBFYel99pT2GdnN9QY+/UNC2MtN8II5n0t2Yix9Zgwbp3pZJDbDw
	 5FIU6CQbOlrkLR6lx26kG61xI5LaYEtRFZlaPBryD0S4vOD3q7fX6AF3AP0xSH9ltt
	 Oe2j6k0SW4UtllfbXOAhtcYgNOr6BzDufCHoPq+oTZMPL0rmeH+BiX+CpUjRmkH3qQ
	 ayBBvph1DPJmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF968C88E50
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178938063370.14300.8929126817707755256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 159cdbca827790a3a417237cc4dbe1bb5f2b2e013334899c251cfb7862e24672
Date: Mon, 14 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789380633
