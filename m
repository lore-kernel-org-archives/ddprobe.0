Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5193B1A4
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738816555; cv=none; b=b3xS5T3toAa5WkKF62SptN+4DxFgtD+luaadQKBq6zJhPcmDivyGiqYpkigTZozqq5ZTdmP41qeaomwDaljT8Ste3CdHQ6e3pawaH1/c584UCnAWNallanh/KRMfFXGtsAxKus8qkhE0b5DCycu1TSaNK6QIGs/fgK2I6yMBJ6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738816555; c=relaxed/simple;
	bh=9cnaXcTpE+BAMdBnRgMrGyHIaTdlOKhViZaVZ4thmHk=;
	h=To:Subject:From:Message-Id:Date; b=JEjenQkBiSbeLkn6jhPWsFTJlf3oGu1FzzvP6uE/nKY4S8mHUfZUudeBj8KP9n5vsKjX0IF/S+MpdKmGlsdweUcCE9NZZQHkFp74VndtcTUHkcrIhLNW9ls+sJ3VqRLi3bKJ/LacvZfguHIzEpRpA7Tsw4a9RPySt9nSYhBmla8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M981oRAF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M981oRAF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CFBC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738816553;
	bh=9cnaXcTpE+BAMdBnRgMrGyHIaTdlOKhViZaVZ4thmHk=;
	h=To:Subject:From:Date:From;
	b=M981oRAFfKcYAIr5Jrc+3u7qNRIpdmCE8btv+5KI/NJftNQBUlCtGBt0NeHAlTjzw
	 QNPXym5cfn6GOGKJRzTFOLNRs63i33Qr6m215Ue9GISZmMKbkkuf7YmzveeNNUTMBl
	 /EidAAuU9FIEtFqNMF5Q6ur0IBwENtEJvZMznzv+RsmMd7WPMfk5Ri3ZKKWYUDh8G6
	 yPOaTIRH1QUl5JvVrPoBsDJSlCS30RXIDJeSA7kQiGI7QKE9es170IXQLP6oFncR2v
	 SfU3fiwBnAMTXeveC6rY+Ga1rWdFaLjbBUMcZIoYnU5T7t2kYIDPhU2gCD7hFGDIsN
	 peEieKRLY11lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F770C02196
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173881655358.8698.17194010228661500681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bafc0c0817a032f2117638986fd439def28ea2b660c32d996bf0638adc4c034
Date: Thu, 06 Feb 2025 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738816553
