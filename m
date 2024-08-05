Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E7063A
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722828954; cv=none; b=ZjdH3WpGlRm9zTBwF1qb4wI2QUAAZxhvjyvCi15MTFvZj7GUQiNJ+MBd6QBHZWof10A1d2oXs4onbQsYqaKggF6ZLjmA0WtriEozttRDET6fVwfBKZELtqLbdLAIFWcLY0trlIqoVxLAZ44IR7hh8R96NT5o/lrUPZr3ZZTh0Uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722828954; c=relaxed/simple;
	bh=AYcg3EozIgR17fh3heK5L8zF1+cT4HJsdg+owGfKr/Y=;
	h=To:Subject:From:Message-Id:Date; b=bvxzYaHYARQTpUpsv1yz7TUg43LPfnbhQL3VTetEy7hl4KEN0rjoKLjGcZVsK80b84fn2uKH1IHX2pRKzb0tA8i0C4qPnOGuYbCECDC43saGnM7mXxB1ZZEVosBM9pU9dBgB7Ga7fFHeHu8mtjNWTuEKzm9ssxSH0v874sgYy7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shrQ839L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shrQ839L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5B7C32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722828953;
	bh=AYcg3EozIgR17fh3heK5L8zF1+cT4HJsdg+owGfKr/Y=;
	h=To:Subject:From:Date:From;
	b=shrQ839LjxGQHz2CwvL7r/28oFNPmdzUu/pqSYOvJ9CIZGWDqdi5eHVmoFNNLDOZX
	 j49lbP40BglpqdAlxvQ2qAiBMRn4CLxDV9PF83k2GhgJa43CfaqA7J1ChvwFuWyvAR
	 cih72SQJgb4hCr3yIY5iJKavAVFvPs+7BXU9emr3WcPUuNo5jSgQ0lRua3piWLkX4Y
	 l3O7tDXPvgwkOJuKXy2bi8TO7zrnjsuHO6N+3m/98+az/FdMH9S5AQ+c4eumGKSvi7
	 f4UiVB05DXtT4kSU6116UZkaOB+Wm7o6m4+JcVFvgX78WJEAE0bIeaI4cxHlUJd/m7
	 cQz40wShzoPLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97264C3DA4A
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172282895360.12543.16668223382297500985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e7704d6c32373b1c0619f8ffaa9595235a5995c54640d762f7a9f3a74201989
Date: Mon, 05 Aug 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722828953
