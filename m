Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443CA29E11A
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789347034; cv=none; b=Y6IjpBqGlEFbBqc5L1gL+qC8LczFAgTo4BWu4yYZ9nWGGKXILuF9zEbbpcygew6u2TMUPHFl4sCnuwChshisR14p/tXUj8tGfzQAlNXQPwIYOBSw0GWva4kLe62lD7dDEuAQ1kpPt9Z3H6xI1aq5o/93oAqZKE0jdYEm/eMOP08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789347034; c=relaxed/simple;
	bh=6XX8v8zZaC0ZvRhIkJdPIBCUjQt0DUhmHn4S1sH29BQ=;
	h=To:Subject:From:Message-Id:Date; b=JpLX93hsdhYwKSHxE8AAqBZfBwVnEr/LbSqLreCe0CTere503/fna8/Upu2xLEv0sTFpMNMLUXL154ZPx22bJx98ogMjpipmsiKlKWKn+Zr3L/X5h27hYk+HzvDcQBt3hDg0zXUSmosOlrNBcYGIDWuvizUcRfldotkYtm4a3T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rs0Cpwbp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rs0Cpwbp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCECEC2BCFB
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789347033;
	bh=6XX8v8zZaC0ZvRhIkJdPIBCUjQt0DUhmHn4S1sH29BQ=;
	h=To:Subject:From:Date:From;
	b=Rs0CpwbpNsK5fpZUfkLmAtM+wGBjr/Mxf0aKnMKi1stsreSj5BsebHJ8zzaqsOtft
	 bX8Uw0VHys48HKy8tQzuP+q8zjjBF/fltpThQ2gb5BZ6VXoxGyjDkNWPV5qD3wGIAu
	 Ifpfh2A8zIwmJoG7MphhAUvJmUjYe0Vyfe2NGxnL3pYc1twZRHUNNaKAQ6NEJ5L7oP
	 Px/wLis+U8m/s5CN54WMtdB3RR0xt2dM6L4LBkzd56hQNjJdY8bbG6mK5pTvGZJL1N
	 tSx55RvtDS9Z4HryuZ8W2jL/IQOLadSKnnKvaoQg9XI+QC5ac2K9JHw7EqvLfciOJq
	 S/nhCEuA5sP3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA17AC88E5C
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178934703368.29469.8842527617117610218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43320172dfad6ea1e8f8481d0fd4f97488f4eb03b3062f4c512887b38b9d6573
Date: Mon, 14 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789347033
