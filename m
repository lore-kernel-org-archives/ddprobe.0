Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D25DF59
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 20:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764448974; cv=none; b=trSJ4aZAkjxx80SV5uxXVeBGgQtMg6N1YnwAMrVJlZhNsPhBclM8iNTzeaOuM/HLfE4MjRx0scP5NVGYeOvhiXQUw+Tp5UbtSwUlRFhbFUGRnTWth7a4mb4LuB/ZjKti8rTcnJ03CPrfd2kZa3q54sKn5i74qNeP0nLom7R2+OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764448974; c=relaxed/simple;
	bh=b0cZHUp8SSmrwpAPgTUR5ciF56bnaSJzjA4B7qY7rAw=;
	h=To:Subject:From:Message-Id:Date; b=tPloQ1KzVO7k5izEiM9PurHBvzLz+Sf3JTDcSLS5Up7QGsCx33TFqGZr88WaFdZD40MtzuX9uJ+t6MDQ+aG9KpivRxKvTf0J1vK2ukYwKV98oFNgiK8phfAP00yUPPeI+FJweVzBrw/BLYjE0hBX9Yqe3//IJeL5A0D7XG+RqKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bma4Yq1x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bma4Yq1x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9382C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 20:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764448973;
	bh=b0cZHUp8SSmrwpAPgTUR5ciF56bnaSJzjA4B7qY7rAw=;
	h=To:Subject:From:Date:From;
	b=bma4Yq1xz/Bq4XHPRz4nf20/9po2/HGrwLu0guocd2QTj7uS7b5nmNKZKLvsI7i09
	 m860+yVqB1eh+lneUSZzFq0HCeifTMcB8DGQcsvfDIMbt/l5o67Mlyv2wzpRyZZ/dH
	 Ffjsr/XoGPr7hKDAtQz/y9obaXVawbt9rr9nrcIgNIJ99FflVtBa68Q9RSgFpr+s49
	 NAqH6VObsypG1rkOUQlvhDG71QElr0No/TcbtNlfZz7rnQSrPKuGKZbWZb9hsRQxOg
	 y2MvEum3HtmMvYhPrkDfiSDSKKEJGmsI8dTYppNbjjwHmqT8CE0H9fjwyvGpDu3fPE
	 mFnpgjpb1W6RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D22D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 20:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176444897358.15835.4139091320962873088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56bce15880fe1009187f797cf9608734b8e0420a7fce7077a4ba9ad40e7f893c
Date: Sat, 29 Nov 2025 20:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764448973
