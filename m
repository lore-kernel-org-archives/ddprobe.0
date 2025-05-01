Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE8E1E3DF2
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746062994; cv=none; b=EhD+xEiYrGH7kbzcrBIAieShKNzzEOU3JSpqAKr6PpgZ7SB3vC6yakcBUNg3lzNJybAs1varrUl2SWhGWYF0HYbYbo3CgLTOQjWYfylt4yItuK1mZOc7I2evEsb0rVF/4et7al3s2LTHeoKBqQePkMqYUE5PsxSX6Psnk86p4lU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746062994; c=relaxed/simple;
	bh=MXiRLQeNgkTqaGSTebRMFLQaLSZdDKGWl878p/OcRMw=;
	h=To:Subject:From:Message-Id:Date; b=t/JL25D86FXPpMMINH87jo5a3Rhi2Dpw5C8id7ofQWZSI03xYsQmGbQAenQ0Pe79IoyBQxjs/zsJ+J7IT5wkpI/Ly5G26kGwS0veAviUdV4UVxCnQB75L4+lqi7WSBzTg9qNLSmH3ptYE437ONMlQwcFjdKCbEK7YUv4BMXSKyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ft0EasIe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ft0EasIe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F64C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746062993;
	bh=MXiRLQeNgkTqaGSTebRMFLQaLSZdDKGWl878p/OcRMw=;
	h=To:Subject:From:Date:From;
	b=ft0EasIe8KE+EZ50tW+VjXv/uHACE7eb/4bLQAlxZzQ3WvIqpiGGo7Cr9A6RRR3Se
	 RxIKGreIF2MsQxv9ElJWiD6D08cLJs91D6lVSsdMWV0UcRNypMw1mXSRYmdYeEarpe
	 sia6qPpIrVbntMVWan/kcGqXAaBNuYtTUi0dFIR5c+8miUHt7Jdnrk0LVihvnvGmB8
	 lfNVb713lcaNxAFhtZVRWBonkQRbF2OIx7KsRXCCY2t+WRA+fVDsrvvu86akeuNwb9
	 u8faWZKFApKQXLaOwo+8w7cOylMO2/1CnwdtVhMCWOA7d0rTge6+yvYb9u7LPPOrqO
	 VffwMqoaZk+Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED98C369D9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174606299357.18013.13849901562619856634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ac9edfb6e30755aec6d7e87059b70c50d53df52679c4e313de574edada4f031
Date: Thu, 01 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746062993
