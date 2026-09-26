Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496C431A56C
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790398234; cv=none; b=F6p1KIYxA8iwWCYFJR3iij50h+FVzRGDSs+80HNQmVm377LXJhm9VZcDF/zAbiw4nVY9yIDuBunO5MWaLQE9ePM2LfRBPsKVoLqHMln7UQr0TroUAmMJFtQ1aD5w8SicAvaIfH8QPuDPuvAIOcQAFh3r03Y9udvz5aZ/Kg3jBu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790398234; c=relaxed/simple;
	bh=qz6bjP5lUXFgah7DnA88c5l2v3jTk+E+fQZurLXD8vI=;
	h=To:Subject:From:Message-Id:Date; b=Z7X+ixYEwAcXJRpT3igUCzAS1Uje341K8D/NRMHnaZxdmGyXKzrV++FAzpfvtUH2iKSQHKut/k0GH4b694VLQIE35kF+XPqtMLFK7Mh5WohE3QCe2veQfQpxt2yBD88+GXjKEo8CItaM7XFVpkbdEZKtHlHv34V8U77Unwj8Prg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/DcFmZx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/DcFmZx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AFCC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790398233;
	bh=qz6bjP5lUXFgah7DnA88c5l2v3jTk+E+fQZurLXD8vI=;
	h=To:Subject:From:Date:From;
	b=t/DcFmZxgW/6S7JLibuYyXauFLIcQNBVqy1A/J57Gsfss+mydutVe8luadEw2+oBV
	 +PYjfqJz4oig/C3aMNK1wWWDALrJ0AZG7CPlqQi5x9hLNXqUr9PR1I130J0W6oOvYx
	 S5xBJHbKwgOoI6Gq/oiJyfkHP3MLdTdZMoQjj7685htaRH24Y7fDIiBb8C61ACooEU
	 M3yQc9EZrnnEfQDN2xmxp6fs6BHHvu6qxZcr7LjzkWdUhXCJOSGnCnyWP5e7cFdmip
	 D2g970UzIV97k3KgCVkudivpfN38ceVLX7aFHhupHRgZLMfeKV1pzs7UNL9GdGORLM
	 jVS9fH86UWAVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3B2C98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179039823368.21087.1082521498000433442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eb4048eac3dcbc7c19e31f338c707f8a8aa00ce8b798be2a23e86056d2274fc
Date: Sat, 26 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790398233
