Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC581F602
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732023954; cv=none; b=noJJN//8E+v0XvMVA5Q3H+gJdPu2AMBGtdDDwF8wFqPLEy2nXJl/psQ3PEAJ4Knvs2IqrZ0JaWl8xrsgjnxppSOrKbMqEsKhZ+2wsEKjLgHWaLhGSBn/OSuCSfuiZ6c8E4kihbUAbDorApU0sHwPEdUAv7wariQkyxZFIYkokZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732023954; c=relaxed/simple;
	bh=lAiEZZVl8zWRSGV6yVl0lrxh92gcHoa3ISZJoKQ1j6A=;
	h=To:Subject:From:Message-Id:Date; b=FD1As4lmsaHU2qricPg+MBWekcBgKMi5O5rZX1FZ3RmwOPqVMcvIpKm9fm2+Tg7WRhBYQMXL66fhxQI6W3FxdMFz9/nZ8yMIDuQGq6bi5COXnDkHzJjmrfiDkz+0LYBu5JZN5qC7PRZ9G0OOOEIafT7xai+acec6c5DdiyX8IT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzsjfHwZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzsjfHwZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2857C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732023953;
	bh=lAiEZZVl8zWRSGV6yVl0lrxh92gcHoa3ISZJoKQ1j6A=;
	h=To:Subject:From:Date:From;
	b=lzsjfHwZ4PCpc/C0GopytBl3Dqd96anBMBTZzvrL55qpmxoPC/1f7WJYp/CI7R9+j
	 7jZ8nKXgVJ7ylC1BeFoi5G3c6NED1YsIVSh3e1bpZQeVyCqBLdkGcc1lcjKz2ynGud
	 7RKXqRbjcof8t5A3gJRlW4p5OR1XeshPKfRtl3Gey/MsucP36rvHN/nrUgthrWittA
	 70MEzFU1MOWo90hJppzyk/L6XGQtCJ51mrnwrH9wX9yrvNqXPilO//RBSRHvMWlwX1
	 5MgqmK4O3gxgS7s+HU6c2u2/stO5bul4tFz9SaAUsziNNPnwe14MWOIRJpfC40doLV
	 a7f1FoNveIEAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E355D4415F
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173202395363.20639.2109745475631973473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e1cb424e82a4a80bb7743c89ba85f80be64b7a6448f7f67ac4441e9ef28a5a
Date: Tue, 19 Nov 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732023953
