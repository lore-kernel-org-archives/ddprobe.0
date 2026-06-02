Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3054833D4E9
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 12:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780402474; cv=none; b=QQqbyv0O9FmljIvESGt0eKc7cOYXuPtRnDNrc3qJ333twEMZc1CX24lHypt0gjxRnDLXKMWwS+J4a4YeE0qVzOyDGsmKzTLTfP/FsQkfI7L2PtiWvEWNZ+59WvC7IfrFthLLzTdiwV6s3nJsfszoHlsn7BusZ0ikjhE0lfMFiQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780402474; c=relaxed/simple;
	bh=dlYWru4jBZPoeCUq7ZznvdivhdCPK+VCdWsDM3SvssI=;
	h=To:Subject:From:Message-Id:Date; b=MkAKuSQxTDZC5c33oECJx3sLYWBoJxD060WY6xj5Wokbab/HoDgshGApl/PJC7HZMHMdi+zsuZ3ls5vjUJUZ2WR3KiQOyuH4ul8DoRXPJsGZqO8rYC7+oSWb7GuKU+ZGypqw5Vr93G94foxEyU68UnWxVs07dCwpmDK3Mpmhhhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRkpxxs8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRkpxxs8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E21C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 12:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780402473;
	bh=dlYWru4jBZPoeCUq7ZznvdivhdCPK+VCdWsDM3SvssI=;
	h=To:Subject:From:Date:From;
	b=NRkpxxs8J8c1R2RU6fqITEwYGqvyQupl674zzTZlUK7nsStmsD89uR5gQmxpzVS3P
	 wwTFb9mfkKox1pCi6j4v8mgrIPld7tTioN4KgTfeRpWUFdJSwxLt5h50EjRJJof5P6
	 Z3q223z8F83WKUC/u2W5kbhlCkyeDHJw8/NZoJWLwZLUoC16Dv+xWfz7zmQ54vppwT
	 /c0dDsKbi9aYk6XOD98+M6NrelCZ3mfOW3WTSTJ9FYeCnQtxKwi33Bexg7htfvaSXt
	 QTFtPQ3su/qCPQrassByw6wCnKwD8SM1Afc6eZ7xqvPctUObzXzeEX/Qc+E9NsQ13Y
	 xhzTN4wS2jVmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB448CD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 12:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178040247369.5869.5360542812001951079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71a053376015d90b78856cd35ae78bf58c02b9491d031cb1f0572dfc52d79c1c
Date: Tue, 02 Jun 2026 12:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780402473
