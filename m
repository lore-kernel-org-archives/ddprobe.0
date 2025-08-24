Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63423139D1B
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756069794; cv=none; b=OVf8P1OBWAS6Vx7YtSzZ9yhV7HwPgvk9Nu4eTkYCVU+Klb2pIMKSpkqi//fDVygXh03s2nlSezlk0Qp+lvCyOTMOiYnGcX2l8/Yv9BDIUuMqUiROvtlzfDlfYjmud6EFsQQx20qRoxTKIpzkIt7X+/uUPVzQb0GKf7CXW1kp1ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756069794; c=relaxed/simple;
	bh=dQ4nSuW3W5VM4CWu1s0peFQABV2iVlBALQ+IBllcmCo=;
	h=To:Subject:From:Message-Id:Date; b=oPQYfXPPVaU+FSpmS3JZ933VXr45Dx8Z9Arnc5lnJ7hWmOW/WLrpPYIJfEzk7adXLTq5/SmuhTA2OIujYr+acJBVhba3MFNao+bsz4OYnn52GnzfTEwjo5jqIWmiNrzWyenpHD7eu/YMGgsnIKnUbECSeKnvNjnY2zlL5l/U5m8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pc834Em6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pc834Em6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A120CC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756069793;
	bh=dQ4nSuW3W5VM4CWu1s0peFQABV2iVlBALQ+IBllcmCo=;
	h=To:Subject:From:Date:From;
	b=Pc834Em6qdBC+1s2PscHPGmFXO9f+fB5jhz73Hdg59yeLmHq/VY+eyWJbTfk1Nh3I
	 qKNEMQ/O7vvQ9Vy6/wHQs7Om/8cR/rLmE50ROGJ1XnqkK5D8sgQeFt2r3Vf9AXquEI
	 3zMef/Rqa/a1k89a56j2TBqVWh3AL1fMNp7/c+KHZFX1+JNd9mN9UuS5wYrv8b9TGh
	 2foKej1cIahnHvm3pFlhf40erUlh9EV8VmMC5VdbczHqK82g5UrMhcPROcx+SGCaoP
	 stQbE7XzeHHe+h/tCBBRu53Ryewzkw0EfHXnwLNzkJKFAn3sTV/emuFxX7umKxTQYf
	 gl8ZQ41d4BfdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDADCA0FE1
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175606979357.18984.249092162566349787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d17406d11e3d66fa7f8421376d4750a726f5423a4fca8c9e0e7003a0a50912ca
Date: Sun, 24 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756069793
