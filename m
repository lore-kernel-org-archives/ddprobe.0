Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3F91DDC33
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738664154; cv=none; b=spBLyC7F1OofcNKjuqHeie/B3LtJUAIrxajjLPHlwJR6MZHIjuiGNSYVEJuVQCLf+fTyNiEpR2HwDQPnqhmRni+VQNyjldRGDbXlhBuE3Lj+M6jGImLVW0pUVkTIf3j2IaJNgtyWtFp78lBmENKQ7O0au3VXwXcxG5z20fE9qyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738664154; c=relaxed/simple;
	bh=vpDlrN4DnsDV4qcjh79eksA0eoPWBrUssEzfZ3vtSgs=;
	h=To:Subject:From:Message-Id:Date; b=nw4FNN029flfW6d4a79BJNHjIRZI5IACv2BiLV7MrUsM6RXbg6uiTpP7ATa2hAMKvEewCykBB+avJwnEAifivnFug9stW2RDcKzx0epep+wJfUHzaAv1gAftwaA2TCLmSthPwWQDTRr+8XLY5Ww7fUCmmy9oha25EoyythfVuPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ghpW0gEN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghpW0gEN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E68C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738664153;
	bh=vpDlrN4DnsDV4qcjh79eksA0eoPWBrUssEzfZ3vtSgs=;
	h=To:Subject:From:Date:From;
	b=ghpW0gEN/EsQ39d124AtM4IxvJ+HN5ruqjQGyOpnPvpVyUz6OYRSrF9kCdwsilMLJ
	 uZ5EUS+0/POiVJ39DLlpmtVGYakK7WnPwTkpShNU/AOptwLF01bw9GqeZZzZhYwarz
	 euh28Mya7P5O+UUUYz+94FAg3si70Bdg5qX3eKuiL/7FdPl/DntKFNq0wccWKrSf9E
	 NmjAi3Zi9W0eWiuSb2BNj7r1iA17tv8yWzZSibDRIsXyGM+5AN7fb799e8ilXtZTzE
	 YtZ3YpPsAWtBTKOK918MUrhMInTh0XSija6M/05P4y06a9TnCS5625+NGyJeEP1+kJ
	 ILfHoCJGg485w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95521C02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173866415359.22284.9519620584487807273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 263e76b611ef430c9ee1090588743445567d825885e36b09550c229421b4c580
Date: Tue, 04 Feb 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738664153
