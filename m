Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FDDE286D57
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749671394; cv=none; b=TP99jg5X5mTHrqBOabV97wLaNQGd4grtgfI9J4M/fCOGZl97mBXV41vTfHvUsnbNHEpaDrwqLflTIS5xz/svvMKmK8gZtNs+w2szJ2eMj0AFAkvWzY2EbKk+qcudCVn51npZg4ZEiq2NurQ9cdaVemXOd4PuMRz8DoPF4nK9XR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749671394; c=relaxed/simple;
	bh=sO0ocjiaLYSaE3pr+OjFqmTPMqE4z4vcQbHkwuA+YOA=;
	h=To:Subject:From:Message-Id:Date; b=remHD03dzjTNGCsYTrRyVAmlVHZ9RrHH8bTio458sTkkvZfTHjtdRJuDBEqIszPxj/dGj1DrwvO3xMoEZY1RNWJu6cDjZYstggOY1nkeKf7IK5SUbaxnw5DDjm+fGM9m7Ag6IJBx8SFAxKu8nD8D9AAigjys+D4FewkUz7qil+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTNtjhlp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTNtjhlp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48ADC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749671393;
	bh=sO0ocjiaLYSaE3pr+OjFqmTPMqE4z4vcQbHkwuA+YOA=;
	h=To:Subject:From:Date:From;
	b=qTNtjhlpSNDdIraH8zo3+vZ61fUzFuscUt5zpC0w1F7Ga/5jppYsTj1uiNgMKmZCh
	 Th11c9n7G7McqTVUt866vpu8cRveKzlX4dMveWqfcGLSEf5b+RJWLM3+uQ9Re7dnHS
	 J9g7RVUscA2ynQ3j+k+P57JakBFX+Wcb3qW4+HQh41UM8Nw/WOcd2+d94Fk1oAxe5k
	 2RDLXYC1uV6J70OsmwcLoXu7pk/eJW96eGDM2xsnwP2kKN047mw2PgxsGVumkhuoK0
	 BthDG/ua6W8QVBEUv+eggusYlp/8rijkrWP6V6bftoScy+yuvJmoNmdqB8HUnEW4Ch
	 WD+m+O/wn3PaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9194AC71134
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174967139358.22006.15783005927766940983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c9d9520475e444bd064fa9f82481086b63f3d2d10180856bc4eb0b7ef8ae8d4
Date: Wed, 11 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749671393
