Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F17F33F7
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728722754; cv=none; b=MeicMLth+jqSEye0niDv7cejrNjRDS48o09NcleMlUnGKWXulPtTDN89ESPYO20igtoh5J+dPoqyeoGvItuahibOYGHXAZP6NkuQvx3/Hb+sDoSNyWmq3qJGXnst8d29HmOKH4lMf3T3NLwh+dsWWMWt9L6OMesKskGWkJHnQi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728722754; c=relaxed/simple;
	bh=V/hbVYcD8RhOHa7R5xVk+zV4AKlbysVT8c/fHnrxpx8=;
	h=To:Subject:From:Message-Id:Date; b=DmtZdAtG8XA1irYj9Nbm7ZAUDckN2xZhxbQEw4Ee3hIL58y7qF5lPE74ZkFCBouCWbMQyxVoTtBhOtNgyInZ0jMvDVZlushb8HlTDqlmLiNErucQsHIIbTBsvdEfPBzhYUakJRYulhGqdGI/Hkq4w7FvyiwqHK+hd28P09bOF58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N14769OK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N14769OK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A2BC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728722753;
	bh=V/hbVYcD8RhOHa7R5xVk+zV4AKlbysVT8c/fHnrxpx8=;
	h=To:Subject:From:Date:From;
	b=N14769OKsvH2/2duNz9ffnWOJLq8VSqTyr41gztDojX58cbLXzJUTPp4SJriZaBoG
	 FHsM4xfF9yRI+8Y08EmHMe8uTNwDo7p4lrJ5Zt4pYx0+MVAKK/iKIuSIy1obi1O76v
	 tvRw9eAtuT6MYZyGzOhoaEPtKJO8+vH6D0C/DKy2OglTHNlawc+4hJrPSPZGR4nIJG
	 h4uHGjRJsgeONZNIhsp/Qpl+4YMjly8FHvW2pud1eu0rPmyQHl57hLnL69MxU7ahv2
	 /OdBfnxFAbGMSUL35NYD63NoIzHgB79YDLST6QWvP4Ja0rOsD6EOTqbAQQkjSNuFBj
	 qYKvNrPIB+EKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92107D1A452
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172872275358.31047.553032168663049055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9abdd341457085f20418325cb3f6eb0079445b1f0c1ec5aeb17a03aa590e94c
Date: Sat, 12 Oct 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728722753
