Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AB13597E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750591794; cv=none; b=ZmveYeig3J5ZbMOus+DbeQ8/iWrfPEhwSLqpC3gXgTJlGT4ukEweMGjvr3rJiSwBcY8n4C6CDoRo1KFZYip7X0i5KMgJFSeDVfmriSeRU1tzNSUd/5PdBRreFqN5Ua1DTj8mCYdRI/DIwpH4iDTX374Oda6F5Jl5F+hS8IyhkoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750591794; c=relaxed/simple;
	bh=nqAhkPRMXiNRtz8U4a9FbGsb36/v7xGgjrhXXExGehM=;
	h=To:Subject:From:Message-Id:Date; b=mlsBJ1mFw/L3OdYH+Ff9ZgJPtqKGG7sxEQAq5G16qlNEPq4dSptA74tg2AxIFjm3e8KtaqS+/0yK5LE062uqQ8L9fHoTyVZ35IT1EB8f5aknDqZoVAGRABM/aI26RRUdSRU6I+TUA/n9qr4zZYrd9SM0aQPc1Dj6yjvWsqroNtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMP7m4IM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMP7m4IM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F924C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750591793;
	bh=nqAhkPRMXiNRtz8U4a9FbGsb36/v7xGgjrhXXExGehM=;
	h=To:Subject:From:Date:From;
	b=dMP7m4IMaSZmpUzRujzwTNkzjO+e27j147CKzuuB5gopCGHHRicGJxfYewUmUs4Nh
	 u7IlYlGRzHHHv+AMRWIkh+5R5nbJ9pKyEXisiTLE3xbWCxhCk2NK8AP9im2cyl/7oP
	 FuGvC8grTyQ373NQ7Iz3l37swy5/mDXCZKF0tb9On/csyCKFjo/o3g6y2Cv7bJnAtU
	 2ZU+ODxRPtEcYhUjAh98Ul9jvZJv7efipTKl+KHhjDjFkTHedAmaBPRGDTONZNkUzj
	 8S4sFdrdfiqv55gABav2/ERBYyy6QCsDfOTRoiXpJB4qrY69JhWldp6iUEjpdKJtBU
	 Smc87on6n5Efg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90413C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175059179358.19348.13948602383191677631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e34cb16beb1c0f2e49caaea627f999cf362ba5aefb39421c214def989a2be25
Date: Sun, 22 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750591793
