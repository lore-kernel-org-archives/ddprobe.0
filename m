Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19849199EAD
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774813494; cv=none; b=TuMbLtjBz3js3UAMJs0J0APWgIsWM+tLQ6yBamlaytNT32/viBGtX4kLr15kDlWviUkkG1U+FQH5ZA7LUDpDejaAhw0T2hp/YlYzyElr2mfOOWJK8cghVT5+pRqrJexu7onoSyTyUylbwl6+bizXOnb9H/JgjQNMSQwszytA4ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774813494; c=relaxed/simple;
	bh=uz0q3eY00YBqW+u9zpS8usN4idkbmW9Tm+Ll/RUCx/Q=;
	h=To:Subject:From:Message-Id:Date; b=nunXtQYamieRPhRaQG+EKFtXzj5c+AY0yTD80WP2CDudmhcxdF7NZlb6QrfM73+lhP9nUnY1JPsetojRqX7qa4VzvXpAR71dtgcXP1qGsMfFfeRfdiV+Pp/TJgZd8WHrbUVJqJssdJdC9RlsT19t80xNzm4yoNI9MJRkwu5E/Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3EyvF5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3EyvF5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E2BC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774813493;
	bh=uz0q3eY00YBqW+u9zpS8usN4idkbmW9Tm+Ll/RUCx/Q=;
	h=To:Subject:From:Date:From;
	b=E3EyvF5V9amgFSZYQKIxcFQrqUwQToXWPYHuCUlVitoRU9/tkqSNiABYNxi/56CFN
	 xeT2JE6ujB/lieE9DwFKNQFmOrln+ffrq/pUtpxzMznaPrKlalNdCBUhJqOFAL3dcd
	 1yP1QxsFE40gRPI3pH2j1VCDce2HjhTtmMWiVOpKM6uoYQrimnKDqHMWttxg21gMQI
	 8B3SNwIYC5TnvOg8ZkYbmLbXx/MNn7AJOiH6S9yMeBM5/X2WwOabEjDn+jCmFu3yYL
	 RTO2vB47wmxpEWbEGrKsnVW9fMlfCHLWqjKYdNimyWnDcdLm4Qc/MhS0TOrXBTbis1
	 QbsUhec4PhYBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93820FC97EA
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177481349358.32231.10268187580601512637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5bb78391a062bbcc66999c59dce18042c5c8c71d58a9baccdd9b744a4045bc9
Date: Sun, 29 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774813493
