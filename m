Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208E3210186
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731011754; cv=none; b=XtT8vAnqUI9dJddoUVzRXbaN3+ZqXcvtbIWs28YRPVB/P5ovKzr1lXhp4gID5QzSegKiymZIB+MlOrSybHcvTqQmF+3UaeWKx+tnmKeoaqutX2Zpoub68poO47os67jlyDtSX/YMiKBumF5XQpUy35hsQyIyL1Uvvd9DYG9EtQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731011754; c=relaxed/simple;
	bh=TIagVVAoT4LlBwlUVlYGnL2naXW+15cWR/gEhA1DwFs=;
	h=To:Subject:From:Message-Id:Date; b=H38Xh43kBm0RKVtXPyvPBBDmNqlow0qFOZTWNyJu0ac5xw78OeXZmqwdgECHjMFgvcaFKodEt7zEfSoIB2cJXXoCvlWe5dgLDOv1gerU/n83Xjgtf5pR5gk5sia78am/Iwzx+lHR3XOB5K5tCvxJpgrei+dyfiMiqP6l1yBgl0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NI4c5dWH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NI4c5dWH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BBCC4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731011753;
	bh=TIagVVAoT4LlBwlUVlYGnL2naXW+15cWR/gEhA1DwFs=;
	h=To:Subject:From:Date:From;
	b=NI4c5dWHaXUmDxEeiSX+mnIdvh9pF/+VrPBh7h3QM2RcD+w57fxSdeFtPXS86KqUt
	 DZgcf1aSnJ3FePn4RVkmeCQA2kNnz46Q0R43kCH9FZdYlhumDh59mdOTNFyPTYDFw2
	 3ttuz4BJKlOH45JYlrT/NVgIxaeaQh/odOUCslrPHU/sxsw1tGuudianY+EVoQCmHt
	 NRkLdKlHaNmolyIY3mOeEDLGX8bWYYZCufQ4xfaEwvV6t0LQ7LDH0bSF9TWeKbpulF
	 Le9mRaEJX7ACoVlE/aUGnTDNEgShUpYkJfLmLosNGd8hXHKi0p6RYYKo/MBQlgp41L
	 pDqYSa8IKN3gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934DED5D689
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173101175359.12004.5188658131442068867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85ba2e0cd2e6d8d578978cff8c93aba8f60371f9870640791b63a71d1eca1d6d
Date: Thu, 07 Nov 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731011753
