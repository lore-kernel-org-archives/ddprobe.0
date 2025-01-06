Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303F01DB956
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736160354; cv=none; b=Zc1k8HrYoYUh/Lptkiv6/NbOT75enHxPfm7xB6En2A1OdQ76qnFhoRaZE5prsA2hb1TuSfzaG5chvqi9OzfPRp9uxQDC5G64usYAI5LbF3JNNZSXqltYeKQW1bvKwdA+IAp8Wav6iL0QQoYOkw0bzHa4exvvLXoFs9TNaDXkKBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736160354; c=relaxed/simple;
	bh=Mv59LcpAc2N3wqmVa19NXxjlx04V4dib9WW8IAG2MJ8=;
	h=To:Subject:From:Message-Id:Date; b=uvDZW+EpBqrI+wMpfwveaM4zNDM2FC1wWzoSpvDoxKdfxpDl5W2cEz9EJEhntr4FL7wL+qysieZxj8fkIMLJalEy/YoreqJrV1tPfuJXG7pXvkrPF0qrJ3UmrkScTnIyxpCxpqiD1ivcpcD/+Owdwg63MqIm9CvJzgvJJl2AgqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzetQBDH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzetQBDH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D44C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736160353;
	bh=Mv59LcpAc2N3wqmVa19NXxjlx04V4dib9WW8IAG2MJ8=;
	h=To:Subject:From:Date:From;
	b=tzetQBDHoVvhHXP9x4MUuHT7I0IhMUXV9IdcicXukTgI5Pz4yddHEsS9BrUbka9rT
	 PI00FF52UqjjTVYbrRj7XagjIO1skcwIrtcmd/Axk/ZAVCAa21vh8puopAfOfOvjT1
	 /CfJtPqJRS4oCpShAYPpQ4W66kaG9/QhqjXnm3JWV2HTe+Uz93LHHXV+oKhbuvQqCX
	 1hlJbDoeoIzQCnn1SkER5vKHOgHiYHGlJhioE3ufUKVneYK0D/5ktiXijQg46AOAtb
	 IMqNVhO8qOzuQoZV6Znz6xmNcW5p/tp00QvoHOyBvK+GLtbL6eenXcNkai4VqpN3BF
	 /NB0UHb9yh4QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99470E77198
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173616035361.10813.12101727515539858707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6799d66ef015c3c24c4f12d5ab7d842b48566394b05dc4b7eb4e972059cf836
Date: Mon, 06 Jan 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736160353
