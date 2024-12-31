Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7FB188CAE
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735678554; cv=none; b=gPBBu2Hy7d9AtC1cDNkh0AMlDtn3K9gmKIkTctyDV+BXYgJjL2Tsc601UD5WMHDHB3zcFRFAlQxuEs7TK95exIms9BuZUev0K/VLxgtpoAtqErfva65MSD/GbenMmwzrEq+CpwnkAtwEZ78SuCV5X71MQKz5cMac/Ok5iEm+zFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735678554; c=relaxed/simple;
	bh=VGL9WvQHVJyhXCIqRZ/5D9yBIJ+9VbnRuWJXxy/r1LI=;
	h=To:Subject:From:Message-Id:Date; b=GzkeY/pCFAxNG42QjMgUQIHawzeRbO9EXcXyw61lyc8KvbyJYYQGawMXpSQwPgbscmL/y26HCmE0YqnTxRG5bJy0K+hIJ3tYHm3qCcHWaOJql1TbmLM1coMIhQR1imTYJr8VNp/ez1eNviKBqjwG6TdW7l3MAWt6MPzwTTApHwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=np9KBSh2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="np9KBSh2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC97AC4CED2
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735678553;
	bh=VGL9WvQHVJyhXCIqRZ/5D9yBIJ+9VbnRuWJXxy/r1LI=;
	h=To:Subject:From:Date:From;
	b=np9KBSh2CbxdC0ekZ0vMKmoTUQb40JRbje5sqeeN9D89Aekpqj0avwosq+HntLtuc
	 RTbWEgA6wle4VGtQ/qdcXzcqgDFDR1HCYkZU3o7E5DljymWVQlGUQ7CcU+rj7zlWz5
	 KtGRariOd5l6UObSOjs6VyfNhFXa8o59/voyPftq14vm03M9xFlxH48oLeezv0bJpD
	 3P34Q2xUfrG9TSyozeMnTB/lJ9SnuqNnzo4s3O+TG/GYtaGmEC/wcyGkR3nflpBKLv
	 a2hbbsbdP3TJrQkaRvcUagYmDL2ED5Lo/cVIoeEukOIKjAxavQa1xvqSb347D6wqHf
	 85eepn449uwlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917DCE77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173567855358.31257.8252014646848673593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9300cd42318f024d17fce4f6073d9bdc596397ce01a41851946ef72ccc12246
Date: Tue, 31 Dec 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735678553
