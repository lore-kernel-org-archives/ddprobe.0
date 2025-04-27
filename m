Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D52D1EFF88
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745744995; cv=none; b=NqJkbquR7ucosL3npE2eJOM5VK7FhEPtBRf2n4e2IjMIxY4ZrHbA8wlkCsMmE+Af2A4ueZJxHGQLhSX0Df4uCTaPaULZSBISkxE8LDUOHobMIBL7tbTp02LTEvFRXR7GpBrEzhVDYf1egJ1nCVQd+XIAOMlreYCGQUd/XQM4+fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745744995; c=relaxed/simple;
	bh=roq2IpIuBYhZP9m4Dd5xcvDaZ6nApJKkXyGuMRUIUPQ=;
	h=To:Subject:From:Message-Id:Date; b=N/VXM5xqzrOoInrbEI2z5SSHtW7Jtbh+GKZyDFuqE/BTjT0p2/re/WEtiBLKQ+hKaoKqJOwd/o9ad9nzdIeWpU8OSSAzKu2BZYTR3HufeaBSQwucc2d1eEIjmBmexzSUNqAn/K9O7JA/e94tcSCrdMYeovua1qczTsHNLToKgbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCaZbVYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCaZbVYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D124C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745744993;
	bh=roq2IpIuBYhZP9m4Dd5xcvDaZ6nApJKkXyGuMRUIUPQ=;
	h=To:Subject:From:Date:From;
	b=jCaZbVYx1XMUYakG6OrMcaCxw7sFZySNkJrWu7iSF9nXAaTLnfndcPlsVAD6ZqP1u
	 UNriKk9dquq+drUAaOor/sL+oPNFlMTaEYhq0TcqO2RHjExof0zcdWIumLipC/+GWg
	 az5WgpbXKuZUh6qUs/corcBk5tiU9VoVy1detLJR2KrI/wy7mYnyvkjGyonLu33H5+
	 xV9ewnnAvAcpEsFnybhT7YCE/VEEDOAWUeESvzQntzStHTEOxQ+mvgTXwx12cZmpuU
	 2U7F4xkKgu75hO03HsKCihCKKoxiijlv34QHRE5WV7KBne36xrPuIuVKrJ4tOr79/+
	 nklZP6CckvsZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED48C369D5
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174574499357.14101.11740818553937114350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd86c560191636c6f6a9aff34b5ea5dd05c5c040706dca3349abf52748b9c04e
Date: Sun, 27 Apr 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745744993
