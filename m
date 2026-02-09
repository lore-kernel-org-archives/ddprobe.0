Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17ACA1CEADB
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770636234; cv=none; b=oxh171yumzl4RLiQezoC1nf/H/bouqXhlHHE7Y1rrJplc+LqrOO5DuEtjKdQm2IDQCtjT6bFv4rAjEz0H8oHAsJ4kyCzdLGJVDWtg9RpaQFFpxwbu82OERYIjHEgYmqsGuuAjXRiYlhgqb+t7k5zxZIaIm26VByoVCJ9CSg0Yqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770636234; c=relaxed/simple;
	bh=49UMJAjMNG/POAwctOvf8fRLwsRn7yc8cZvHuKPND6M=;
	h=To:Subject:From:Message-Id:Date; b=k9aoGMjSXezvO7YrW7bjh2VEmIeOZGMOfEi0sytz8NakFz84TWi+4J1vq7yZ4ocF5ZxCPMDlFapb6dGdWtv2hCFSsNZsopcme/egZ77SUjD4Y9fFEAS1C700UGnf3m42/mGPvy3zumcL/68Uzd7yRnhI2RU8mNQB2Qn8UQHuL1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nCWPU5jJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nCWPU5jJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2D2C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770636233;
	bh=49UMJAjMNG/POAwctOvf8fRLwsRn7yc8cZvHuKPND6M=;
	h=To:Subject:From:Date:From;
	b=nCWPU5jJXgxS/rTTpCjvHyLEHL4is4yn4maoZS73xRDAwZv3EiQxMFqV+NlB51W6R
	 Sty+HGQq5jRvew8ksPc65Y0/xs3iCr6YDITgzXMz+JnrEk5NpMLju5ZrdhnG2+kHaD
	 sgjmrTXdtGFWk2lT7/z6+SH8EYVhBPKZaT9yv+NgHnvowJxofHcbTiHoRJvdUh0Rtr
	 shQhdVH9XAzBjh9v4zRN6xEz1hSKcF9SMLrkLmt6qZOgfpuJsrHWDMJcgQvqU3ZnoD
	 xGeWq8bsodoaLEkSzCmOu4skipI+KWrT8vnke5qCEn5UigHPNdVFSAPDIenGRI+kjt
	 Ea5JcwD+Qf9eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974DAE7E0CC
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177063623360.3848.16801118344721277152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d91a24c6545ba7d616ca2ab3197b8303969b82d045c2ddba9f28fbb55acd2534
Date: Mon, 09 Feb 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770636233
