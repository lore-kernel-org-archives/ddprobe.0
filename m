Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2036A3ACF0C
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 17:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779642754; cv=none; b=PiPx0LxczkPOQHgfYHNYgM92VVHHVGNGPUb354uuZ98A/khwp3NIBROqLP5SPbVr0fR8NuHG1gDkCVBc/8TV2H/+5kRm5qP3PAwsQJmUWZbgeSUx4YOTvvYNZgP+whBXDHMyi08fK7pk70JHKBo+yCMmAiLzL/XeDo7kL59YIgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779642754; c=relaxed/simple;
	bh=YfP+soPoYARarcUejKMv0A0da0VaEUexL/1fuejx4xE=;
	h=To:Subject:From:Message-Id:Date; b=O8ddVUmKer6AdmYAspGBv83/XaLFSxAShmikK5mn9XOOfSPtAVgYcSi9mY8GmXoR6BdE3ZuzrZqHzJZXqaUxUkMU8IoPA/pSHpogpNA06ywA6tp2J6ytvyWzVYaP9XQpRld0pKMZYI5QazN2HM6KKKI8avWhV0CbcyJWKEWDpmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EB1BhWJR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EB1BhWJR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1AB6C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 17:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779642753;
	bh=YfP+soPoYARarcUejKMv0A0da0VaEUexL/1fuejx4xE=;
	h=To:Subject:From:Date:From;
	b=EB1BhWJRsUPejc26EfGRlTWZ73eYcWXB48H4s73VwPFLOmGUW/WfcuK/HwT8WJb+v
	 H7clJtQMmZWcT7w1p6KafWCwAqz8zJPd/9t6ChT85Cy3tEkSjWcknRaR0w6iyC+l3I
	 Isfgu8/cldTcrWEksu2yu3acaNQoG83wYVyd2ig5JmjOzdTN7K+2GQEBi12Cy3tyue
	 61R6COMprxGipEhlyezVGpPQ/2dSFgNd9uP8ZJNYuwOYbNEHciL4f79nBZqdN6XIaG
	 YrmLWCrGSTr/DLUqD0qGYTfRawTXO5jWVhU5G0uyKGjiWzjHfRBDHLiY6lVyh2V7/k
	 Bfab6TIsLDumQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DC5CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 17:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177964275368.24862.12173344790017839853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3652526d8b2e2aee95a392ab2afccfb88238f6ba433709b1c85e7562c8b560d3
Date: Sun, 24 May 2026 17:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779642753
