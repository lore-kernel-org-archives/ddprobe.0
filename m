Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DEB1419A9
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758397194; cv=none; b=VyI8Hjbbar4E94QihYgK0JCS1UmrYNv4JY+wJdLPWLvi34oxAOhozo7VI6TdGZKE1Ofd5c/iRXSpfRPdXxrgHVTJDnG9sIX1B9ZBHV95DzQjF9xEifL4g2rrVWIstBZZQZvz6k+kC5hyG7OLL8rwookby04pXzVtbcN38+3Tu/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758397194; c=relaxed/simple;
	bh=YTVJkspb2grc3UqtsTGqgNLZzSeVg6qL/ATRp6cShiA=;
	h=To:Subject:From:Message-Id:Date; b=HXxqLDAXGoHS+Ix/+sHhlfwEA2JkbJ315hDLsy4xLMuq9E/CJlDYNM9ZAGiFSFKIFB3wV56Pa3Dn81C+qpGedZSRDkulkaThHvC7lkd37QotSQDko8CZwgUkt+D0jzL0Dljz4Q8f4RlE8eNTV7L8H9kL82zQyZnq8Squ6ZPlyH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ene0RTcq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ene0RTcq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AA1C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758397193;
	bh=YTVJkspb2grc3UqtsTGqgNLZzSeVg6qL/ATRp6cShiA=;
	h=To:Subject:From:Date:From;
	b=ene0RTcqDWzuXvaIsqLe0x5mSi+iAPBTgKgxMhCo0SpfDTC3fpB72Z4ZEn9Bf6XiY
	 SvWxOw1O/ZYiXS4gJopT7XN1nlUi2fT2CLtaRRuSDgx1Qff7/DwnISOSgfdbNGe65P
	 DOER2fpi0RMX+OggZjCYHNKlDXjYvy69YU9NftjpG8DJf5x9uKV9R/1DFyjghOwzG4
	 JFPy1LOrvXr6vPp6PBQnsgE53PpxQPZwhKAec5LtZlLkB+vR0TmQh8w1/0OCpAf+R4
	 Zxl/dToCWBYqh4Y7fr1m0X6ubLJU+j827JN/dbHtx+aCp9GojR0EXOX6pStc4qg5g7
	 LidsVKGr9tg5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90529CAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175839719358.14839.58634919815206894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f99da88971f69250ba29b7b939242eb4dcb7da2b139eafe2db6fbed0dfd1ed41
Date: Sat, 20 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758397193
