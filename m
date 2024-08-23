Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1116A13F42A
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724401554; cv=none; b=f0AVSomtwl/BdHXmXr9UxTmPzGXZjlEDtAbHWg+nJF4J6k2DwZKIBpCeSxnfz3oeYjo/aPzK3Xlx1Nsq/mH8NMX093ZPIgYN7IN5QN+pLRjVc3bo3rFjUeJVB6hSCA9+747jzuNLxh227ocMbH+aWft90kM40pWRaDvpoE1lpM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724401554; c=relaxed/simple;
	bh=4BQhXzjwtk++2iHRuF/CyFJvu/biXgv5nwvmP6MZBmo=;
	h=To:Subject:From:Message-Id:Date; b=rmJCXENdsiEswhj2hvO9njJ9H0elpV4/GBZ3wp/ntyqb6cQKJahAjcefuSjR8lrueigtWmf/Lm1zGVYv0+XkkuQ8cmeoPuRsUo7zOrH0pUxOT0hg2jW90FRth+xJAqkVMIKiWYcw9R10xfjJtBtL85GAoIjdVUrfMkfF5T9eNyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhjuhkQy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhjuhkQy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86F5C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724401553;
	bh=4BQhXzjwtk++2iHRuF/CyFJvu/biXgv5nwvmP6MZBmo=;
	h=To:Subject:From:Date:From;
	b=dhjuhkQyc/gKDleP1g+sKg4nGuL5HO7Qh7i+TL6l4w8n9t/ZRtr4QQCPp/ngG1kt5
	 blJZjsaFIptGqT+7mudAkg/mdpGJK8etmQR0TDb8hf/4v1HLmtcM/phg7LUZ9gjBth
	 0HThTfRNZt5GP3sd9k1fQHumQoa2Xz5d14x03prHYw0q901GbjrnOc6xHbtIQnwpjt
	 djnJVfiuXirJlxJPF6/KKlCz9s77k+NUuUkwP3GiclzYuCA6PtEOA5fNygKqx74Vo4
	 LNUA2KbGYqQ2lk4DHRYjVICuGQOzk9J7w441JN13bzWOxpwzEjBzyyM26ObqL0RfEy
	 aClQW5hdVI7cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9394AC531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172440155359.6269.18145440605808307890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61ce00a7a4aa1a84ca2e7041cd08f7355264c6957fd4ebd36383417ddac760a6
Date: Fri, 23 Aug 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724401553
