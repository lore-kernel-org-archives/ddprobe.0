Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FE5199BC
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757477394; cv=none; b=UIG5DrqQpr2XJBnoX9LubQy0YoVASDUXxlcM9w5X0sNKhvfO2TGDCb/9GsoaH/H+VhmLVVBzunra9rWo4kh/kQOk/LCfx1DEE4J0IITFZCI5oOjTnqM0Dfra74e6blI9rnSdWVFm89xgTs0PzOaglOSnqX7G+O85BCY0nCRVg+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757477394; c=relaxed/simple;
	bh=Xk7iIPHvuQsOSeSiGlRbzUe7EQ3cGITzLbDHXFGMO/c=;
	h=To:Subject:From:Message-Id:Date; b=icfk/au/MF0TMncbcUT708i5th+fzGeX+tw5TYim01BsEYXkL8FopfmkfXW8O4/rf9WpkhT3K4O1wexIG43t5pdU/7fWseBp6+lSoN4xqazLwsi0+Np68lmK33ohMVZot74/Fy+0HO5BkrjfWeoz0N+fgPy+YU7LIR2vv4DQgmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8URqasP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8URqasP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A700DC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757477393;
	bh=Xk7iIPHvuQsOSeSiGlRbzUe7EQ3cGITzLbDHXFGMO/c=;
	h=To:Subject:From:Date:From;
	b=G8URqasP4zozUJZP3tIB4jeezqDeSclmCdYlgrL3MbZVMYzdMGlzgdmJ8do3tuhOG
	 jj0ajPpMwGakAGTgXMXDkLYpgmisWn/RP2ZtQRZHpraTOywcQioPtiXVjz2MPMnONs
	 vpYtLqP/Mkab4DRdHQxvN4d1LrlkS6vdEDsBba7nnUAsPaPOzbrqQ7Wr0lISkhm8zv
	 CnprAH4bmP6gvGO1G4m2Wl+Iryjsc4zFzCJkQnoPX5k/KmgXl9GrgEpLV7cvFZn7nd
	 wnAZKBy8AZcBL3lSHKiXdSMuq3ICf+/7yDENP0ZADKN7BwEK66UXz+wOQQhKiHT1CK
	 e+lzNeccSy/zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA7BCA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175747739357.32595.10451225190455300619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d83582863f27f10a87f6b187765d659b9b0be8873bb179bd40be0edd6cb480d4
Date: Wed, 10 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757477393
