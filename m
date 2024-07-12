Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0F6414D70E
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 09:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720776443; cv=none; b=hMS04KzcOhACApRJO1YJHt6U3rubPqw8IHpfBh0op8Yg5WMEvdnhDJst+N6gdjJhI4yLBGJ6V3sJ02FBDLvedI1LICh6HlCHly1Z+67GinFq0NcwYIKBQrIWHg2R5d3vBd1PEUSH8LgpYDDgLJAMpYLzFokdLCiaF9VWG1Mw/UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720776443; c=relaxed/simple;
	bh=o3XmAoQaCxv5R9XYvWxw3Nr8hg39+2rC1yS6pZj3vrE=;
	h=To:Subject:From:Message-Id:Date; b=pghtmqjJ7ju89ASJ1StmVqT8PZDJEvieWSuo9xNlcKrEKGOUue3xflADDy4H9UvdtqenJutBK9gfsyRNxr4M1qEDdKLajUaCByzpssnEW1yXl3tAEwjyumuvkkAhSt6YsETuCQlLqtoK3TUD1h2UsTsLDKbgLSoXtzWuo+mbFJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MDPq503o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MDPq503o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 423C2C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 09:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720776443;
	bh=o3XmAoQaCxv5R9XYvWxw3Nr8hg39+2rC1yS6pZj3vrE=;
	h=To:Subject:From:Date:From;
	b=MDPq503o7Mmq2Um1UWW8wAQxOtS9HJlKejN7mJPHV8fW44waEz/b8vmFVewQ0dfut
	 pSHVholRVH1zyy8vd1Tu8p7fh5XA7zg15k1LMVeHStHehflKXAo6Dk+g56+p3LtaTz
	 JEbikU1Ohws6HL9Inqi53xwDKbDQcUuOAa9djxhGPkCNQ9Zgh/p/L5BJsM+nidVU3s
	 5aJ9LdEi5QRXX1ushvL0MaUDbgWUIu2haLQ58oieNTcWouvdOUaHmE9AkAPuJVpqPD
	 uX3noo9QCrNfdrtkdsn1uMeyk1d4Aj8abMfkDpe/JtGaHuk9U7xeXpzyKYelwV/7f+
	 G8aFkZmrFuyjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13731C3DA4D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 09:27:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172077644305.2850.8724914645720295155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6716c582071f8ed7459d6414d9f0e745321e87589ec9df65c8dd97476b2c997b
Date: Fri, 12 Jul 2024 09:27:23 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720776443
