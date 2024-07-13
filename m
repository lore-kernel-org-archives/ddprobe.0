Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4346B41C77
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 11:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720869023; cv=none; b=mVpTB/wmV4J+GOlKi3ErMPgtu8aIQElbniQ17NOXtjpDalm3GjCp5o0uVK6yJWkG4cVxAEaQiCbmw6A0dI+qphhm+72bUKYWx4SJ0KJuh8g131VSSdSbsmv0oIR23fH2+Zzmggp12FoEai+Z8zlYq/6uMPSptiO4hg5zNvtAtIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720869023; c=relaxed/simple;
	bh=unBrsd6g8r3mHp4SnFrz0CeYVJkO1MMJvf4DIgh/krI=;
	h=To:Subject:From:Message-Id:Date; b=L18bfyHfC/m/KFQ9DEcXtQWLJ8lxEMhC9VYO00r7ISYGxuXezXu6acwRh/P5BaDlhhVuQB+u6siyr77Au1BE0UgRI30onfsHXx6TxRmMRWskaWOA6BJ03Pqt4h1bEX+X7g+zETBWDd6Xym/3qyB8d5QdGV9ZjZR9ihreinT0pnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSTDmAZH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSTDmAZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAC5C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 11:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720869022;
	bh=unBrsd6g8r3mHp4SnFrz0CeYVJkO1MMJvf4DIgh/krI=;
	h=To:Subject:From:Date:From;
	b=nSTDmAZHIk9s2N4U1MAIzOJiH5669rnQ8ot4tPjFXScMI6ELyqoTZq0Bfe9bvSwj/
	 D6Papnpl6szng57AjPLGuavHVGJuvRXZnjUhMCCTN7/Px9ooUjD8K1BedbASpOM9rO
	 hOajBu2v1a+l5qH8Swyv21vxZiyEdNRhqUmbLcrKK/Ks27wEE5C9bTaBMuOIZRBo+o
	 QHigF9xhnnIRXcydOwHoBWiWhOxG/9zWgU4jBY5ARh4JAJXdVwFT97KAs2gzcYCYM6
	 3qE/OYNd2OZMiA+e85YV55JzzPK/B9OlhfRDWsUkqr5crltZJDaKdFDfZXL9R9AP6y
	 3SGakomp5o1kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6640C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 11:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172086902280.10780.16965050311390866201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b345e4b275fd35f7fb9326943521624f5fcbfbf515aec32286f6a69cb93ac31
Date: Sat, 13 Jul 2024 11:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720869022
