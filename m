Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206C6382379
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 16:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783615114; cv=none; b=E+nbiXyvDOKqKbTH9a12HZNQe5u+uXDn2sIvUQNMQ3hqvML81CzXUqwrcH+RdWiNFwPyY/dz0VJHHLOs7mKTtwRGjNJucUbKWDYlzejifsMn/SIUc88eiwSy6W9r7xQKV0/wFUgPb+EhA/JzboC/JJ4zrKMrHYAvV8MRbPnHPXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783615114; c=relaxed/simple;
	bh=7dlmBrj/leAFNa3qoWnkw4AI5MPEgawD+cCi/IpzPXc=;
	h=To:Subject:From:Message-Id:Date; b=Rsxk318oQ3hAxVlhlfIGWvaIG8Wjlz/lf39mnvO0WWRCrVkHKjIwpCe0cjoDSnJwEAuMTKbI9d6q1P06llqj4Jx28dKHI5C1rUZhrR5BT6EA0V/eO0Vy+iPffStLoIkyWAoUspa0IzwZqKaGW9qN14/ldZTbgagowH6uBAZtFTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NqBMGsVc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NqBMGsVc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB002C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783615113;
	bh=7dlmBrj/leAFNa3qoWnkw4AI5MPEgawD+cCi/IpzPXc=;
	h=To:Subject:From:Date:From;
	b=NqBMGsVclqv/zStToBdbYrByjsialILFoMQbFnNLPlNmG0SyZ0DYnfDDWFEc9itOl
	 +ZNM2ESYun2x4RDABLvB9IOYld/H+rU03kVxJ/abpKJSfJvSftrK8mEen5hGRaFAtt
	 mB6s6G06FXuWxXlAKnCu3vDyGt3d7lheSdUN84qwqE5zZQ9Jr6ACZMPBVDudM6p2yI
	 5ko3bZgLaVu0ReFpg7oXamZPpcHkGKWZcOw2k6RCRPAHrMiJeWPcL2YMYKWr2NjIXp
	 e4Lav8Lxw1YGvFDsoR3nEx9WAXMhGpDQeWU1aPMGnvhnEUeC+p7AV60NGE9y4qLO4N
	 YHLRvbGzgxTPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96ADC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 16:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178361511368.14566.386705630794742945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41a595c8a8f5a7a2bdc6d88a2c80464b98a5f2cd637d55e6e7127ab70b6c8901
Date: Thu, 09 Jul 2026 16:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783615113
