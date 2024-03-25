Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279576EB44
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711348697; cv=none; b=QGw64GtwS480UNmtqgSuujgM3gpJIPC/8zDhtGCQY44dS/CKfcv7UAhjPgElywZyD4PLAJWykCIzTqhgQPTn6b3yUsMYT425vNFnJHfO1GyMkFDEHh01YpTBgXJ5puRAh4/Od4hZHC9P4/b2md2S+D8JnByh/DNMxYlfMIgmF1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711348697; c=relaxed/simple;
	bh=2I+jOY3YFSB3t1AsgtlBYZeAFY5wjhW9fjgz2tTYACw=;
	h=To:Subject:From:Message-Id:Date; b=UtNZu0qQiBLPBHWcCi58jNXWikESeOfAnfFWhPzb3Hyaj+dsU/NeB9pbR1gKQKZr1GM3QtQYCBJxvISk8U5+fqEvfcgAwoC02FNqH29gi+TNMLiHhnuEABL9A8tjT6HUqhjFxNciyrzuW4n4wMAbYa1rxZ/WNiLcacawAk58aKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRi+CK9d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRi+CK9d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 948C3C433F1
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711348696;
	bh=2I+jOY3YFSB3t1AsgtlBYZeAFY5wjhW9fjgz2tTYACw=;
	h=To:Subject:From:Date:From;
	b=jRi+CK9dgztggTLBGzPzPEgZjL3wFmQex5M37i4ILpqDLjN3/BlYKfIIVpWP4yAho
	 bI4zSeI8bJiOgAo8fUQCZU3fFA5IGShfEMN4MiQuaifXfJKvMIjbcFIgLE7jI6O/R4
	 Ash+YOmSki+7uSgOPV7U9p076v1wPK50zAIOCH5lNk0Zkr5r9sg/yzDNl9vZduCmqF
	 F47ptHG+rLh3qyM4v4GADYLNvuO8Syf9Jf563yjI9vrmvZMF+6WKYSdS7jJ8uHZM0C
	 eTN/0ArF6AFI6tjpv5zu1CrtNU6akNNKPSqhjS4GtXCEOyEKYoXAi9jtiU04czl3Ih
	 tKp23lLI/QrvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E48FC54E58
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171134869650.12032.18177415980271383400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e04e115fc5317ee57c3e8a14f9dc0857acb490983251827a80775c00905f41d
Date: Mon, 25 Mar 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711348696
