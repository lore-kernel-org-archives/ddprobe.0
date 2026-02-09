Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122F6314B8C
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770677634; cv=none; b=TzgrRlcNEHKJS1eaJSM6pLJpfB5rU7z37z+y+zhqlk01xBiAbIRL9FHakKG7/3r2el4fRMA94MHmiUUkpgg8j7e4lsbqqpVck+PNmhf7ic/W5k/sW5nTfOsAvRSjMAS7sEEKw0/+bzdEUo1RXt8NGkOUR1AWNPqmT5wgbEB4J/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770677634; c=relaxed/simple;
	bh=6jeiw6E2IVcmDERNUckKDVctZkdWKEYSrS/z87cG0zk=;
	h=To:Subject:From:Message-Id:Date; b=ZFmm7aDKyQcH2LxnUqCHPlfZVELFfu/+gJlEU6XoOdUeb8N7wf2SWnP9Wg4m8JAnrv087+qvZDdLC/aiNYYGrFJaF53Wh96hDlE3fogh+bFVSxromhUsqcuWMMW1b5EWuEnJ5mGDNkop9xTqT86afxsOfFQ71t6XwdJwiifgXh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J26xj85S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J26xj85S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4194C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770677633;
	bh=6jeiw6E2IVcmDERNUckKDVctZkdWKEYSrS/z87cG0zk=;
	h=To:Subject:From:Date:From;
	b=J26xj85SdBz+YGM10UWD9pzoZfKwEBHE+xLYuDKr84C0BDlHIf+rKq4w6WYAG0ngr
	 P7z2dy/fWFUt4sXHDjLOv0CKI+YP4lOlysC8JMQuyy4qw5xp0ZfiC/5MBjaui8XKVh
	 cmvO8nHXg5/lH5/yHJWUf8I4hgLzwUx2B7COfXMttndjHD9NqYdfZcjjrezBYPcpu9
	 xRn1SjlD5tntDUhOeWsbpQh0k2tRyY7DhCh5SHjsHaHCOej8TevFmXddwHQ7sovQoF
	 J2iwfx09aAa3kAiFvaPXfujaDvbO9Y2MfPrvjxidh3IAtN34Zk2hpUPE+CuJuLoXTq
	 GhJY0ygzJjhyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93852E94615
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177067763359.24049.2650331478313747694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adbc355df1536aefbc4438b99cac54c84c7b31cd78cfacf95dd4210b5cb72ea4
Date: Mon, 09 Feb 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770677633
