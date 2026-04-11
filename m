Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FCE3B9D96
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775950054; cv=none; b=bKeT75Ce+CKlYcNojqEBr5eXcf5m6fZKLX1NNVColZ5mbM2hzzzREJt51O2U8AW6+7zcWUaS9enxurN8BLTnQpqh3TNVxC6rKFTLY8efL4xSWowZJCHgsWCu5tq4rcwy5/2k5WN5fl+X9zFl8ELv06UJx+wMWiufLsZJ0v5wqk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775950054; c=relaxed/simple;
	bh=b+KjxXeE18R6VDW++Q6zC2pv04pWaqI3Tlgw1hKp0XA=;
	h=To:Subject:From:Message-Id:Date; b=t6FbNmgphCvj7GT5ER3mxmBZ90xbgpWrG00BulH0/op3IXxLpF414XwLp9cFEBtsoICh5SFkwqQG05aEK2AmqlRnWUv3EgdA528yl6HQtx3LOANWFtiiCY2Z7BFWJMtgt6Afa8EZKiY+2QWMpxFA0zja5fBlyYl7bo17c7CDK8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUgxj5aC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUgxj5aC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22ABC116C6
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775950053;
	bh=b+KjxXeE18R6VDW++Q6zC2pv04pWaqI3Tlgw1hKp0XA=;
	h=To:Subject:From:Date:From;
	b=JUgxj5aCjqKTqG63dICo2ko53dNIrblRgt1Ryj3vJCiTW8iXmcvFpvtKl3HkneVBK
	 V62fWhXGXf6xhVNGaaoPGoxDOdvPHt6jbDoLgcgQ5OAW2emFVK039yhVF3isvQwisL
	 Qlf2S/oJhS8OYeiuNaHlDuwIPYBjI6xsBDt1G1z+1BA3OpVj1EpRYjmCBZiy5GId/j
	 2t2oAWhf+YdtSdPJiPYMFPw3a9uFJ94AqNtVegIIaWcA8qBPU9JCuo8AzJoEYmpkC+
	 1VsSqH88nC5LmuF/lu/2WvoeZnz7qB48b4Jj508de7BKm9qCRdM/8FZwV/UNJcTRkk
	 yK5XhV4WlOh3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD833F3ED67
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177595005369.2725.13388808349230252510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea6cac0188d11b3a8fa0e6e4dd31afcf21c0e26408d0a0716fc4afc682d80dc
Date: Sat, 11 Apr 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775950053
