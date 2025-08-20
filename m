Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B17286D4E
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755732594; cv=none; b=nqEC4mCpk73dP7Hp9K7F/sUIqUpEfqYm6tO80FYSicJcjSOEY6mLGl+osB6Gz6vpswCG41phgivPds/1ihi2u+2qW/ZyhdCViGOr4U/duLIAxuUtPae8/8oR/4J+8H8J5csgINYldEZ/6qYhmpE29vuLn5RfMzFN1w3mbOYgZVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755732594; c=relaxed/simple;
	bh=/+8cGDL/Wr6izU9YaJQ8+/jVWjdqhALMxclzDtSCngw=;
	h=To:Subject:From:Message-Id:Date; b=M1mag+c4msOGX7rnznHTGzNJMGp8PViPZ8KPasbDs6RagZOTUsrePMRkX07w7yDV+EYeugpzQRwJqsFwpuxt/XRrN3DKoNUsY7aY+uCIuvIdR0v2hvidJQP5yS8Lf1X4FIP3pCuU+CtnWsrYq78gC9JCV3BOaFokwbdLI1TAb6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uu+caFns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uu+caFns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E670C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755732593;
	bh=/+8cGDL/Wr6izU9YaJQ8+/jVWjdqhALMxclzDtSCngw=;
	h=To:Subject:From:Date:From;
	b=uu+caFnsV/KNq6AznJqmbKLjjG2NtcjWCP9ojk1yJqpfTBMUTfXl4Nj3w+rvMSr8u
	 +gV9iw5RSomMzxUgA9GB/LrhOyDV6cKAn8OelLa6eXI1lqkhKIZglX0I74e9Mh9MgS
	 t1bRpa8GKr6x4J+KXN9giyybba1W0W3I0QIgcS8RkVYdaYeSqP9NlaiVMnyAV7ebFH
	 eCDampuLesEhrw4V8WT6WH60aQBNjg9NqfeJtD6cFcHc5DuRp9fCe5fxwh23uq0pcs
	 KbjVDgg4r9rFpGNVgec5SrFT9HJjlpqzuZiETdZLLTGpl4VlDtwuxEu87SCBmChvM4
	 jO796fhBeniEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F37ACA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175573259357.7454.8348846024348881845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45e649f36e9fcad26680b3c6c76d1fd965fe10b74e77ba85dd5ad549fdb9c63
Date: Wed, 20 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755732593
