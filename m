Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F276017E
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709252297; cv=none; b=I/l9fp/2vsZZCx4wRbxZdmlyBu8oT/wM6L5jFIGkoBnJ71Y9h6hDVczPb+ilIiJot6z81I8l7pGT8ifSBMon8Fh5eUSX0bWOFRAm1LVLWuqRgIsL2Q3dCaiz9OWbe1EuQu4uS47aJuKX/wGr2gbaDbPDBnDyVLgaYRJKKyTkH4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709252297; c=relaxed/simple;
	bh=PPQ+/uukUjRVfLKZaLsSI8tFII3Zca31/Rjl1EKXR7k=;
	h=To:Subject:From:Message-Id:Date; b=WZplXNfSoM8dcwWbQhSmhWdI1J/n/YoiT3Nz4z6WJuLe/6nSS2WOBAfQbzbK5vd+bnUQa1qNbeyGwJ6U3MNLUBIgHRzxSauqk8o/RE8Zg7xywMJnI4HYaBUvlmIcHXTvbmAsv8/5YV/LQ3emW33kT2HcslQ8ocsHFZ5HbaMYX/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mx1mEOs2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mx1mEOs2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A0DBC433F1
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709252296;
	bh=PPQ+/uukUjRVfLKZaLsSI8tFII3Zca31/Rjl1EKXR7k=;
	h=To:Subject:From:Date:From;
	b=mx1mEOs2LcZ73Ff+0BRA5Cn2Kb/W9BPhLF2FXgj3tsCjkTTrrHXeFPLj8wACgQIq+
	 B2a963naF5zp53bu4K8cDS77+MgPaMJkiahNYzTO7zKFb4dlW+4gnKVfrtVxlG++oJ
	 0n6VHm62S5NahtxTa8uV6Xj2Sl7lbZfasn4ep2I3XkqlR24FUofFEQ0eBAOVYpIp9R
	 SzNaOlM7JhzajjLcxx5QJjOHWDYU4cS6h+V8+wJxkQf0dYTQFzk/wh7gLDQMDLzq0Q
	 RiKH1c+83befwSS7H386Dghtnjs8aM2X7zPVIt9ggPkqtWHHcL5b0RPf/EvArLMrIU
	 6OFH6c69aTiGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C95EC48BF6
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170925229637.5221.12440062718942242101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09cc2946fedb5af0efff65e18a92db394136d6ce7d79e88a0916a385105dabe8
Date: Fri, 01 Mar 2024 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709252296
