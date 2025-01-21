Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486F61F2361
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737464754; cv=none; b=MCOmeqRCJIZfTYQ64xQuQmVCN/g21o1bphlN5SckdvGYAOK7/WNO7LELPcztc19hXoU5IvF8a1HO5E6qjYA6SEJq0Pwr9tAWIEW059THaIQnNk5R8szPICZ8K6gK4bbwVDJ6OlUf3mOf+Lur/TtGxzBqSmlOd84XonYiMBMDN5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737464754; c=relaxed/simple;
	bh=KeS2Q4nCgTpN2XL6reGZROwxTni+Z4Hb8+tp9ZMqA1k=;
	h=To:Subject:From:Message-Id:Date; b=fhEjSgBNLUnNXgFlU+1h+/6ev0VgtcviX/7xSAQmgZUiXjGKazqL/hyyqjidmHeDXA02GlL5DdM1FmmpdBbGk/G9N0LsO8A8kcTgvYbqxFpn3gdw2guVNBlPn9VwYLZa8yIPPcquELYxUEnZC87GQRMEthYGqZdlWAuSPQeRKWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eo+iIC+L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eo+iIC+L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB510C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737464753;
	bh=KeS2Q4nCgTpN2XL6reGZROwxTni+Z4Hb8+tp9ZMqA1k=;
	h=To:Subject:From:Date:From;
	b=Eo+iIC+Lu9dBheiUs3eXmDd5IYJ8v/2kaDP1DO1RpkYeo/MQP9wvhxCbnLowNmTZ5
	 WIZiilinCeQkPNIehcpLA5NMsKWNwMUncNO4jdXXENXx3z1+0LOVocfszkcbYQY/Ba
	 IKy7Mtw5mIWsqgopnfpWJs19yjdTtnV/xH5bwdnQbpF8+MQNt8nCtY01RvD9sDBrtu
	 VDtdLBrxl8Uuw3uRuFzORLj9w72ZXvgK6P8EP4wNQDnuKpKXVlp+tWbzhmGnODKWT9
	 29sb/Y40e4kJ3y4v7SObAVlqNRdCJV+2OVObIRVBWwPk67jeXusiviVgJwHp55J8CT
	 xHidq95TkWUhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982C5C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173746475359.7251.2618334007025117214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e3fe8145c43120a3cc0d251ab4f7b48ad2679bafbd8384aa4d1049f8b9f43b0
Date: Tue, 21 Jan 2025 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737464753
