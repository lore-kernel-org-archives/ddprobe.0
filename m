Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5752D978C
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 13:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763299254; cv=none; b=svnHKHmNzRaqq/WQSkeKISH5/k/drFCF1f2AIOMmZzL7fKmGNTrZhsLRQd9BPEJj0xazzDKvoNgsfbMDPjB9dAxGI0p5sDyp9qYT4YMIG6B1g8Rw7Buzgy2ycgVPdsQHjSmkMqPcsSgPT3PIbp3GiXYhUcoGM4cTOrSKkLxB9hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763299254; c=relaxed/simple;
	bh=zF0GvMwRYusShbtdmiTNjjjwrkIx5Cs6dhaJCRu28J8=;
	h=To:Subject:From:Message-Id:Date; b=UNSs/gGWy3Tyesodf+y8FcGc4IkitBhom2FfmJ2/Jeq7W63OVNzXhj227onFqFIUpAzKyQRfv150OfRIEpO4PT7V4Pbm2qNzNpxvkES4YsU+tDAWV2j3nIWclyNw1CbTIftFH8eU1DNOtw9rSg3dHVCoXgMvROXF9ufRXHqWQVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OgB9jw/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OgB9jw/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0637C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763299253;
	bh=zF0GvMwRYusShbtdmiTNjjjwrkIx5Cs6dhaJCRu28J8=;
	h=To:Subject:From:Date:From;
	b=OgB9jw/hgDgD9mnjJ330K8Hg9NmycuLZE/zOGhBQUsuAhs33cGAtpKeFfH+KMnNmQ
	 JuAObu703ePIphwrymeQFokHLnB4gWZUD56V6Cex842JZZ2ybLr9MY0IeM84fuP5UB
	 OA7rj8zE5JS2i8LxALObI3anLUu12L2a9z952iq9bYs21rs97VyTeHP28UpdNO/pMI
	 YwWGhklrcgIOwkphs66BWaqadoLQnc/kIziLTZWiCiSOwPveTeEmYa4eTtsJChGx0Q
	 nTbMNIeuWgBngumV8mu+myWUcBOj5zl3h7/AR4B9drlATXzYGps5BkCJYV3d7Ga0Hv
	 MlHeg3huirayw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919E2CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176329925358.9171.8709359505630645862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 815f30b196422bfc2d092e4fbce942ef3fb188ec5ed18a5e2dc7cb01b481729f
Date: Sun, 16 Nov 2025 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763299253
