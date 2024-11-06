Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B57836D
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730873154; cv=none; b=QRpqRvhFrrClbLOWu17sIf1pJ35XdUPKdsX9E1zMq+f3kiegYHn7ZNDZEIdjgI2WkGZsVRB654RUGNn/Kqw9DQYZ26PEE/UitFaniMLey3iC3S/mgOVi50il2/2uUBXutiBFJDkRhGJQfv0wNrE/Oc8HEqcRDfSLp9J16PbeNdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730873154; c=relaxed/simple;
	bh=8eE4a0Uu9UyUIoNxmc4yxaswsjoxUAoa+Hij0F1s7Q4=;
	h=To:Subject:From:Message-Id:Date; b=WHBgeff0xzfPmcXo0TqmJ0FQgxjqSJ3mqk4zwSs3tJw5TOQP2aSnaRRFdXFHUA7J+pQRGWU2vb7Y3IuesDkIU6ZLgGaN87PhmYwp7nbNl1dBuK5UmyXqwzQqxclG578EHFr7HF1gHkZT8kWfrPz9XQJsinutSiTVHhZZFl6vjXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jcwvvBaT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jcwvvBaT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A294CC4CECD
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730873153;
	bh=8eE4a0Uu9UyUIoNxmc4yxaswsjoxUAoa+Hij0F1s7Q4=;
	h=To:Subject:From:Date:From;
	b=jcwvvBaTH4wPXr1+5YRhs4byiyqp9NDYFRMCjPPJNVbvdxTH/eO+xaU1XWqBVPxHr
	 yC4ROMQyTFRPrlCAHq/ndWq6xMBrKw0+mi609bg/EzY3nBhsuD0IaGFQLYpQbL+7B5
	 uLTWn8Oq1bn1Xwem3pTL2N1zW8d/IwE3ZSnTBWsXcgyDaCkM5njMhKraSsptaiQT66
	 5Fr2sS7A/w0DYF5jmdCTAy/ZE7Fgb5UwWk+zhaU9Btvnp24uJIRVdFun/4w1ZbKhm2
	 rzoyCgetDpJYuKw7T3DuTcXZg0ugpamzs2ke7MwAsH+DZRWgPxMdYM/2mrRzGgi2zj
	 CkyesOzWTAJWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925A8D3E78C
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173087315359.14378.16710189574800754574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b81eb80fa1bca4e152dfc1a603bf1a6b018e685820ccd0b439f719fd3cf204
Date: Wed, 06 Nov 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730873153
