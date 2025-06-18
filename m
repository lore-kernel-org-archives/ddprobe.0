Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163342EAD08
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750256995; cv=none; b=MI3lNly7fDLRE7Qb5iZSPkIDls0SSAN1HCokoFa6+BUTpn/oeDihUuvDTckOgdlZ6HeTCzALq93TDj3GwGLy4eauD+4q0FRQqcPVcY7tUJrpe2jNsJyzLcmxZUdXNyb8f5ftiyf/25yZaa4dNaU+I/kxWK1c0qNAU17D92Pno0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750256995; c=relaxed/simple;
	bh=cJlxPLm4wAAGcQRiu0DMoAlJ1V2M21NkcfuGNKlyvA8=;
	h=To:Subject:From:Message-Id:Date; b=AqiotmjyDT4FJ2iNhmDxciCSMiuPYoU7VWNtBHhu9XYq461ZaBZNSlca2WfGuDMVqfc18+hajJdgL5cFPemyrvJqIbS3DKUdjU53ZLYlfOUFmbOlb/2N1ZPgfDqfxv8/1Ul3WGjS374VOKW1ToNTrZYPlqWaGDOVvzi6P2ag0dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s24zm5qo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s24zm5qo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2847C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750256993;
	bh=cJlxPLm4wAAGcQRiu0DMoAlJ1V2M21NkcfuGNKlyvA8=;
	h=To:Subject:From:Date:From;
	b=s24zm5qoTtzm6OCg0nlOyUtnyzmP3rDMhp2RN6ClCbqHDPksSt3UzLJKM6QVnOLUz
	 qd3Xi2vMnLk3UfRnDqx+74TsJMO59fbNbpPvsLNl+vd34+U3BAmLufKPMKqUlWPrDI
	 wnpUqBvFPTvc2kg+D4JUGRWpYQRJkJSie76KKyosg6tCb4oc5JkN5vEbMeVkJEmyKX
	 +aLH8EzYW2Jumly9bdluBrlh9pxPGeD5hID+nTFYCbBBZFBbosvkZLsAQQk5dg92EM
	 ckRWwe9e/XR8zA0w3aDnqzNECfT/x2PLszRkn8FvPU2Bo/toNhpVP6TkYGL3RE5obz
	 KXhcGCJCJxTQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906DEC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175025699358.23903.13578099579492127524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ac3779f0fb15c68f15c673abccb0f199cdb9df2cae74009d708e3ded802ae76
Date: Wed, 18 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750256993
