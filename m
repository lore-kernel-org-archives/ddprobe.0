Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56CA4535B7
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 01:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726192557; cv=none; b=UQA3YOQ8TtWZaw0LzCU8kq3QEb74LKDgZccezOYa8pqKxMPFc6Bo5YrxhvNglYzypqS4TIl5nya/HeDTG+Cy+QzGR0UhUtbcipH5Fp6w2V7uFtRFrBpwogt3uIOi+AFXh21WjE6E5utURK43k7zMsiUXb1r+vhgz4JfUjzxCIWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726192557; c=relaxed/simple;
	bh=+fzbhwtq8NW7DXk6ZeyNt6Uf3iPThnGtP/pZ0Be+85c=;
	h=To:Subject:From:Message-Id:Date; b=ePdLA0sYH71D7IhGbFr6WU4y/sj1ZfxdiLCUEYrdsQkRPwtek0VF0pkhH2eUEh1Mp1QN2qmXiHwts5Jh6pmaH60VI/uX0Mzu877c7qDp/Pzejl/UgCNaasEacf2ekBGKAXuh6xQHftSBNtNd1QKCoMZnocb/tcCxFZ+lZGnoy14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYwV94c/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYwV94c/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71FFC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726192553;
	bh=+fzbhwtq8NW7DXk6ZeyNt6Uf3iPThnGtP/pZ0Be+85c=;
	h=To:Subject:From:Date:From;
	b=CYwV94c/x+Gco74QyZPzfHXCI2FyU3E4SqiFAPBSv+V0/s6JwjGF/TWzEs9BtOvy9
	 aCloANYcfpnW7sMruyu9ZprtvFtUNo8clygdTm3N3t4Ng7nx3ENsSGFy2vEIUzdes8
	 KN8LWHVTjgWqkm11VzwZSyIB6qI8wzVrR1Plj7kmUM9qIUi+2sILFjnDSB9lL0qIkh
	 1iWxrjaORSq9VB6OfJCyFefMOmRbwx8olIGbzG3B5IqovZUq3DwwGzLD3PuFjcZRYm
	 P6rPKVqR34KLVuYnfsY2oYmODSdMwKmuqy70jS3KmVxtFM9zmzrC+lqTVju13Bh75E
	 0OwNMdmnCiVhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93977EEE279
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172619255359.2452.18138609922597993935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2014b0c20274e8643e38301ef5627f60a323f562704f659d0a0802c485ef2f04
Date: Fri, 13 Sep 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726192553
