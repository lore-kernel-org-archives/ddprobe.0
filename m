Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5151D6BB
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767414234; cv=none; b=nfeYaMcijsJuhrsilJjS0wwINsyvGvMpJhPvVfRw9B6NfjxJeCZi5/yBlWNoMcufl/cqOxb7BrkCKVZeVqHhxCS6Xa6zf/Ns3lT4HZ1lwqxhxY5xRvoDLlRTOGjAi7RG4DHgl0bx7Awd63fdf4y958zg/aoIMgPl69oFFJYcRLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767414234; c=relaxed/simple;
	bh=+B572ZSqTPwwAEvewrPicf3ZklJpXA9//6BEW1k8MMg=;
	h=To:Subject:From:Message-Id:Date; b=ILtpu2jHHtpI9/aRxjrPrc+54PgX7lj/E47pV/mEy7jBFY8hKcggCCHgVBMSJCUOcPM0p7Ho4NT0pjnGRzP1jfVyiiIqMSUWBZgnbpVTZBXVOe8v6b3y208dfyfzix3o4y0Ln9uqYinlCZh478th6WDk/E/8zc7Vja/6tD2Gnos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8DpSVUe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8DpSVUe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E73C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767414233;
	bh=+B572ZSqTPwwAEvewrPicf3ZklJpXA9//6BEW1k8MMg=;
	h=To:Subject:From:Date:From;
	b=l8DpSVUex698igzyqj6/8Z3isUYdqDMJbtjMEyAUNdLf9pAbRML4hbUDhNgXFcOkO
	 kEertVbXyl7rozf9U7YkY/TiyP8XWfOTsxx+MRNw3MjAMJKQrE98FwWiPPITdEwWVu
	 hBJqa7vOrRQkJ0ohyDCQJIR3ii7m7G2hmbQnrryHqhuEP7SF5G9+0T8lpqoEmsdMJF
	 EDezFJ6zWQHuXI5IOi+WuHDsgtS+XtvBS1hPxoraNC05A93Sb/J4veLr7OUVhE71jv
	 DLxCT0lClOmNCCON9ZzsZ7K+fM0iBs5wT/tPBZi8IecCbehMT5CIHcFuHLU3rOnc9B
	 7KO4e5UsERgUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A00FC6160
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176741423363.12358.6665927170262876012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1639fe7fcf3368dec79a8d37630dc5c1185d65b446cc08c962042509ed52fe71
Date: Sat, 03 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767414233
