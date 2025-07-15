Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22018BA42
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752573594; cv=none; b=eWCPokWRE47pw6+4J2B1fcxfGOcfo43LCQb6esO5vBlSePPHRHNATJ+2fd3n6aVfRRALL37mVADY/jQqzQSO1eJfbTEPOKv/7FVpy5vthpd3WfCEq29DukWP9kJ33EbruHUStPdFwMq6h4CIZ8TMfCOI8IWFfWT3tvnyUGRYqxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752573594; c=relaxed/simple;
	bh=pFhgQ57xE4il5sbizW26gh+N8MxEpFh8CUTJmhWnK2A=;
	h=To:Subject:From:Message-Id:Date; b=C1xPW6BJfv7Y6oxPkiUFDrzGXmhH1MwyaIBF/UUfRcbN/XNpAhpu2AaA1ApZ0Bi7ZKEcrJvWqTygWQicckWcKjAfiTgjwjxnvPhQnl14PlXL6l+oDVQ7fMAk2cMUKt2bTvNX/V1NY4gR6/+cxHPSy66WjeAiznmm5nHgkAUrbhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1aDhRp6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1aDhRp6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2496C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752573593;
	bh=pFhgQ57xE4il5sbizW26gh+N8MxEpFh8CUTJmhWnK2A=;
	h=To:Subject:From:Date:From;
	b=c1aDhRp6CuiNEV7D43mRWnsvNiTLcGqYuyX7dqvl3sKEIgrKHxoioDUj5UW6Arx79
	 0YGjfq18Dm/6edhznJk8Sne5eyyJru/qcURiesAkbmLtRVt7n8qGtYDMJ/vtPfC0U+
	 6ffyYhfAm6BIM+1tpY5WJqXZv8yD1jimSm3bNiuIbepc7V6F12HPB/hgiSHynTakV2
	 ef1K4qz/mMp99stev77hggeNiUf9SnuGvQO1232vLmLGjHoXoWGWgiY4ntO1azdFmj
	 sBOdOkHy8OJEqWZMQhRG1ahbilWqpCg385Ivzmf1kAl1YVFy7bjXJo6E0i7llqBRZi
	 a6Xjvjgcp1I/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAABC83F1D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175257359357.1487.3146030132293015422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1928fb9a2afc34958dfb445a843476b654e23e3a3311930a8284d45c7b0f4962
Date: Tue, 15 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752573593
