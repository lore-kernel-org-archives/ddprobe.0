Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D00A4237707
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757789993; cv=none; b=lhqZUcB0RF89xYPbj3/07Of4aAFSU//cs8+N7IA8YW8a5y4cbU5SvwJ5ePrrnJTJSYOSMcrz2OfiWgDawFxHfWffz2hGq0Ewafc5kbj6dB3UexLuIUTA+3SKX662oNATyTYCXRxKiViqdkRG4atNIAb8Ls/yGR7nPqtMXkYbR8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757789993; c=relaxed/simple;
	bh=KMRe69xYpYrUH8S5/U3sTlr3sl6ei+AVjKLhezMazs0=;
	h=To:Subject:From:Message-Id:Date; b=rUF1wW0lKi0xJiy1wg6gbXcIQ9QShx/GPI9TFHJLYsVVFq/4ufu5jMxYYLbb0N6sDsJKvBUsqsOL7RL9zh+VWy/BoaI7qiGAT3KV4Zt3tnHqLAxc8zaU3tIb2DA0u0WU4YPvQcigg9EbqR1ExNigwPe9JnMKmOjCor02s62FTX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fulBUcR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fulBUcR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7977C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757789993;
	bh=KMRe69xYpYrUH8S5/U3sTlr3sl6ei+AVjKLhezMazs0=;
	h=To:Subject:From:Date:From;
	b=fulBUcR+zeeFQv1hymnw0KcC/Iqe9HG08eu7TJkomQaCnwJnj4t5Vl3SitfdmVHGN
	 Pt7an+3PfmbS48gJEyBn+xL/RhhOzT78kbLau8VO4T2g7l/WpP8W1xsLAGDcXRt3az
	 naL4hZ8vjETKvwpRJEHk53u3GvtPLcESuYvgwzPD4qT3M0FLDqkxzv/DmDyxmgzNlM
	 zkOIIEC9nxZEzKp8Mim34AUcBaVBd9e5d/lWmrFagn1qee9Op0eOpgnk7FIlcG2tqj
	 OnOphKfN4YDObXGiT7+tER/jC/2flIMbrOzcqs6EYdVZRdHzla8qc/FbY2l05ILZ2C
	 /v8rBit2fhfrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98417CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175778999358.30565.11925512893491024788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0cdfe9e6d5ec0ffb9aad5b9beff114e09ee562f1f82037b85f0fe9a4be3c3da
Date: Sat, 13 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757789993
