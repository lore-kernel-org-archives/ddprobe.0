Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148B52DC776
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757777394; cv=none; b=ObEDvfW/FCbJ8mmjoOQ8al+bjEd1tdSSafTu40E5Kcl0CpjR2Pqgc/kzSzHCRqTyGOWvjBCllwvexnZzAC+nGP9Z0o63FPKARwW1uF1su5sRHNRlrQciUmapyb1VM0JmHH75iMNwfl2GH+oGVdnyHERQ4GKM3iuuRls0jXcejtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757777394; c=relaxed/simple;
	bh=LI+PYRj200n5dbDNQ5kS9gKFiZslS1egmzFvc9Kexs4=;
	h=To:Subject:From:Message-Id:Date; b=XNKEmqjNU2BQHud4I2P+2tT7U3qysNGqrT5TZT+3NARaaYBkLu+GE7iNkxlC4e6bi40in2+U2M/svWYrY+yipJjySqS19VLLHx95JFRv6xRUy768JotaJQdUwPlKo6k3BYY8fIjEuMq+FpJpojGi4Tx7TDqCwItSFMBj0NGM6lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkM/DKjo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkM/DKjo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A222AC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757777393;
	bh=LI+PYRj200n5dbDNQ5kS9gKFiZslS1egmzFvc9Kexs4=;
	h=To:Subject:From:Date:From;
	b=VkM/DKjoI0DyNw402g7KLSPWIZthsC6le4w8GlOHJdxRWHhTS/OqpFEJbcY11VyAR
	 WgeH5PDJMUuQmsB5SSQLHyL443nFj7b9x8u4wOEmj47XIKcs5qGMfcq0lTZXi4/caC
	 5iTvhWW7prdzlFigPPsEMayQabgedpOqqjBEN/a/9yxIVD6vQA/HGYMuqASN5nqjVS
	 oCEtGMPitAlL8xPJzAPq1BTbdib0yKzaXC3HbuLgVO9oyPor16zk2OpKy73eQojZEL
	 GK0+Q6CCuDXp8oTIzhpgpD32gG6NmSla7uPoKm+f8DfInokqpCLNJukb2T/JeGu+SA
	 AIxoK7S0hkYQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA7CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175777739358.17729.595882904090525435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa36d2edf64ad8096e7d8df2e4dbcb662c807646a8b823c1f194b2ac7901a00c
Date: Sat, 13 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757777393
