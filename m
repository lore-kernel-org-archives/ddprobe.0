Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7DE1F63C6
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737088554; cv=none; b=M1cE7dJHf5p27y/1ow1mPLCiHq/YnlW2AfdACu2gWKRViBUO7S3RwYiKbp+A/GwIfNTDBaWzCCm9oXD17sbp26pAkOHRrgheZU1LzKQfWC+GUcsNH1rqWXryyrmXJTZQGZYFnX9B5Gb2uJalgl4HrxF1SAZ3fswJiVKaIh13K4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737088554; c=relaxed/simple;
	bh=eRpdN2zB6mP/uig1hHjnpuvjA7nG0tIyWA6F01QQF6o=;
	h=To:Subject:From:Message-Id:Date; b=d7Vu6e+6A2A5Xlrhyc8hvIJ159hnmnz+du4h31yu/NcAJbV+a8kDaaExx2O6ip2TJu0GKkjWpUTFhralvaT8/n/KgpaCIzT2yYxMMU75RnJlLFt35Ys2DZFC4csKmM41npha6S+3lx6rdRZlnreDKRyqZWPUztkyUH/yIXXaLsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejpNP2Oj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejpNP2Oj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF812C4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737088553;
	bh=eRpdN2zB6mP/uig1hHjnpuvjA7nG0tIyWA6F01QQF6o=;
	h=To:Subject:From:Date:From;
	b=ejpNP2OjdemXwleEKVaWeVwjcQMAh5ojB0IoE5UPFhF/TF4vcmZ4ZFkgQvF1PIO8b
	 eWyLU9b7/eW1VYhP8DfCcIA5vpfqjsu9zCbGkX3KpiJAWQyYkDyPQuo/k8zL3F0lQl
	 2MVGBovYIuQLRNii+4GKH5CkwUUVyIXo49Zh33hsmMh/Td8CfhHTlSalAE2L27y9m2
	 CriOnwR/wuo+l4N5jFKNt5hzwWGRdGpev5OZF7l6ehv37mZ7QJEUpgmjssW5nbhvpl
	 Zf4RYfAwf3xJAdxZ/uihY2mDpvb0+4Xcbl/TWgjwC/IgSVPFzyuITQWnzc5IA/xJFQ
	 KMKEbjrvOiFUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BABBC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173708855360.7348.2588530205049589697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66e382951e80cc4aeb3954778d318b2875a655dfd90adc5b7976891f4ab9ba24
Date: Fri, 17 Jan 2025 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737088553
