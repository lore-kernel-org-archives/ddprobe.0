Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC9A3D6D
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749003594; cv=none; b=E+2FYDVtB7vxhUls2NsLhxhDtIH6TxSBu1jHNAuCIFfF8G+ZWMBgj1lEYpnsKKLixxogUyqDSjSRoTjTFT6zoZ8k5wTr8pstQcRORgjBfjdMYkymCcFiQOOpkPnu4ra1vkauDo8Ku5qjzW0WBNNUE1Um6W3vX+kp7qKz6AtCzZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749003594; c=relaxed/simple;
	bh=TKs+YQQTN4itnjnuXdBHc8kaNruItoCjburbHAK0XfU=;
	h=To:Subject:From:Message-Id:Date; b=PYJ6SeEKFgXyTC8o/jUXkYjHcUjuCwPbsL2lhJZnWEQKHfZYxWmZYYnJ3qFJicxRnWhNcNlAecrNVAXoG8wrE6Ohd7phCuie4XQlJWvIHbUGBHAz4X+RkP/38FwnZm2mBl4gLhntZrGzhjAHABTsvuOOxT6Clc7gNfi9xSBFUOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hzy2quDM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hzy2quDM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A195CC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749003593;
	bh=TKs+YQQTN4itnjnuXdBHc8kaNruItoCjburbHAK0XfU=;
	h=To:Subject:From:Date:From;
	b=Hzy2quDMkdyNCxcMPkt9+PGWYmyv64RkyXgvn/6dXlSr1j81L85HkDJHOL0wiXXVE
	 2lyPkM05V5ACLN7II0pw+KTnfMGnI1UTssgQRqspGlcJ1B/yP6S4EO/8OA9ztR2TRW
	 lA36Xm6GhueHXIwMKzzEpfgeC9TsMonTxU25rWAKUB1JXweDke4K1JVUuWwcpXPJSe
	 FkkbTiErkAle2TAvrkah2Z4wginIYTRPcugHnfQKMY72mfJmxQwzRJSI9BquzaggWX
	 J1QulnyEe0jrzgD+EK6ZSdEufgF0t9AS43Z24rBKU8m9wZyiyqmsVQlZwpKGdJxfd/
	 UOF05SGUhLbOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECCEC5AE59
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174900359357.23697.315389414099152111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 262c235142752fe06958ee35e009df6544b0899882730ae602a884bf4d38d7b7
Date: Wed, 04 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749003593
