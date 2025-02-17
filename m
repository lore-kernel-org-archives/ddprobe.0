Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A54217723
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 11:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739793535; cv=none; b=I81Hda2lHuIa4Z9LoqrTF8RdHpyP63K3vrayDqDV5FFMOIv47EwOezIqY8uCuMbusHrJocPg4amgmdDStu0VUfF2RcJ2p8rQzpIM7Yuak9KyaHjWrki4eSZ9BYNlQE3MHh94Zoj7vU3q4GmocskBw0i/1w1NTSviQ3B9A9lXbzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739793535; c=relaxed/simple;
	bh=8KUQipcOpELUJ2YyWUCdE+mKyAw7vz5iZoSeSh3JV7U=;
	h=To:Subject:From:Message-Id:Date; b=eCljZX2gmn8JC4xCE2LpVTFOUwjVMd/lYX9WK3yXFkT/tCzdn765DalaMZmDCQGe8yeL1tVbs0ycIHBA3qZdCUlcVNEg2hqs2zvTnMEx466ubYTMaf3Gux2ATdQRmnof6obvzpVWGtTwshc6iT7rlF+EtQ4Di3aDpCZZnNGhkaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WuIXw5iM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WuIXw5iM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B42C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 11:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739793533;
	bh=8KUQipcOpELUJ2YyWUCdE+mKyAw7vz5iZoSeSh3JV7U=;
	h=To:Subject:From:Date:From;
	b=WuIXw5iMM/FyPbmBy4lQod9gN/sD9QiMQse3FUDyWFluknri9KXNACYJ3ypEMiNJM
	 4gGVlI9ouy8f3KHEbnBfaCtzO/YLJasuB1wN7Dvik6BEirtqPkdwZz6bRZ9s2nx/21
	 JbwwPEwIz7/BfkUCgWjsXAVFEGCGX9iNTN0msJbgTpN4tn49ho0NYPl/hhUETquuk3
	 zrfYAwnVhvIDkZJhbaxj2FQhJKUJkrMkCNCPC7YJG0vNdKiMnH+bSfCvIUSeVoWIKL
	 gm+f2WL/lJTzy1PiHLc9QLADNhxo+hp9KhzKEeMxihJsGJIVbhkjD1uyBafVk/pgie
	 caXkS4A7uM1xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0D8C021A9
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 11:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173979353362.21924.3395124851301171946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec50457a77e33b4862674d15653b33c9d12d2ebe96c292d3fbd0ebd7fd93e54e
Date: Mon, 17 Feb 2025 11:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739793533
