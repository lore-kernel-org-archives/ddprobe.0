Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7C72222CC
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773572094; cv=none; b=mpBDyWGS1kXxe/8rDAaiWXKO0EKrRtMjjkJ4kQoJwDlaPYEIkfbg5d/fZC+f00Sn7FvHHTpf2wcOgWYzEsg54c9P8ES/74UJ/D69bVRDOMTIjy/j8B0idVzChPw6zFrv/f5eeeihBdXRluLpAsqyacbOu4LmIygDYv26smU6b6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773572094; c=relaxed/simple;
	bh=a3Lu3QeXJ4HPC8zCcUQ+81DYtkY3PdauxLw6YcoIV5U=;
	h=To:Subject:From:Message-Id:Date; b=jDXxUyh5nsziloj0uLx34brEDVYmyaIAWdBBN6pG+64z32lEy6wwqozvwbTwGEqDDsbMyp2fUc3XYBjE1RCZ7DRAHDdsgB+j2uk6czl4JAPBrIAyR+ZWM21eHnedhSUyW7tD9obr5O5K4pXqH1hNkk2pAlr9NYTr0/T2eezgIiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWhbM+br; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWhbM+br"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BEBC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773572093;
	bh=a3Lu3QeXJ4HPC8zCcUQ+81DYtkY3PdauxLw6YcoIV5U=;
	h=To:Subject:From:Date:From;
	b=LWhbM+brK2sWG9pq10Td51KADmlg38RvOCqX9JbDYJWaEYUJ1WqmFbb10VcOhcNBl
	 5D7Z+nUrN5krL8mrTJgZi8NHuBEGmKGnPjVyX669stpsjoCe+4UCt+TgNDWkNJWvK5
	 Z7ZyDvpmadwyFSjRAwCke5WZI3sMOxFVb//0gu+9/N8lkW+UYrCU0bCrn/KY5QIoJF
	 AbI1BPe/Qe83ZIRB0bPUAO9Fm4cByqS5VHCoyy07gcfGh5uYa2Py/BZlUarTwNklVc
	 wJ2dcKJg19P8p7xMaeEF8VPp//r212FgiY9RWjUXa5nQ3CRvpuGJuqAuOTl63vggzy
	 qmjWJAe42Fvhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928CCD58B18
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177357209359.7818.12775095399998264466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c48944094ef5b109d42fa836ffb189acd238fdd9c8a70a9f60319b8f51d5ce94
Date: Sun, 15 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773572093
