Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DEC3019D9
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 17:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780422274; cv=none; b=pkRhQE+tXRuy7hRk7eyl09h9Ut4kZrc8rLabmtyBWCkyjojihLF10SffdyWp4v0Bh3SL6osBVKDXF3G4M7SeuyyQXFLBz017TngSkgPnRvx3G0SZ7zSuDrYLelAJo1SNNTom0PstRDAcOrPTk2UmAkVdcJ9bvAXt2nUnqFiWgn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780422274; c=relaxed/simple;
	bh=SFgL9XwRmq9xR7MrSga9EEZ1A4idVRfA+7Gbb51WABI=;
	h=To:Subject:From:Message-Id:Date; b=tw9gOlpWnW/hnFAlAEn6gFXXJfcOmJC7quIKkd+fboCdQrIrPQzqzD3cHAEy7RP2so8sQn2KYZ8Q/2cNqj9AtzT7Nw8+UDdCa5RyNUz8RePPEWeTxxhd+V0expaob3FhL5Z0sDwzZyfX1BVbDZ8m+sq1BoE49P1wgF7h2YPRTbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aUWziSlo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUWziSlo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07F4C2BCC4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 17:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780422273;
	bh=SFgL9XwRmq9xR7MrSga9EEZ1A4idVRfA+7Gbb51WABI=;
	h=To:Subject:From:Date:From;
	b=aUWziSloV7eNEt48qpO8zY9Dt2DaFwWJvdqSduCc/IGOoGYUatwSm1u5oqWdJSRfV
	 snEhugHZuqUXYluwgzrJuEInxj8OpKq7mlDvOZ3yB3sbDVDeOzH9jHtCFbMENWvone
	 3HJMyeYA/CQNeK+GsXopRKiq9nvxiFDqDRTeGGoNifvnF5ZYvu2J4mGiSAlRaWk2IA
	 17XNEP81tDjALCpEaLGGtzONMcrxsdY9hdBxcqZW2wx/ZAKDT/+76iZWoTXrTWCpRj
	 x/7jMJ/YZXw6rg3PerHszdK47BEJ/DoVTykdNtFQ638wLrwUVvlqLO9Aw1MWUG2uWb
	 Sintw2sYNJScg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BEACD5BD1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 17:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178042227368.8557.2050903507431505095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e26c5067182e1c3cc2f4ce8cd20224c129f647feb715fec67170eafc5f65c1dd
Date: Tue, 02 Jun 2026 17:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780422273
