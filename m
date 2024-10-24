Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1284615B96E
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729745754; cv=none; b=oc87GCekfE7MCClIqschv6Oun0k+tAABDPG6kngMYqIFsLwSGr80Hgfk1IBnf9q3s+NK+5isI0WdGNvHgxYW5rqnOYe8wXqB2XeyitBAw2TIjlbrJ/SlMmWSa9ku4JTlSqm3BSQe2s5YR+6wYzxyHVQI7RDJuK4yqeZveXy2Ahw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729745754; c=relaxed/simple;
	bh=w0TOl7s4Wr9DdMb5YLhYoe7h8gbYYsaH+taRFx4NB6o=;
	h=To:Subject:From:Message-Id:Date; b=HLav3zROZlNoqf5TkKwZOMGAbjY4+69MLXOCwdAUKdtEks5s4dWRFs6nf1jbuS7nA/RIXjx5visF5lDH2xInWtIJWrFoMd2THD8L1VVePfHMptN6q9c2B3f4q15RtdWWWgfumClLGKvrysDdhYnVvrz6vDfxKziIDoHeXH8Kak8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oPQpEmGh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPQpEmGh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEE3C4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729745753;
	bh=w0TOl7s4Wr9DdMb5YLhYoe7h8gbYYsaH+taRFx4NB6o=;
	h=To:Subject:From:Date:From;
	b=oPQpEmGhsaFpUgNnMamK6KcuDhJmv0IMMoaBWUat41ahsOVbhcdZX47lpd0xpk/zp
	 ZqvgdQw0+nRcBbA/AYbbjcXeMFHAKMfKVaAMoaAdg0toXzMdgs7HCY3HqIOcp8mFLc
	 y7x9sv3OYEwNB8ibo/pRW2xWWGWQCAFEo53HXLJ3wKvlje+yaDvM4ftqYtGwecUwWI
	 IaaqAbailNx+d50MDIbwL9NGTPZe/L3LjTA297nr+guQaU82ctvLGJe+H9xP5HRQuM
	 bbszgLXLGmyLseo1NAt/ttG16HihOrFuiQM7a/sNWqmQux56GfmlPEzyZ7HXuX5dZU
	 YhDoBLgDMayDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9288FD0BB5B
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172974575359.16499.13472227068922763367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c1039dd816b706ca2be9abae27c2ea8a2c3957ce91f0aa537efd98faeae7616
Date: Thu, 24 Oct 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729745753
