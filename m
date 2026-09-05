Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F48732FA2B
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788642034; cv=none; b=OxcHaFWKisLfbJgJEKpiXqKkxJaACwJiyKSfJoRgEgFVs7jJD33ncMXq7sb4/5LBtnSzuzBsKheARrxWgWIQfEU1+/izsQjaNE0sgnGQ38IQpoAVsNBExett3vHG4tmOj51lfzx7rcu5Q9sNcZwx8B+fqoMzYSs5V25EPWmW4ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788642034; c=relaxed/simple;
	bh=rCnJ6KgzQ3pRYusE3OlZNCBk0Qu4yj5DO8zHOeAMONI=;
	h=To:Subject:From:Message-Id:Date; b=p+FpXf5RpHtQ9HgNlKkBW0cw+WjaNrvbFLPL7ZzLTknu50Vn0f3EgWzW05EP+rzsuLQ5Re/G3Gkn9I99MkFug6/QbgzEs+i6TBZFaNDpDQlLilWZ+w96yTreIkBQ2cYp1vJMiYWyaQj1xB1twHM0sDW5hMxYVLZiNXtpQNwJtOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYpZ8ryf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYpZ8ryf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33D4C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788642033;
	bh=rCnJ6KgzQ3pRYusE3OlZNCBk0Qu4yj5DO8zHOeAMONI=;
	h=To:Subject:From:Date:From;
	b=RYpZ8ryf8kmx6EC50APaC5YBTXfnfUhwwMWyb/BNN0dZhSpnn94axl4oG1QiRDauC
	 TxdFG5i4ijcUqO6uiDSyS4pT6iH+hHwlI+lctx+efsdYlVuya1iUU/Sm94OhezOKhv
	 ys/qHPtJ1ptHaLBMxLqwC5j3Ar+Z3MTf8lYHosyzzLv6AFge0ScgLIICQ0VdLmrIgZ
	 iiohM3wHNc+Z226myDgqMHDhAZrwQVLMoaa71o/TT9G7xU7xX9sE+odgPjCKhYKFxd
	 p1Hgl4x35LkCmVTK6yBXgINmMharAa2wHHBsF307B772VKvz3RbNFYMh4T2ijRPOWd
	 ro2TLq4yHDYKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B105EC79F8B
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178864203369.31143.6573186403650422513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe7d3f5c0dd34de1a8c12301e5598ee069877cb468e2765e00c6f2340af56175
Date: Sat, 05 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788642033
