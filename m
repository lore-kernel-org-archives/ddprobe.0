Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480084776A
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 12:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719231743; cv=none; b=k7WRY4kozf/j40Gh81qgqnEGQIeJPD1iHylcRdPJ1uUO5K6lJDCHsifSeD8X3D5AY61TodOJlokGqKErxYIxojFe9sr8Xc166ZqAGP12TX+Rs5vrwHg++njaUgPXfw8NHPKbZSHkpo8T/9kC9C5x7VDLJehzKPopvW2HzllrTa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719231743; c=relaxed/simple;
	bh=VzNo7SPci09NroUDbOva8Z1XhNfZoQayiGCnlXtPjBM=;
	h=To:Subject:From:Message-Id:Date; b=SNxOtwycNkjtwCTg+ObU7NzCqTPwckIkrJNIcVLzAxxgm4uq5fL6CyMo2ti5T5s/jx/PHSyMzI2ojzlnm+qeuomtbs/kzaknF+6aRKx7L6QdsrCgly7NyXTEvgYKH5pVxLYQ7EWfTpjSzTJzRGVF5A6nAOI+J7rQpmw/zrTQU6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=by6n7nx0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="by6n7nx0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A48C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 12:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719231742;
	bh=VzNo7SPci09NroUDbOva8Z1XhNfZoQayiGCnlXtPjBM=;
	h=To:Subject:From:Date:From;
	b=by6n7nx0p0Dj42AiOZEEpZDIP9WiBFoN95+iy+P1hEK21z1aY0iNMBTJq2JljRokJ
	 VyjuqmWxdS0D5QJYjYft7gG6nAyqH57PLiKfrHnJyAL/fCbnfWzw6JSClELmkQaRuN
	 7y9ansKmbkA2C6tDXfe9Gh9fOG7t+KbwebdCv738kB97IGlcyBgwksWKZ1cZf4aJFK
	 RoNpXelqd+Xm5E3VNyegL9FDIFbK+CZQua04poBJJJvdndiDE8MeHtwjL6rrcju+hX
	 4JJcU84tGdPsdD9jlP/1H15wPcwjUqBB86JV31zwtWHKN4/P7xRU3VKY8Jwt1uaipR
	 hnmRAZqYJnhFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0369C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 12:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171923174277.18803.7324335631964179443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ff98296662f200a148a5747414d51d5940149e67dc11b5375a91399649645e
Date: Mon, 24 Jun 2024 12:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719231742
