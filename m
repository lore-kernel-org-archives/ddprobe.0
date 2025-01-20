Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E45186E58
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737396354; cv=none; b=ggOrPJBclCZ2W66m0MFCwBAbRXLTy31zstoHnZ0FXKNnoQHF89FZ4jcvVO75KrZCY5NjKTAVYq0d0TYdezEsjmlHs0SCWuYqOGz6OE1KMIhQC3VErzZ2/JhtdS4PLN1nsgowSbVhIp8xDAfCxR6apqMXsRSGiynwM39MbaHpkdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737396354; c=relaxed/simple;
	bh=eAD9w88C/NdnLf60nnrPDqyTMqoUUcAGJxiyc6kGLuE=;
	h=To:Subject:From:Message-Id:Date; b=DBob907qCWf0d1QRiSf7PSampdOZCj9Rw6H4N7pE/wakZBSyWyz103D4/ITUpq0n/sThBeGoltlnrhKBE18jFXU4yf4juXp9JpXfDrFcQqZlauBmsjS0dy9HNV1WjDYaeewwyEIubAKqHF3fvhmeB9P0rVz9wwS834zo/0BgRuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5eEv5MV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5eEv5MV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C3BC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737396353;
	bh=eAD9w88C/NdnLf60nnrPDqyTMqoUUcAGJxiyc6kGLuE=;
	h=To:Subject:From:Date:From;
	b=h5eEv5MVN+B+LntvU/pxAc4er8/3AplTb7cy7YXIHgplidIKr+uCUFuddGSVCSF+a
	 oGzvKjf7P80EqgaH+/hnbYe0YhFEygvugE7aFfPQe4D0ks8FYhunB6Hg1XPyk17hhg
	 HDaQzgCXwBSa3wv3GCvGUG8sdITlxD+QyDBp3J5PuDF7g2D51tuZrqwXhrAIcyGSbo
	 Elyqve/Bnn7YcZtiAafApnBRTEEUWYAGH/AvOSVQM8qKzVFjc9gRUEdSJ6jVA6XAkE
	 QGrvwMQlbtqEcFvTFLoSx4SGjcCENPQ/x3n23XEsloDaoUU9blN2c/P7OjdYIvCzuu
	 WNDOawfDahMvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A981CC02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173739635367.22044.1713050171326428710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ed3b9711b6f6d97e01f7465d56d6167c4080979fabc092c61900538e81d59fc
Date: Mon, 20 Jan 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737396353
