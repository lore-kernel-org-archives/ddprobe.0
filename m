Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C81433F8A4
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768542234; cv=none; b=m9rnK7QMOFaxORPbkBhz0Dafx826s9dwRjibXxXSQGigOin7iStsYbvT6/3ozFpUMJPY+jZaVSgLfl/AvEOi1sPi8bBLF/W+BNrup6VuGy12iGkLMI6JqdrPw6c16eVihOGIURsCAuzJD63IqSBtJ45B+bd0VemlHtQdzS6J4Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768542234; c=relaxed/simple;
	bh=+J8BnfLbU1iZhb+cKW49MAckog/abw7QmfNOJUbXyGk=;
	h=To:Subject:From:Message-Id:Date; b=MLfTHOTQ25Zvfe4K8opUNcdRXBPdFLje1P+RGLP1AObSFtZKIA5wYC7Qyp/8yzQ4MofPB/UEoXSBG+E4n8iPrH8BHEYD7TDqsVO266Si0cZORiLzE8w0NQbgItPvG2okB4taXacyKPLXmoY2c4N05N2qXMvQG8NqP7JRqknU6kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kak1nFgq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kak1nFgq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E606C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768542233;
	bh=+J8BnfLbU1iZhb+cKW49MAckog/abw7QmfNOJUbXyGk=;
	h=To:Subject:From:Date:From;
	b=kak1nFgqR7RWyYYv8kqqjdaa1oJ8Wac20Atx0UGmtKOk7ICN/zydT9hIuyfbU37lL
	 45KEJS8Oww6mHGf8DK/W37zoC5b8HRWcy6QNVBwK9U+4HJLQAULifxEslctpxQkvnv
	 XYj6X4JmqblG5BnjYgZR7QgRsi/yPeoVUbdSCGL815B0OhXR5yZMkkxId1tR1B4CDU
	 w3Kv3RXrp2F/Q8LuBZz8MNu3qlj+fDehNOyNY/42C7NFnUAgY1W7FK11I9rPF0v6T4
	 8rYlcPiosX1JHFY2orWOQI6+sTb6XrojYcyEfLjhRc8R0sX6bll44S2jDbTnTkndpL
	 xziVjchfRdUcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF58D4A602
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176854223358.14845.5028433083509799102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a50e587f3e3045085ce98f393e44e73757f7af0ad57d2c60938bc6e343c6dfeb
Date: Fri, 16 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768542233
