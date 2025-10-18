Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D1F23B0
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760803194; cv=none; b=rsW85EZOeSLvc3N6KYPIBKpG+oNL6g818dQKgaJvQqi2dP0qhuS8sehtR+gzeykgSYOwCkQBvmAQagrGdqM4WCmv5+Xeik3b7rmNMMZgAtZXaB6LogM4KWV+qFl+SlkXMjsfZol3JMV0TOijl0SRNquTEElHmmwmJfNX0RRmsuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760803194; c=relaxed/simple;
	bh=dK+0yu0kvuOz3x7ylRgdn3FlGbTnkYseVmEKUi+dfws=;
	h=To:Subject:From:Message-Id:Date; b=PzjsTLg9gyXRLDSaKWI3xTGjxT7++LqQxRqYlWC18pYIzdjL0fpb1tyep88CxJhdaf7rLuy0xMK1xpdJZuFQ+W7h0q8KucmYndnGS3tOTyy4eu8C5CfP6cXYtzJCHiuMGHzAvQd7mnyJdVvTKI9v3khyAbaFKjbcXzR6nxb3SHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2+xaS1Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2+xaS1Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B5AC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760803193;
	bh=dK+0yu0kvuOz3x7ylRgdn3FlGbTnkYseVmEKUi+dfws=;
	h=To:Subject:From:Date:From;
	b=L2+xaS1ZHVrc0fPojDgvIY4ViStYenubVR2vR4swSOhh6TXC8TdEx9TvISv6U0gs9
	 pO+5gc/GuF46qlNI/ISE8py+cXl+nRYXsXT6qCdCM8154ztQ3ygqx3rYaT2bqc7uKe
	 BCxQccJp7WksAZxlNhuEISJQ1vXkF7WhIPK7D5CmFq19D6A7Ryf3D0wRm5Kw2c+Xyp
	 5rmKEtlSK3nO92DZ1aGbFwQrI0chWdAGao0leurPG5TJG9GReZwqmtZaZcDkekmFtV
	 Ggcsvv6scwVrBmSKq7Lya431olX5hyYEo5Qj2fsBy3qoD6mQ8B/03ItYjBBm7iIJj8
	 32fsyHw8RBwyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912BCCCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176080319358.15546.10633433273760079387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae737745df85e930828e87ff60d55bb40a6e316601be3f662f5239e238a3a287
Date: Sat, 18 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760803193
