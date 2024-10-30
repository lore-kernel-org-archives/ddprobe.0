Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E70B1946B
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730310354; cv=none; b=PMI4Hbp5/A+wAqUevqOwKZy/YDQDj2TInjgP0KCuZrODdrDH8NzK7cxKz8j88tH+FzglOXfTPCU2JpyAceZsWwkxl+kmOCWoCqFH5U9+Rfwjwp74xC6U2N5hTufDv3BiGNU9AkM8UdJRkpVSiUhI/a7Ftl2PYuxdsjuVB1UgNZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730310354; c=relaxed/simple;
	bh=pf5DprHcJKpDjxxI5fhQqgOnGqr3ZUmHGz11VyAvdL4=;
	h=To:Subject:From:Message-Id:Date; b=P8GXMX+MZ9IbRbvn1jlk5OcN3cKlsp/RAzDFyAZT/6WZUDtd/3ppJa1SJ6XH/z+dDmm0FXBUP2hTBrNVcoEPo5mPXUQrdMsXTNC9o2miTa5NT1PHnyTSM4uV6A1eeQWm8MLnARA2o97kq/YA9sscPPgV7H24F+AJ5xP8I97wmKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fecc8QQz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fecc8QQz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA6EC4CECE
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730310353;
	bh=pf5DprHcJKpDjxxI5fhQqgOnGqr3ZUmHGz11VyAvdL4=;
	h=To:Subject:From:Date:From;
	b=Fecc8QQzlOKjLlw7lyBrkcpdaMK1qfDu2knkORv/P8ptIxhxR9ISPNIHgK8BS9mdV
	 VAbbi7vAzfbJonA1ozsCYNdhTipTKd7mnOnW2PmYi3e0KufE+IPPQ8gvLDtE4yTIFG
	 4DCwBtlV+CbdJBhjh9m9x40yb5Gd7LNQMV1xtx/50iMSI+khOK7yhkMUjg5TjjpZaW
	 TlTVvIk5I1aEWsdJm6mqVJ4JMK3TnrGhEHi0ppjgLlYp6EIsBI16TSptFi3EQYTvlD
	 AhGz7lcRsuErNB8sBBQOrpub2N3KxXRPgHC09yXf8qOJXu0IJFiRf06+eBGgiPGbnw
	 0jWcdl+DB0gpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98202D6B6B7
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173031035361.18702.12760491255239721273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4006ce89bf6803c94d19754174c8b1818de4f2101c1f5599fcef38676fde8f59
Date: Wed, 30 Oct 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730310353
