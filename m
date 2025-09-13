Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1517724338F
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757775594; cv=none; b=sdsZGVoRzTZNiBWU4nj3luqA8Te6m1eBHK0UBkNFpGl7t4wcgxAUbmkGu8A4OVCxDGKbAg4lz8sjh0ps0wbnn53Gi+/nSwZuTMUTMyLbnYR4e4GgxjzaSgxZljBFhTl0JioW5wChTo9I7PH/0McI2sfywcZPCXhKdjLHcMtr7Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757775594; c=relaxed/simple;
	bh=rTiD+aDi/2UGcq0jt6UlZZKlHK/cHqyaxrRlnnaFptA=;
	h=To:Subject:From:Message-Id:Date; b=HWN0e1Y5MT6Z7MRU1BfbP6hl3MnspNu3FjC3uORXuBkNChxY5EWEsKAwNyg5qXaza6IQziEdf80bKeAyR6YtnomECwzUyw3gARasclYNfLKhrgK9AvRw/XZdSx6ww26CwYkauFKdG3xiUJfs9kifYR5gWq9biQhwXpIlodv+SQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4G2kkfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4G2kkfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A221FC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757775593;
	bh=rTiD+aDi/2UGcq0jt6UlZZKlHK/cHqyaxrRlnnaFptA=;
	h=To:Subject:From:Date:From;
	b=U4G2kkfkr6oo2UrKipL5azbBWVgSV3gCsPMJmPo+wuwIIIUOy55LWs+wBtsLp6luo
	 szq9UonY7DX4kxfVA1LKygLlvzplhboWeP/rSciAB01c+HBuTEm1QESxMHzacdJJJS
	 8UoXwJtqDMEayy8BWKpz12OmftnaUxXV7TFsMipC71xZK1ZDXIdz18Hmf0t1sie93n
	 vmKSvldDwfebdTpAJxpfO2sAnHoXjhdNWr4gmNnroje0FCQLEzQB9HgQsqQtmqQdtx
	 jZ1Fk8WaZT+8ykHAJAFbFT/pquH+PcE//Ha8DJW9bq4+3KDAf/7p2bLzPZp7D4OWQw
	 ZBZvZjQFowUiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F383CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175777559357.3802.18035757531548478254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 418b69e97d4cc161e9d631397cae75853ee67a92a0bbbbd3fe886bde01ef64b7
Date: Sat, 13 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757775593
