Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225AD23183C
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766634234; cv=none; b=plFZPSHa0sQ5tW0BLKBrBm9J/+HatNXah8C9EfKGdCAh2K6AEh1TP1aYYyYkeP+RSg0BPxlBL0YBGwb1E7tOWANBhrAkxSNcfOMmLEIyA6AGAJuwSWjVKiqjmSW7eCjcu+C1Aw6PcBIQunrh6KxrKfD814inBAx8Zy7R4lijnGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766634234; c=relaxed/simple;
	bh=yKNKYVmysuFMDBbpIx9wzizCC+ebzCR/fdETmimx7rk=;
	h=To:Subject:From:Message-Id:Date; b=hd2UgwH+Ep/j3BbvKkpdYSdZ7orVsZJoh9loWLhEO5xemX3pBOUWVIA/sQedufgkNVoH+VKbzipYM1EL+a+ga54DAtVdiTAj93nV8ACSNhIi5wXfnAYlJ5oLOS9wsy0aOFeQbk7/Vqsb4lMXI0omBpFoRwZfHzTdfxecmZtRVeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMgnLvXQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMgnLvXQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D2BC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766634233;
	bh=yKNKYVmysuFMDBbpIx9wzizCC+ebzCR/fdETmimx7rk=;
	h=To:Subject:From:Date:From;
	b=bMgnLvXQqmfn+c+RwZVKjwo4TCzAVaoH9dDZwDdrrrocj2CmMjv4KVH3jN0Dkmiq1
	 aRvMQC98WzO5Ul6I0BZBBeSA/P4zIngVEEn6UWDFZNOy42jdF9NISMHQGfcTvZ4GOx
	 TgaaFRjZGHq+CnvYBPAr+PV7iY0Z3PseVtFauyFrME1NBGnr/pY0dapfX5wOOtc+3+
	 6XIGgSnHbqWBiVJbBu+qNVwXr6MlAwJSw3a9vb6VWiOntIWhpmeIy7nfSYWdm5Chlf
	 4PA5aHcEYsCjxGJimkNN86RyPfhaD2dSEb8AeAYstESHrSKDQhTTBlaE3SX7YMJgtS
	 uK1n8MIeCSjVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982FED68BD5
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176663423359.10058.13086585009856709964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f16131ecf268cb5f870e07efdeec34acf51e8d597e39617a7fc147c42228bf8b
Date: Thu, 25 Dec 2025 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766634233
