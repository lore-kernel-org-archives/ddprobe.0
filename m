Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3061754B
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751170794; cv=none; b=qdAHTDCffLXLle3Df3XYJWEoRS1CpkKIIoAwoYl7Y3m89QYnVJ5fwmIena65A/imjYyhATCRz/I1c1T2m2YdSb97bNG2H0QSCIcYtBvNwlrkfB5Wmt9hhpv+XGX9RTL73TDETK0OBaGtx0NTESQtH0A0cIskmaAARFHYNR0Z1OI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751170794; c=relaxed/simple;
	bh=lhSurieX42bKicyx8BDDlVF4zNYx/h6RsT7d1ltHSVY=;
	h=To:Subject:From:Message-Id:Date; b=fTUJCItCdT9+4jXhiqIkU7N41UoqNjlmKExSzT7t7mmeARYciyDxM+7xqS8B2ITR36NGaDMfck6laIV0GGFKiaS2465AEYneA424jbIyY+TKyikiMSRSEYZZK6RK14xGW0QvihOVOJPa/PRzLLDCeccUTZ+8Vr07UY6WjvkNaf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4tzT39W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4tzT39W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEF9C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751170793;
	bh=lhSurieX42bKicyx8BDDlVF4zNYx/h6RsT7d1ltHSVY=;
	h=To:Subject:From:Date:From;
	b=X4tzT39Wy6+ysjV7CHP2c2z8oZ8xg7LP1oUUuchaKmXG32QCQG1OJ/T8ELGLK5bNU
	 8RpmMqgrSX+OFLkDnPsquSBYkIPzhHe4gsD55rBUZrTfFc8KXtLkHvnNV2JW77ru6E
	 6/r6X0qiFIyC/OkqNgE5O9wY7xNa/c0GOsZWNXZ8zROr4nFo8wPpkybPHL1C2nWA6S
	 NpCxv+wZxfkWPvzzXGrhnonFjLnRfLR9HfLYBxtn0SAACLgoB+QC7vnVXDQ4W/h/ho
	 cw9j8Zb74qj4fuhHk99jn5RbEBRXEC8bE6+IzGUs8iDwSvCV4o7B+v7eVW1ZnDgyqa
	 MggBF3+o5avLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983B3C54ED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175117079359.15428.10791333473533150623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aa5ab236a8c9a44d8796f40e27542f2ab1a6730956d91c7cde2a4eca8d2418e
Date: Sun, 29 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751170793
