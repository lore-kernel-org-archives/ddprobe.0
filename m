Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3122C3245
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748829595; cv=none; b=VLjFYDRXv5a+XJp9O5jgGE26GsjutbXeW6fI4W6ddUggOrxTaxxqbQv5TaHJl1AUmulVHKYLJj9MS3OM9ZFvfPoFLp4SrqArgceOCjRnVNRkFExsKIxjD2eZ0PY35lI0n8MqUCT97V2xJiTMKOn1pDB6jZNAbexa8Agn2N0X91I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748829595; c=relaxed/simple;
	bh=EMcNohQnRuz2mUC9xtj8S2fImgrVQfGddUfkyVXUcE0=;
	h=To:Subject:From:Message-Id:Date; b=mayJIYwnIw0iZPJx5L6QL13MJ5DSfRsQhvqbgVPbIyod+SRFtp5altc40Lv8Uxyw6OWB7RTOrVCIUmGN6gK7O0hh1AhqqHmw1RuKRsT0bM/NDpySsWKx2uvB/B1KLqbppxBakTARfaDziQXsdNlqN332SU6hAw91fw/JkmXQ//c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwTW1yff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwTW1yff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92BBC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748829593;
	bh=EMcNohQnRuz2mUC9xtj8S2fImgrVQfGddUfkyVXUcE0=;
	h=To:Subject:From:Date:From;
	b=WwTW1yfffn6RgmoBfF7LDQ3wtroSRptpWwcwQ32dAkn//M+QdEtHOZOGzAxKgdgca
	 HOBlUL8GFl7H8euLnFJ1eHgLAhNb47hEWrcv6IAIoHGWPJXb4KyMK+PcVUdKiL3BNF
	 k989I/buWlHBKSrkA8Ho/r8MXoMDXfdJ4Vn3gz8JvuyujI09I5S63stTrz3a74ytno
	 b7XSLQ63xSkt4+8GqEt4Pzub+26npjy5v3fqCWAaycYIdhUvUQ71MoIn8C6yJR5IhW
	 gDd1/dntCgV1hmOHfVA+NNBl1CDZ7MZ2dbZCjhf6n3ru7Yvl3fZitoeRCzQw8kj7Fi
	 0nEB+6qE8uHGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947EAC54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174882959357.19146.4888347592429341981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93e45d2c9e670a7bb27ddd0fd0319ca74f7112a58fa5776b2cf8de8ad6c7176d
Date: Mon, 02 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748829593
