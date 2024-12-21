Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406477DA6A
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734795354; cv=none; b=hv6yMvxU69h+QzInXbn9cuSjIoq23YU+5LKYym+CFYWRW2BjuNGkyLq2ixIPdvQC2HepK+B++IenA6paadkxe+dMkTJYwgKSj4sEYrkDyEWUVmGMCth7U6wKiy315X/0ekelu74L2mjYe/rwEtCSrTE9Ih0hxVOu2uqBEq6BmbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734795354; c=relaxed/simple;
	bh=eIhw0fC+F89b11ZYWIYlig7tHzJKsSIFlZqwLHj4qg0=;
	h=To:Subject:From:Message-Id:Date; b=bEQv+ab1Yy1edJcvpIGMujFrl4tmEWWAOePJVn+I32ihL1ymX1csWQukIERWm1HhvK1onXD26ICmC3ioVCUp5gkyFJo8E5AzLZcNIppg2NhfAoLplW+99ODdSag3I4nEeoDj3i7vpYUKiowmPUIBiSOvY4nhvQ5LjV/vfrBHKAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riL0aiS0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riL0aiS0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EE9C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734795353;
	bh=eIhw0fC+F89b11ZYWIYlig7tHzJKsSIFlZqwLHj4qg0=;
	h=To:Subject:From:Date:From;
	b=riL0aiS0ZbPtRfqHi/GF/aAc50W3ykuNdcvX+sq0BM0OVP0CEkHXHrt4hVyfyQ0j4
	 ECyYlLn/qfdEWrk5byR159yQ1BELiS2i0BRqh4HIlsY78jmT+Xd6+KFoL+B6wjgSTU
	 S6yX3Bsi3+zfSF7zsDcWceDLz1X3sHiDDNyP2wzRNvXkJWecl7duy1iNV+YfpcuvId
	 W9SK1XxuuNakA7VHaa/4v8h8+g4lw9TxEM0W4kY1vMZ4ODtkqtIg35m/m1tWbvrGau
	 aJ/X1GOzw3CTIKBezM2l/90adQE4wqt7qd796i8UPWNNSJDP2Ddwgf8f1IJs3a9Hz1
	 6GErdm4fY68+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985DCE7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173479535358.20310.12492373460970788269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a73f5e8bdd27d71babed3a017ef211e48959ad852c0051fc78e251a93493c8a
Date: Sat, 21 Dec 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734795353
