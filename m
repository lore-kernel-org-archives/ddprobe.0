Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B673F9E8
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775955454; cv=none; b=ccJ9Y/W6Fe3dFiT/BaEGl27Y4WO4LyKZyKVV28pTyL6P7BaWtpqpeMf2jyFfqdD6ylkqzPWTTuzOn8YsnneUbx9Lk9bwFLzMYK/emMjLwnKw2KVPp/KG1jmPsGO0dySvyXKhH3hhLfFcNXhbRZha1bCOYSCE/L1VelU1SJP4X8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775955454; c=relaxed/simple;
	bh=5fu9VzBT/DZHtqYv8FOyad38IMboTXyFJ0hfQQ5Qj8E=;
	h=To:Subject:From:Message-Id:Date; b=Cb8Q5JM8dSRATgpsg/zwKJKMVa5kj1rFMbUbZYvIDce8BGbylg7GLh/SZoiQp1sKYxVJe1QI1CO3lmliJFQ0kASTHhrTaIK5DE3/Jr+6SjKPeidcLs906cUODsl+OX8veU6TPL3mHlmcn57cqWuiSwL2TSiygq3QqU7ymmy0cnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jepZMjek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jepZMjek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E23C116C6
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775955453;
	bh=5fu9VzBT/DZHtqYv8FOyad38IMboTXyFJ0hfQQ5Qj8E=;
	h=To:Subject:From:Date:From;
	b=jepZMjekK4yooD/DDdP4jN165czyRJCZf5QL42K7Kkq2Vve9haqT/dO5hh5f8GHfH
	 f/xOeBDEwd5SC5CoOyjKjgS/MmS7n5x9BdYsiODpIfoSWFe6poUvbS3a63OGTKysXG
	 MnRZ8cUpH/qA3rpo852yYTavt3rJwp2V25GGwuIpIL68YBR9BI1HvT0qJhx6Y4Mgul
	 XdEWz9xPmgBVjsAkWTiMrriX6mc/bPIy8raMezDrtF1T7QNus9nXRnJ66C34zVHDbR
	 YLk+WjKt/AiXu/1XYjFDf1cl8P/R9Xpp9ICNX8xWS+lLDuR7bPgSGPbYO9A0pJRbji
	 gvNW0tA/5AKqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A957FF3ED4A
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177595545368.18386.17998398297091429667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a07d085c05e3bd3b22a02d65761f85f2ebe77d97832517c0660c43b1cb6c103
Date: Sun, 12 Apr 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775955453
