Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2556AF9D4
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 16:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716480803; cv=none; b=LrCAeK0JgG9Ie7VHLuTwZ+ZURSWHTms7qXr3+K0QAvFLlBCXaz9FO2IWifux+DVDvhpkBVfWwsZroTWDjf3QX1dGywVMijcyAiK5pqIXNpb08ACpdiNO+18nUs5nHTTJ2IXa2CUJtBIbm9HYDxjwCezU5yjD8ic2NguNxR4Cwqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716480803; c=relaxed/simple;
	bh=OCHVgGUxEP3L3a9Ytv2rYklqr+n/i5dYcyjQXYkbjrs=;
	h=To:Subject:From:Message-Id:Date; b=CXf3UcuQIUwWjW5j6/x3n7a4nyooRAabWPGuvo9k4/F6VBgAVMEYiXdkPEY7UZ6zuFR1a7UEF7quaimCtjmIBVNtZbeI3YDV6OZQeyi3jU5l4Bo5SfP79XxsSUWP3MBpN+RrCOvbwskyfCOzW0Z+bhEoaSrmf/KTkYS9/J4q74s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vn/5ur6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vn/5ur6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3E12C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 16:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716480802;
	bh=OCHVgGUxEP3L3a9Ytv2rYklqr+n/i5dYcyjQXYkbjrs=;
	h=To:Subject:From:Date:From;
	b=Vn/5ur6BL9fSKKYirwCAxFWH94SNAtMaOq/qDhq3lAOFbh1NWmEKP33Ozk3BZdMz+
	 beTSxaOhyq0mdnrTjrixfe+cdFjCTk612SRmdWXtOySDFEuSrUFwONOCMjdpEEbThX
	 jKV3zwJfTSHhgS/nSrYdRi/2Kd+nBh7Jhc6XRI8bLlEnb+wQSCbNLTHrCaVlAgNtQ5
	 h4ohVhUkY+/5+GH6JgKWN/bGKD60jOPIAVpys2rkAkOoTgGYpQe/YdsdDnfae8+aNP
	 tq0aV2PiFSa27C7uk+XnjnoAaDdjjoxG4eXBPLU5NkmwzZjjXqQeuSXYmtErsKfFMs
	 k8cZC+Nje0KKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5AD2C25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 16:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171648080277.4046.4246289963381918013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8434b9fee0462ebd9779c4ff2aea2a98ef2ef14f929770aff5f29dbdaab3734
Date: Thu, 23 May 2024 16:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716480802
