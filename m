Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4795156452
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 09:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720430783; cv=none; b=bvMem5WLKKqQ1tZIxXeAHeRomFVu4GzuhgJ4ROSWlTOA7HH7cWUrX4FRvvOyxOlMhBIgVASb4L69SIxWQJitZYFcQ3qQ+bumjZmLolXq8foHVJVp+DZ7kbEmWlToxvgh/tGdhwv/ycnsJJbLK/MQJr96VMcCjYZCaJtZWGaOL64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720430783; c=relaxed/simple;
	bh=PBYNomrzOWlz1r1jwGD6pHPZJ3ZDhYJdlNW7hpHq05E=;
	h=To:Subject:From:Message-Id:Date; b=nyoLo2LQxnYvR1ljd4UVANOqNenRz5bkjLvlfr44lp/U2lX0AleaJvriYxhMJg1m8Vkit31L1kL3W95f5LFXzvJoGSBRC5hT91FAadH39c3H9oys0XqN9Q84uIYCSPjFUeP1d9vJYqOe0yyl8H/fVwc92YnFse2iT8CYdOiyXDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPOwnS/M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPOwnS/M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9FAC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 09:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720430782;
	bh=PBYNomrzOWlz1r1jwGD6pHPZJ3ZDhYJdlNW7hpHq05E=;
	h=To:Subject:From:Date:From;
	b=hPOwnS/Mw8VzTa8D6Bir2D3dWyXK9IFHe9s89aycYJAR4lUF/0xDQW3RSHhtKAR52
	 6vMMBTws1cp0pNysJkb4CO/f5JCskjkcdg4RpxhRIGneXMH7pCZuERgt8IsukwKa7P
	 DGqQaxxrvYU1frZdQojDA64Gs5WtWBjiDnOObaWbML7O9p+y2cINfF6qpeQDrJzu+k
	 kXTn0n5/8j0/x4NoI/lLYiVCyG0ww1rIMPpS6qF0r9B3IY/J/FCiHyuZURaAUm4oZO
	 +JgCDKm1Y3CcgZl3Yx6+keDoTDK9T7uTGK+BNfddXIku6HXk8bUBenECFIPTnWxvxA
	 GcS+WZqPDbbMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD57FC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 09:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172043078276.25205.7141817699131707978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 944e3e4f882bda3296e77cd0583a602be22e03e90a17bd79038cdd2fab217708
Date: Mon, 08 Jul 2024 09:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720430782
