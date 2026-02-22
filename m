Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6FB3FEF
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771741494; cv=none; b=toTLNKdOM7AFug4HtqdmPKccKCW2xPbMPrmTNnx9ZzTs5dgUTBGTC3/3nNRGuKJp2MujhVqUUmcUi5fF6iIvA2SRIYnREEv62r38DE+uoQxHESEVUQTPx62DhlrdDW5REZH31AmgUS9hAxDhDB+WTqq4UsMUiXWnH5Y/MoWNgGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771741494; c=relaxed/simple;
	bh=wD4r8SQCkosPejh93954WcRSt1TpLRpYnMFdGbKJ9bM=;
	h=To:Subject:From:Message-Id:Date; b=ECbOr5AljHZYlUN8GjQLF0A6Vo6wEuwUihO4daNGlJgcOKsgX8cuo2Be6inhEF5Qwc5Lerx4SjWUA4A5NwpjXYbTOotZHXwk83XvSgjqxmbvCHvKz71+im83B8Ft1bh/dPVmaxZpxoe54gN8JouXLDsCNgBN4qXlZxO3mohYeEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zs5HSDhR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zs5HSDhR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA76CC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771741493;
	bh=wD4r8SQCkosPejh93954WcRSt1TpLRpYnMFdGbKJ9bM=;
	h=To:Subject:From:Date:From;
	b=Zs5HSDhRKWtS9u5gtDpnaHtfcd8NoTrBpFCoI/VWMbxdUTSTJ3pMOORUymIvWOPl2
	 InNgefqLSWFAdHvuOq7yhLXzxQ2M4Go2tb0RuEZRaHIJhiszUUB7IF9XZmwqYelT29
	 hbf1wyL8pp3cUPlyVqFIbWN9Yoz4w9KFqzw+11aQS+Zu6n7VnuYq3IMiddvnxNd+Io
	 cVFpc7RBBV7KqGMyvxlXjVf+oVQCIYDvkxLFHLyWaMi8XkIiBjvRcpgGq3msSXuwbN
	 MbDNDvCCAGQSiXc1EAFkFA5cP7iKOiymUlZDMFa6vEZO0w4YnF4qxd2yVsph8b2KTx
	 Ze4wHDJoGeCvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A795BC624D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177174149358.3314.3154060150288939868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23035a1f7405ead9a571184cf5c197b824706d6341b5df1d2c15fec4b375d6bd
Date: Sun, 22 Feb 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771741493
