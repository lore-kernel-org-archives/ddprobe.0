Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AD6233156
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752665394; cv=none; b=d3NWKeJcGv6Z/plUgqu/l2cEJ2lrZ3JK4jGtgQWk6fspyYb9yMBeg3LICuhc3AuksJdLlEvS8lwK82ct7b9AjONDBdn5cInApXIU/ILmqmnBVaHc9O4CnfyTYBvMU+uRg7Qk2mVOkPa6rUvpORkYAxZa6bIv9yORVjipTKLeCHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752665394; c=relaxed/simple;
	bh=LakmfWEpYEGAp+xQp0dn29w3XcepB5jBTyOUt4r9NZo=;
	h=To:Subject:From:Message-Id:Date; b=EwrgaWB22HzoOGB2E+JNjmJFDelF1KyoFNM7BNu/LSJtyaD3RxdP69eLNjASrXUvulF93p22u54M8wgBuhfvzebV/J/R/qG7o/mp7O61GUhVnHvusbXZFigj3MUtA/MmwzXVtvGI0V3t6jiUWvwYjdW0tyTby++ei5cS8fOfrmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZncAuDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZncAuDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2925C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752665393;
	bh=LakmfWEpYEGAp+xQp0dn29w3XcepB5jBTyOUt4r9NZo=;
	h=To:Subject:From:Date:From;
	b=DZncAuDthtsBsfcOCX4cS+E19M/tELt1szCSgrgjFxyQXWEDX//cSbhi3Vz77qHjk
	 vL3irfN7RxbEbxUzUlId82l9d4oZ3FWy4MvNkea72yQF8YLZLNYMHj3nXkZV6rQvf2
	 ohGGJIRKn2kEfk9fIJ7ybey4hJdVvD7qRTpZYswSlD00XQqgrdxtwO7tJCcehqQVHW
	 bnPoX3v1lQ+jFDyXXkmi3dyl6tl/YGCaJZVSy6vw91V39mTIFqzBJi/zlwFXylACSR
	 Wy6LCzYxYcy3Rg7bdJehtuxqTmZHbsP9blAc7xY5S6zBmxSjzZ5lTGKiom7fA0bCV+
	 Ttm+lZQU8Jalg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90546C83F27
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175266539358.13914.1829889701901243840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6404c7d515cddc97d30dbecfae3c741b6a0407c640e2f0cbeee8a841240fc649
Date: Wed, 16 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752665393
