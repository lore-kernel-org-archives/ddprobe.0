Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFDBD51C
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722391554; cv=none; b=opAWzH2Oy45Ick5BCiZRMTAgIX3wu6xJIiNhdnyu0dVaNcvY2dZMGPdtudY12Oqqy0ChJc6pP6CYpJKMNpVJOe9e50CPHtnlHjkuo1pIrkjJmV5vbKudWclzpRMLm/AsOB1UECd84GrYlvA+VhqRoskRwhKhs27pYAhPG8NMZho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722391554; c=relaxed/simple;
	bh=bmEmefa0/7UrjnYJUDvFiq3rjzjhqNJXC+JlUKLRQjA=;
	h=To:Subject:From:Message-Id:Date; b=vDhjN+eZ89P1E5HBB3bN3FBBqzq82m0qgtqoJGCQ779UpjZ03E5H63AIv4kAL3KNcaC8JSYYgAjSUCa/fQMCk7+wgF9zuPevTxZ4B6G1psXYEOcSUBFcNeFQibep2hC9sd4YgKhwOAUnTcJ1O1rKL2DKbAfVPpPLGf1C/rhEfvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/RW16lx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/RW16lx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C28C32782
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722391553;
	bh=bmEmefa0/7UrjnYJUDvFiq3rjzjhqNJXC+JlUKLRQjA=;
	h=To:Subject:From:Date:From;
	b=Z/RW16lx5847/AjfNiGfJaNi334jmnKVfe2s+b+JEJbBjZQOde4T6a0wSA1WhMxkn
	 WtqnxndPK7jqiBFRR3F+I93BrtHR3PMP5UDlkikmMxPF27NOzIaOPpHwg9ZjHRjh8P
	 Pyus+p9Z5hKNt5xNWzO0b8WtkkkaqV4gYWsAupGywxU4gFI8BK2UspJ7/mq9WcMkF0
	 C/0c68mLgZbEPKXvWsN1cgCHaqy+TnW6Z44nMZI+xGardtt7Pi39QzeqKevvqfs9/x
	 6tDzmT56emoI3RhfUcUAttlVkak1RpoAYu52wa8NoKbynCEoqqdec1l8USjziyBW+i
	 3DGDoZqUedeaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943E5C3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172239155359.21107.16081882013981657530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad17b5aa447227e5deabe8f7dad504c0508f1ae7160687b12b9c95dfb76b01d6
Date: Wed, 31 Jul 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722391553
