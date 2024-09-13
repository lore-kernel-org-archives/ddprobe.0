Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C503CF58
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726203954; cv=none; b=It6lYlx99W+6a0+i9Swfgy1hMKIl313uDuZQnFp6OCtjhziOCK0DZ+e+SF07yEB0a+xAcFLS01iOL3rkV9W42FUms4t8MWiGj8lID/SwR6782Exos4AlrEEYlqEGz6xZP3OBX/TC3+fGM2tk998EKub6n1RlGarpgXNTzXPbxFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726203954; c=relaxed/simple;
	bh=q+59DIwUFmmLyNFs0VnBaFFZQXNhVtUQwS2ObxAupoY=;
	h=To:Subject:From:Message-Id:Date; b=rdr+sSqw44dBTwTOuWNzbYsqgsVTDDEn/XaFAIqMHv0i1PQrNfaffLRy4djKGe+vH1FQlZuuVvwp3qhsw2GmvInVfiR8gB9IhtnA82NTkecJBaNEqR1+e4xvdZc8HFvp+T+010N71NZVcxnxJ8QUj7j2tNuFZDqYDRATOj+nBgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRUYLkQR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRUYLkQR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39E9C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726203953;
	bh=q+59DIwUFmmLyNFs0VnBaFFZQXNhVtUQwS2ObxAupoY=;
	h=To:Subject:From:Date:From;
	b=oRUYLkQRlpGSRKYoTlJjF1R+HXfhH9JMmTEx7jwt2ri/oqHC5MfvpKrWWYpE4mnem
	 JupmLGtDQMZQlNrIUyoS8US1yxyftnYI1ZP4KKKv4bP1ClfKITiJns9mTcIb7UUe8G
	 kc/tdI5lx4DdPzeBPw2KGXSrscC0g07ltxvdc5LiEz07PVmzkb4lMGHucR2ulsi2E0
	 2OPZuH9lj4AFEMngNDvxV3AqiO/7YwdMLKkpf5H7PPkFfpK9LaioAys4hlpn05rUdJ
	 uDuA2lghKqrzNvMs7LDTy/VdWYaHv3HPABczZ1hb6JZMoHZ8NwXs5q/mfR+2rQre/m
	 LXe3l3a0yho/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A034FEEEC13
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172620395359.24424.1175800422272588614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d20b589a14708133a1401a33b9f07b4a64912341424d8543a976882fdad4c345
Date: Fri, 13 Sep 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726203953
