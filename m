Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4283C23D2A1
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 12:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783861114; cv=none; b=UeAN2seNeNWzC00c5YRw/tjwrgx5R6VBTh7ONNhRmfu1rHWEW9vjE1/nGZDR5Dr0FdwBD5Ro6nqk3mE7fPnmD2O9wxMsEJjbOnDL8m80LH0L0l5+eTwCr0nRAPNK50zJBdRVKPct12oaYKQRYJwlg/df1C2Um1O85CYsWgQOjPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783861114; c=relaxed/simple;
	bh=1Rzdesf7fJNIRkdGgKZ8wOLA6GU9GGDPjOIaVKF01/Y=;
	h=To:Subject:From:Message-Id:Date; b=QHnCC1sZT3nNNnREmX9B/+ddhruaRmCnvfGOFEgKEoHFgrTcrU1vSaeaLVSFsk4IqQzN/BAfkC5GTIyY0I0iW0bRyrFi8vx0FDPF67nwsghyiV5RppJMQWO7z5QqLSl8CdyHjcgGETpZy9qrBi58WAjaNjyTWu7j6opCQKs2vXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WxlhFSwb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WxlhFSwb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFCEC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783861113;
	bh=1Rzdesf7fJNIRkdGgKZ8wOLA6GU9GGDPjOIaVKF01/Y=;
	h=To:Subject:From:Date:From;
	b=WxlhFSwbAy+XHp1tQDRy6ubyn/wLsTBxOggeiY/Y/InVqHwXUacfspZc4LyHcj1zJ
	 THkAXwLnb/UkbNj8Qzi1oCATEQP/pZ6ZlbSandLlQo5g8YpLv4kcRPlozEMzHqMZzM
	 Iwg7mJVf6aHFO5SFWo5hcjEszcSTxliom26vQaUcvuql/vsNqRz7lhkvSkBkyWC0uF
	 ublZFOwneIfR8C1xmyQj6AGYlkNJ0KW5KJeXtukEUVgcg5k3oqshSg3QA5EB9k3ojB
	 xm5ObcvQG5F8OeF1F8wU1PlrtjEvyIgLg0+H00ZCIQC28kLfwsxqGweIcczsVtouXn
	 whxD76t3oERYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD74C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 12:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178386111368.30640.10314393802335346910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde79a7ed80c4378354141c5c7b02dfa6b66a99c6a56ac459e90c3b7077efb1a
Date: Sun, 12 Jul 2026 12:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783861113
