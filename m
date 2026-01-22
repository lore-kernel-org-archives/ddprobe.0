Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A89F2C11D5
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769094234; cv=none; b=O1ZnRv+N0ohivV9wItc3NTrDJFUUcrW555qcNhH9Ly7xn/b6xVXdoeBHE3HaYYjLjL/UbUHtdA/wpy6P7pI998ryiP86Q9u3gXeVSk94niveRiFYApD5plVqHw6L5mRwNaIin42uFpznTFLFecyjSrY8R/jGMefbjlOgWZ4e3lQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769094234; c=relaxed/simple;
	bh=RPCQi6L7BI0X85hdTIj90YyRsCnpqseBNbUm/JxElAk=;
	h=To:Subject:From:Message-Id:Date; b=fVLQTOjc3xn48y77b9yAzZsYnyJUl2EcMwPJHUWfHTeaXasQFxPBdHjzwcV1Y7U6s4tQz+h8SIAlDyyJoPvVQSMHZM1goLPjSOoh7L/WpZGUiQyv6pwYc7KUH/88wu7dEcE0TDEIdqmFUpwyxFaol/J0mYGQIIeCDYNtrtu5QAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eg6XkiVd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eg6XkiVd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1FFC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769094233;
	bh=RPCQi6L7BI0X85hdTIj90YyRsCnpqseBNbUm/JxElAk=;
	h=To:Subject:From:Date:From;
	b=eg6XkiVdKJwvvyXYYMuX68Juz44wlVlz6B/hndikloBqRwuf00cYXOvos95cC/efN
	 az/vsc94dMudWp/aPNqJaN6eWNxrtaXzIByX8STbln2OkHlAQqp+aMbxTxUFdAKaM6
	 m0o7Y6PtcRwOYZGK0ObnRLW7aXDp5mzpPUEN2iF9PcYcfwCrz3cpDgbSDnlQuhOSgw
	 P84x0kwpsEe8lZWFynZuKuUWfRK42eufogZYRw9lvlvyYn6vVbjWfaYG2C7pNOcq9L
	 aQo1rvp+RUzn1EWJlOWSaMxwDO0xMT5Fu9/CNVCCjyK7CHNbotSqW7tYSOnblX/Kfr
	 o+xwL6zv6IgfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90552D3EE74
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176909423358.31618.11844430206529019453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f844f28bf1f9ad3049885920960b8ff1058e094dff161bdee83289aea8a55ff3
Date: Thu, 22 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769094233
