Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD5F1991CB
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 16:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765211574; cv=none; b=E4B+iaaNJ4vPkuK8CBZakrIq3HQbrw6ki9n+iff31wZ2EuRLaloBPfa/9YvZwERRNCatofSFrVDViIr4m5jzW1p7YYpstm+9v5FuSEQyaIPisZvZscisN97C/wMLRzHfNe3Iy+5gIG5XliZX7QHOkVXOhU8XPiDbV7nr2cQIh98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765211574; c=relaxed/simple;
	bh=GK5gk1FhcXtNmQ7k1tRrweZf8+GgvPoVUoBddQHEYG4=;
	h=To:Subject:From:Message-Id:Date; b=KfrtcV+bTTFv/haMU+3AQaCM6mnekU8UbsYKPObeu38OV4oI52gfN/oHRF7PlV7w8Z1AV53ckagGc+legifS981QMlvQGkDYnt/h8hFamlz2csH9ENrA7S69dha5XBvueZKadGljsbUl77z2ta5zeCJvdDqHs9izm77aJSszZ44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnnnT6se; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnnnT6se"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AEAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 16:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765211573;
	bh=GK5gk1FhcXtNmQ7k1tRrweZf8+GgvPoVUoBddQHEYG4=;
	h=To:Subject:From:Date:From;
	b=LnnnT6seklNgv52Gh/DLpM5aaM092jXOQGp/5vlB//s9YXIFmdMaVkxgMwdi0OmQe
	 xvz+yU6wrDvqjmuTlgYwPaEcmj7dQHahnMD7wH5e5nnEof5TpwxygxtT4qHMYK2Zlf
	 nwUdK2TgklzzIRrQQqmQY08l7bpPUSkxPJiZus7Aya8CW3kuY5NqZCHINm2C2Muq2a
	 P8/x3DiufYQXjStw+qJ4nuWEaQs3NzZ9F8YosJ7Al3I/qwZX3LGBYpX3ygQzPY0nwM
	 faKb3S2V/YuJUztnpodqtgQ5R517yHTD1f97/DRRYhXz9Hv/msy9mQkCAXa+WaRP8I
	 PaXo4Os2mN/pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EE8D3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 16:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176521157360.11720.13244692035206968030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7a7cc257cb3fc070bb4284b179ec9d3f2f08db2cb985a13fc34263682c20cb4
Date: Mon, 08 Dec 2025 16:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765211573
