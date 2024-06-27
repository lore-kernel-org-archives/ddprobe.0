Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C5419D07D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 20:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719519263; cv=none; b=q8WFHn9Jmz564q3cX7kOXni6XpLgN/Hy1XZgRdYUnZhv54bfuw82PDs9diG2fa78oKx1t9cGCrGEL8ozrovH7fNQb5B16arWZkrkIW8B78Q+xqXF1O+sXB2gahUD4crktgAy6lXH0mSD5lWvhEd2PD3D7Dmk0YruLd8RbMSNqUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719519263; c=relaxed/simple;
	bh=Gaq9WlLcEOFTo+bcnUpPWOwA2TL77eURACNUJIfmDXc=;
	h=To:Subject:From:Message-Id:Date; b=cbcsZiap7y3pW6whWFUiZUHze8ENEBc4Kt7LpcqnTzYJppvhUV/nQoL432Cz2zgx9c3kcKyDAgYM8dqyhkCvXbvZplJBvQUfS9XDzhkN4GG5fsTkXE6/i9xU340Tg2z2MuTTkKqCQahMv6FCDFrx8qS4z0kfkLT3Wrq6l48cikM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SbkTBzAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SbkTBzAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27BDC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 20:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719519262;
	bh=Gaq9WlLcEOFTo+bcnUpPWOwA2TL77eURACNUJIfmDXc=;
	h=To:Subject:From:Date:From;
	b=SbkTBzAeogL7UV0imUKYAoHcj7VGeNgLH0bEph+RaVV3iAuHpGRy24sPi5j26Eo9n
	 xys8K/vRDR/ON65SHmQjeFrXWanmlWJxwqXmU6utRsD9HXOhO4AuVtZQ6eJ/8CwLN6
	 gixa7wjOC+Pe/vOqWdxaK8gF3ClTHlTJxTawhDEPSIKnFtq7rigHFt8v4R2+S/QRad
	 5rqFILvJkjPI617M7bJicqHtJo0KVztMYc2cc9ktta/O5iy1vss4FaV9g7DIJzNjul
	 HisYQjIqTeZRLbmScRmNxv1NYMGYeReP7vbtjoQ11FXOkm+j26tMbUn0nCuxjq3ML/
	 63XmfxVj0MyzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC3FCC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 20:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171951926276.10163.1740606927410779747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc87de086666f0e8c1d349cb7fa459824b69aaa5dd25d191d909dde51946e8a0
Date: Thu, 27 Jun 2024 20:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719519262
