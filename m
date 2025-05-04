Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3C04A29
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746378594; cv=none; b=SfjGfuJhEeXfLZxPyIwVrAQOkQ9YjzoRshImoCimqm3p4QWiACPrU15AvrUa/M94Qtxj7G/PplxT8C/vYgFyqg9+YWex0/gcadEblAqWhOAsg/kwSN/fa1BQteUkle6s3C3aKeHspTvTqbLwFmymq7BvlFJd5AJ6bh1Czf3iaOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746378594; c=relaxed/simple;
	bh=3Dt658jt+ouvQuaNK+WNf9N38EEUN0PTt5DG5qO+SCs=;
	h=To:Subject:From:Message-Id:Date; b=tknYaoMxDsbaVNXLHeHg8JC3cBdGPRUjNQyzVN4vgkbcEba7wIe+xyadM3IbRycYs2EpJkEYgI6OfY0972p5Xqmibk3SW2yLqrOIOK0QO394yO9PW66bj3o6sG0226hhBuvE4KY+di8FFmT7qRJ7qWu/qDDNdECo6Z2IMUUevmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUt9Ui9f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUt9Ui9f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9BDDC4CEF2
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746378593;
	bh=3Dt658jt+ouvQuaNK+WNf9N38EEUN0PTt5DG5qO+SCs=;
	h=To:Subject:From:Date:From;
	b=DUt9Ui9fzLqEygmTOZtiDlMIDk4mvPXJgmvjLZWYV63e4I/CEhOz29Ae8SuDURGlL
	 xq/89PM2sojK0LCIpwN28tMKAF/0rXUwNVGGXCQ0Q7K3z03PtmeH3w7qLJQrmhfKlr
	 OrxKvIOa1E20avKPZi11JOYOSnVqMobl+9mLkVXgipkHdDWPPCsO4bPfkJkzAvgJ8P
	 6Iwvw3B48L37bAOhkNTh9RBbSW0jk7y3UnEhlkSGlvAIOMVmCqWT11fYgNnH1ZbRFr
	 GvVUMQbrXFatlVqeBhSbM8vvAxqyITvwFSAPT4lMO0t1o8CMLRjSv11xdYiAIKyWZX
	 MvbirJWduHTqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99198C3ABAC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174637859361.28246.6685918673764795383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36a1416dae6d02ade58bd70c73938a3040c144a10ba9701c6304d86169663420
Date: Sun, 04 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746378593
