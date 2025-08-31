Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233162066DE
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756673994; cv=none; b=ZqcmFfIj/Nn6zGMyRgIq5z4MxnPm8F/sICe9FmUr4wqAUbO0xEGrwHBlTTNd7BUbqglXH7hfN8PWwJU148Hu76EAD8U9a3KSHsi3zydF8lQd/OvxBtMg/u4W7LpJMuwNO83kfqwrOrhi1SxxEpi4sjeqosfrJcuf4GxzcnridLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756673994; c=relaxed/simple;
	bh=DNu7cTUmo5+6QI7OhdXtzG1r4ME9RYkLRLwZwbIcXJE=;
	h=To:Subject:From:Message-Id:Date; b=Zbuuef0NBijg8gxNMVE+0RZhQaPSQXdTLN6h9BHFu++tCVuZuKg/z4rlnvEx/zHrxwEyk3WoojQVbiDzsMAuo80tkrUUdr8dc03UIepnMkLmSSZZU+uDdcu0F5PXa0/SpEgRhiHVPwh4XEnwuye8wr/CGjAh6zNHOm4VFxWHlRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRozFmAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRozFmAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72CCC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756673993;
	bh=DNu7cTUmo5+6QI7OhdXtzG1r4ME9RYkLRLwZwbIcXJE=;
	h=To:Subject:From:Date:From;
	b=CRozFmAjmjNNLt+B6+mdCg9Ok8HDSkopWSOXZ04JxGQeK+RjRE0kQRmphXFYdPoEi
	 yV30tR8jPioN+NfX6t3+SNzjC2DWwKtzB4+mvSDqNcOpHd6BpY7rHPsx58AKYtbCyk
	 7xadl8MTnZ78Rwn4RVQW+5TrWj6CGNA3blmxVf1NY4tQ+9Tbl9OVzytkueRaWE7Ahh
	 4fxqsx6hIaKlZbfD24v7telVl6UkMrgCA6G6lGBAREE8ZU2xDAoaxzSr4Djgyod8Oq
	 iYzrB+evSu7HSqcBtKjQSRwQYhciTHXBc9GsDljqaV3fVlH1v4edPrjhhznx3zYKXe
	 1LNUaEdyHr21Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91823CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175667399357.22203.7943292391046293241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c3951e2b69d0c9cb4ff0b1b2c3c0c9f94fe9f926408ff07529f997498ad084d
Date: Sun, 31 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756673993
