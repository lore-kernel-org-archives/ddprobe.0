Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3021A23BE
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752113394; cv=none; b=qCSgngwNG7neLZl3jLSFpq3D3ubOymjCOWByaLknW/yFSRBDaZ6kBjnuVh7JUGDEIXWn1weLA0AczGJigLHSlmjCxtOJ+T8eVkZkJCkoUCTYtEFELXLSoO2mWRCnbZ734U8VQ1m8Vt7HidGvr4MyawVqR/UIVSEFjqSgg06t1qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752113394; c=relaxed/simple;
	bh=EP3Ntrjuq89RZFYJgrGFdE5ub9ekqYKTIxMbg6iSI5c=;
	h=To:Subject:From:Message-Id:Date; b=DF8bN0ob5fqpBj4r+0PSyO/qTKe1v5e1HNWspUnoqbm6zcmpROg9I6MVKipDpVER3iS/KwKW/C7oPTtrq+wIpfmt1plZkQ2A82a6HD3erxsUhIkw7tjK1UzDoe17RZQMyfhy5n1/ORQHkvRN4Gns7XzSuhbqqzOOs0CoH+OXqvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnqBiNDh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnqBiNDh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7658C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752113393;
	bh=EP3Ntrjuq89RZFYJgrGFdE5ub9ekqYKTIxMbg6iSI5c=;
	h=To:Subject:From:Date:From;
	b=NnqBiNDhqOORG4MnT8vWwQRqAF9rX3+CH6N8xCtt/lol10vWzeKwDUNZORgs7Uzxw
	 95AEZmDxT11OtmfruF56UlqWn0EMxiMYxmEZD4eB6b85MsNH1uWzJ/D4Ff4mx0viI7
	 R8M+dRkgeP2CkIGHBLDash7FWzSXp/WvVMTbeOJWIZAkvxBueTeJLTBOroLnQdBVfD
	 UOUy8sf59lXWt2dIDkZgZREWYaYlilqPb3Lqfyr5AB4DxM7jEjlhixNnGBA0H8bWQB
	 W1lv5hywyKmgCwvTG0Ofj/EW4s0r01f4Fv/rWJHrkpXd12+UAHlloYZAMUr9ovxpRz
	 1bY8FPgzIxmUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92785C83F10
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175211339358.25688.12121387606819653998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4972dbf37747a5c899edc2bca70d536831d7606a3376cbd64ea3de2d2d4dfced
Date: Thu, 10 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752113393
