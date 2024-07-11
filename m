Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF48155C95
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 12:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720702643; cv=none; b=drCbvl9Y/jUKqjmzlSbjfSpotkdTJzmqNdOJ0q4W1dacY6mGUCPEn92dfMNaefzIcbNRzkTG8JnblYwJKjX5uboDD2vBST0km4E58bZ3nu3mjUtvoqs9yTzIllaVwF2l5zWwBHOlFS3GnDxq1Hv7q428QW9YfQ07YKLMP8UATjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720702643; c=relaxed/simple;
	bh=yNSRmj9vmpDygfZH6TqeivvA3evpZ2+1sz0NXm84kY4=;
	h=To:Subject:From:Message-Id:Date; b=N/rKQeOALnjl0esV+Tles2Qgjnmq3mtsDLM/pSjx9kAhpD0q/QBm31Md3GWD/W9WKUvtYoj8b4zDQWIaB09zyE99YNavbnig1b6X69ANebjB8WuGccaX7B5sEtyDi9vmbxVS29l9VVQQCblgbUrN4gtQo+BnSP9tQ9h9H2BNro4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AyFM6IwM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AyFM6IwM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2D42C4AF0B
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 12:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720702642;
	bh=yNSRmj9vmpDygfZH6TqeivvA3evpZ2+1sz0NXm84kY4=;
	h=To:Subject:From:Date:From;
	b=AyFM6IwMk3TrPDhvcnQaWwf1LSBb96VO3avRK2E9GZGdQxF6MF8i0XWak2b1T4MZm
	 3J7/qEnlk9EXU5tNhbToV8X4u7bKb7DAGg85HRgsbHNiVmDBiFwJVevXA87ssK7iaD
	 7MA9VBelEhYihw0KeERinzDqnSXjaE3gMy3S8Qo/+4unqUF8Ccf6Z2Bf4jbOwCR10Z
	 rZ1o47ZUBrYfmNUR/Vqet045XUiUO0C0zUbNHoSqype+AslRss2YckeX/NpGdHvOwS
	 pYiTxdfOhzPjXfonf/YogKuD1JTec/MUprt/wsNrgPXPj10e9T/NH21ZtczhRnGbzX
	 nanI4GLX6ku0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6F57C3DA41
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 12:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172070264280.17365.13658898043847840916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fb04e64a7d7e8f19761f6e9c921f6d557fdf8773ae31353ffcd7a848104c7a8
Date: Thu, 11 Jul 2024 12:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720702642
