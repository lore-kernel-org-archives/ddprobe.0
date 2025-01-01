Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3266818AFC
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735768554; cv=none; b=EWAqBUDQ+l2woKmIoDWSmvUNao3t1sMYi3LAG/qV11ZSBvQnvLWJOVCv41hpjri1J1jLtsleqK7iWKNu2x46cUE2PInfvs7n47QeoqQ3rT6uB0IsPWuVRdJ1hZ/iaJcRvO0lz2CWUGqTTDtYm5+88SnHfIG2rLHmfA9TKM3PaZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735768554; c=relaxed/simple;
	bh=IAPNIGakdmLKbBR9IxeXjdJjl6ZJxIlpuF7vkQPgUv8=;
	h=To:Subject:From:Message-Id:Date; b=hHEMmObRo8vekU2tKEkxKEmcqzlDTRcL4yl0mohS3PjxaQFoO4JKH2i9Ws5FBZcJYd1ExX7M5YLyZAObmMNxizwFXzuGt1IYxPGyUfAsEA2TXQnUqjdJt4PhUK2ugsoolNplWnejvTVePXjey6gQy56aRzUrnI1mxb9nCHwvKJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnArtk2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnArtk2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFBBC4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735768553;
	bh=IAPNIGakdmLKbBR9IxeXjdJjl6ZJxIlpuF7vkQPgUv8=;
	h=To:Subject:From:Date:From;
	b=XnArtk2IjF70x10tLXuam4qCJOU9ZIydgDyoKQTg5zuMJ8N9G3VvIBaZ+cf7HVs/3
	 zhceGmSXPCnAB5UMghHJqHbfC1P4qLT8q65Afe7JbchAmYjMlIG7H5ET+bu3c0K6SA
	 +/rV76QbAupYoQRwOV6vT3aVp6pVw56GdL+OyKf4RICzAsJ3KlADmaCAIGUUqqJHPC
	 yZ8PxCAveJeQjRCVmbjMtA4vlDKT571W+KEkiKR1LgBNegGuGiVE1/fHgankD90gXz
	 MuRvj5ZnqbQKj/mrXzAchlUAR+QuVS4var8uAUyAO3vSgBsx8eNSq/Apd7aMIjUZwg
	 KLkMGNC6fhpyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964EBE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173576855358.5899.11373401998773184621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bfebbddfbce1eef78934be95e5858b0f7241e4ff5b509c87ba7321cf5455c74
Date: Wed, 01 Jan 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735768553
