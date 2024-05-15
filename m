Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCB715573A
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 15:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715785343; cv=none; b=h6rD+Wxs6HcfXrESW0GL0hDfV3HFuDygV159tCRtROFRzxR/zzf+hPGXyX8XooYT4VohhCHuDZuvHK0p//xXFvy+O90b/8dmLLpgjDH8kmkv5+VXduMQDRqgy0+e3hJiN1oQrGnq1q+5cceWYj7EnwTs0+GMGg8oEDHR/eeMLSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715785343; c=relaxed/simple;
	bh=D94CE8ls2hLX8rLn/VWbUzLPx65a9xDHt5OUbyQdx5c=;
	h=To:Subject:From:Message-Id:Date; b=jYZ81EBK9fkODXNA4jwGHkGOBqYaim0LDYmf+uh/hLs11GYFzHs6CJLCG24w7JPr9gEtZF/Ba/YnRfRWAamo2b9R1fYv3GWlQE60TmqJyGOY8Fs0NdAzk2okW25um0sFe2ATC5fh3cvY5yVwhkwy5HKjhOjB7WHbFLvCSpijBB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3nspw0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3nspw0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E498BC32789
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 15:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715785342;
	bh=D94CE8ls2hLX8rLn/VWbUzLPx65a9xDHt5OUbyQdx5c=;
	h=To:Subject:From:Date:From;
	b=r3nspw0uCqiZTxwXDHaAjoe5cZu86nedeaeOjPbsyqEiixZnaLONVP/MpO7CqQjh0
	 ARC7pSOsczs0S93GHmEsPVKXQ6lm+irQL9iuynCF1/IfKZMuXKmQ6h0sc1h578Cy/n
	 xDICTg+/DS2864oJOVvZ7Avd58wqvb8Ltl3QVTYvtTR6Rdox5upv+4O/EvERCNJe7h
	 i6o7vKqCgjFaPm272yTlLQqH9kj2sJ95rnaUS+stgUf/sn6KWL5eHoL9GbdZO66MEl
	 Mbnd/pjNLUsOpuCwdKL3pA/NiNKiHj10PXbn9gekaGG2I38vMlQDcZemBz2ceQfmEj
	 oRlEDC2lqqGRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5201C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 15:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171578534286.22978.18292302934779427491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3935ff1f240598f52d35afe92384c51663db5bc5d7781481ed1add2089322ad
Date: Wed, 15 May 2024 15:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715785342
