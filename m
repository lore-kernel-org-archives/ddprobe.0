Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51DCA468C14
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788248434; cv=none; b=M65ERVaYb9Qvnj2AA6cqC4jDbidbOq+IVg/DYa9rsd38l+OZm7YOaYb1P+/2/aIYac22Sb1yplxxb+HImI1+06cBC2McDn1dpfTmv5DT9r5Z7TzQGs8fkL2FgGo8RseQziWAjE5VQfjpYFvmFVfwxV3oVfPNxR17D4mhsRAlTyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788248434; c=relaxed/simple;
	bh=9BjmkCTYelhciAtvpZq4fFRObsqa10mlxCbyMTPhyqE=;
	h=To:Subject:From:Message-Id:Date; b=HmlZN3LGFsRuYqjOYlHUrMjPZZlFsn7WT2FtMKtnHrRRTlD3HZMu6AYx+rlK8QWrgIqljBrYoheRQo9BNrPhIyEYJxLHRsjbbka+FIy0BLYzKPSOkCzKq1pKV14pO6sGL/93vTocGiRdBeoReWQtruu9+b45UjayFth8lkGkp3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLga4k86; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLga4k86"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB42C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788248433;
	bh=9BjmkCTYelhciAtvpZq4fFRObsqa10mlxCbyMTPhyqE=;
	h=To:Subject:From:Date:From;
	b=QLga4k86YMu2/9zTxIsSiC7MHDDV2XLdDVPZzD2KlfY5Sdqp5yfKM4RFlO0vvTbWc
	 kUYTFcl70aKCFaAIqY/QwioB5COxCEkF/ggESEIxuQTeP+7M2ygMESX+5EsACF5TId
	 07l5W5JTQxdtTurRFKIOAkhDMp1rJhHmOKkvFbDU97j6OwXbPW61e3QWK+pHWBltdJ
	 fC6AYyHL1YDnDFtuJNMnh+n6lEk8Ui1S1d8CpUiyhz3QV7JuWpk+jWzfz5+G/a6Hb2
	 TWhwjTl5I1UAPX8QAcRaK0Sn43C/f6KdXfVKipPyn7t86uLAKCLTE3KG8nAi3f3EtM
	 cOyVkAAK+vXsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA7BC61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178824843369.18746.17656082193456990804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 966bd6572b598a5736ff674d25ade63ba90f6223db8306fe54b51ab26fe494cd
Date: Tue, 01 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788248433
