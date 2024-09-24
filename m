Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CC42941B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727197554; cv=none; b=T9Q83UVUc3rv/gs3KHSq3lwY8wK45nqg4Zz7XelJMOzI+rsG28/69T+dl4FJ1JvCd7JWCiD8JiBGsBoc/1nS+4cY6TQUE2vnOqUFXysc3mjXbsvq22Rl8CQuICUirkCqp3LX3e4DjXjux3f2uLZDmnaWyuXQnSdCtMohds/tvvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727197554; c=relaxed/simple;
	bh=tQSlwE3SE7pW8Lz/hb9O1EHlc4UdVpyFKlUAIstHngk=;
	h=To:Subject:From:Message-Id:Date; b=ljZeLCyfRLyH0sFlN34F1H3sLEuGpqcr8j3LGNkYl/mlpid8O5m2IFhHm9m7O8fG+EuMS8tq8Nv8ruxn0hn0uJo8XKUJzvSTu4aeojaaXAD7BIpLvFfi1vAsdZ7MwftGmX8WJeMXmReGI22J97MuBGdlwhMroQoCi+KgJtyISH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBoaMAAU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBoaMAAU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19ECC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727197553;
	bh=tQSlwE3SE7pW8Lz/hb9O1EHlc4UdVpyFKlUAIstHngk=;
	h=To:Subject:From:Date:From;
	b=kBoaMAAUDuAuY3SOxnyA9aRWBwefI5YaAOmfMUzSMUm5EAb/21yQLpr6Nf1CaM5Ua
	 kF7nNE8WuEGKpiRAGAqCG1jYUpaEnL2tlrT4QndQkiPeNzCy0YebJh5hQSMEzsdi/X
	 1PvGjk80FA2mgm1E+9lzo/coLuS3kaMmPH/E8DKiwZDZhIy+D527nA5Ti/3f/n/cFe
	 02gsR2f4aUXfdxlPNylrhs7Gh06jhyK65r1FeDQVCJEi56ZzHJ0DB7L2qvZgUvoDT/
	 yxjOiaHLPL+RgFeSB8mfDG6g6/nO4Yxs/YfByv7SqsfPQ1ysZ8L8tlIPGNH7gO3M03
	 RZkc8kA1g9jWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AB1CF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172719755358.13417.18124537337431824520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad96ebee3550186bff353a13f60da76076b7ac1bc9847756814329a15b534889
Date: Tue, 24 Sep 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727197553
