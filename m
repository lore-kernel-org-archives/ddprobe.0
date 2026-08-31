Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6771F53359A
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788189034; cv=none; b=QiublUu3jV0ZHfIt0zORVfKLNsUVipOiz+Q7LhWSMIbipT8CqrGn5tbBMhuBhcb/SL0IRLUxo7SL8uzeqrao+pnpuPC46I22hkS2obzq0IZVZOgS16JKyfslKHDKe2IP/elLZLvDQRinewaNzbqZPByVn+iEGIxs19o1NNQD/2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788189034; c=relaxed/simple;
	bh=xO+X/M9ARH0pFy1nJuN58PcR+WDnARlOPs8Rx0IkbMs=;
	h=To:Subject:From:Message-Id:Date; b=Qjpw20BY/+5TOaxEC6wCpi+Mll5ChktK65fKn62JPHE+5ho6VNComh58ZPEpg5axnK5IKuB0khRVQWw11iAZsXfublW+QQbQjalAA2c0FxUVfl3WlSY5Km8t15IXqvNHMt+kkBUC1FIkRMGsaoUs5JC7iSO2GwTveR5LCjTXgvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6ATQ4s8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6ATQ4s8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE24C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788189033;
	bh=xO+X/M9ARH0pFy1nJuN58PcR+WDnARlOPs8Rx0IkbMs=;
	h=To:Subject:From:Date:From;
	b=q6ATQ4s8KF6su2CZ1hZFw/up5Cg9JMkLHhgF8dbjJ1lNQ+Gi6pQwqI5ceIXddFZ3C
	 GMBYBrR1SpOUhqw2KBMyjRk0u1QZuY8fk55lOdZEQ8x4bIHhATohLjaHi4x238Xa/K
	 Sox78IB93JBNRB8/I6MPYI5VrYGzUjzNZdRcl9e41SsZ4G47zwWVOv8DR8dZx//f/w
	 GVXCnDlm+S8XQPl9cROk29Cx7SiaOVNfMf0Nsef3jUg9GQFsbd7k5owgkKqU3H5D90
	 /yaNHi3kFsnyJwqLe/DGxKPNtgMlQkmd48vxx7OI51HBVMFAk21HJKcGC2+4NBZT2Y
	 7o24+R+3QgRjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB751C624A4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178818903369.25317.1540213586869144890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 019c5d685971cf0bf4fcb2abac733b14c1080f9443879607c0997eb16f145e74
Date: Mon, 31 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788189033
