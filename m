Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE913C465
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705679297; cv=none; b=YloSuZv6FlRdr9ANRPeWxO6Cow3n3npd4+fO4mKhrl0d2lcEYtabjAyDZtoHUYjUtHjKVsvtITP14wdBLJnOruvh7ekYN3GeUGczdYfWkZ+enwZdvII/U+ZxYRkCVuRyomEt07F5x0h/i6p6RgFvJGmRDHJUm+SBCdloLCEIK9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705679297; c=relaxed/simple;
	bh=CVZG/yRvOqHgrsJ9qT1+as7lsnGBFHlWPRVr3Aeu/qQ=;
	h=To:Subject:From:Message-Id:Date; b=ZAJa3Ie7iObHGjVAqVpFpygSsvyMF3nnOqPAsh9xVy2oMk0XlfMFrNCjc93MPE5amNkuBOVm6UVPEa6dBtPyIzvkudIMLdapKU5YUIUl3NWVDDrqRXXP5USgKH5V1nHWHE62DZ9u/u6/ShK06zUtPOQ6ft9gTg1YIQt15LPe3ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ugpO7bCX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugpO7bCX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86464C433C7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705679296;
	bh=CVZG/yRvOqHgrsJ9qT1+as7lsnGBFHlWPRVr3Aeu/qQ=;
	h=To:Subject:From:Date:From;
	b=ugpO7bCXaQ33gUiBFUxxrRt9hSNNqq9J/rfJ1bWKs/yjCkg+46OrIN75+KNzBb/x+
	 GfSvhjCW9sOMkU3uhNoVr9tvSFDjOWXnKbmQJ2Xoly2/eDru6DMm81AyMPpBmBt4r6
	 5roTnLbE8H7ZK/PzUzo1JRy0kMDsZ+oeG3729fFdjPytIWU63zJV9NP3AOSMTjxhHZ
	 Fsx8eqzqrzUargZheVbMWdAoUn1oBlRjJWgnuW19JPTQND9VQxAxN7ucevCB4G3puX
	 0eU5UkavqxYczx1Zs0j4oCNSnCJR6VkW2Pai12HWM8CJJ10ljC6eQvkFEjc7EuVQ6H
	 M/oKDyuzo6aRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67616C4725D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170567929640.12833.1118214483423553534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ace8f7d4a89b5aa8d6547f8fed6c137adcea61bc4482934f2d39b4715faf79d4
Date: Fri, 19 Jan 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705679296
