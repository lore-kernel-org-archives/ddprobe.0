Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A15224B12
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762738194; cv=none; b=PmMvKvl2xgsPoOmo1szpVM/DeiyHJPXB4qboikJ6uIrx2kqJmUg8w2UfCNWuZWp5xVeBL2s3G4DwnaIu+6UWQlAaxYsAgdi1fsbfvdk6UocTcUQJhQbBexyEVRq0LW9YvfP50XyQVuxh99pWl11OMVd7fJJe2wqUELF6FW6rJdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762738194; c=relaxed/simple;
	bh=3LeoI8rGNaRFZA/24UOXB6OJdBzZ+VQ7QJCVkM6QA60=;
	h=To:Subject:From:Message-Id:Date; b=BmwFutW9KJqaKReqbxvWeozCmDQo31Uxtij++WKNNFyt3O4t7qY66UqjUyUoYS/v+0oa9wJ3y2lnVZcfmbu9HLm+yvX/ZXFRDDkN4SGIYBmO9zhwO3duSqsEQEPS85dVqAijr1Jizzq1rcszsLst9w7ZzOrHUsxpAwvYmJu28Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ywq09owt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ywq09owt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE19C4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762738193;
	bh=3LeoI8rGNaRFZA/24UOXB6OJdBzZ+VQ7QJCVkM6QA60=;
	h=To:Subject:From:Date:From;
	b=Ywq09owtoGRkt9fCNC5I/FomgzchEH76RRiJZRqTKuBOjjS0iu5OnQUmksCIXr3cz
	 LhxzfEC/aaXDvBXO88HApPCAMFCKl48WqSi9qjxbhfH11f7fWz9L8jPQSa5XVfMdc6
	 FRD+BPV120woUWoIwW6QDshQASdMzrX9b/j0mTKdl+51ZqmXYIKUbVQ3BD5dTCyBQw
	 1bYmKf75C/clKKYQEs854oOMp+bPQl+aoZVmX76optEJ0qBMFVRrPj70vfYNgvUsdk
	 QtTTv5c9Wj0pFo5ek6oEvhoMGxvpeSKvAUFYUVBIKwWfFvufk8fzeDMHLMLtTvFTgM
	 vkEErBh+wFUkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905A3CCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176273819358.7558.7175758125739964541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9000fb7554b3c1e0db556b1cfb42eeb18c63832e657b6eb3faf5b510b3696b16
Date: Mon, 10 Nov 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762738193
