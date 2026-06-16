Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA8B3CBE75
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 10:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781607394; cv=none; b=IkkwSjnNjfAnE8cBWbcU8/QhutvUhBj8ACjtw/Uislzy6Ue0sZHrDtsou9EXfasc+xYW2zOl0BTLfNK19QESEHV5nWAfVYPp2FL4tcNilMx5fGZ/tn7/U9JDwfAF0xHtX0lhkgv6D0D40afLcJnGngoxCs284lR9gLFKJC5ne3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781607394; c=relaxed/simple;
	bh=YRVYxWryBp5dJPlzgZOZAiXLh9gaueuwCiyfCgci09U=;
	h=To:Subject:From:Message-Id:Date; b=gNDtpcI7iZB5cCEBymBadfBBzabqClkJB9pJ8f4/BUmfX+UDy6Nj/AsutL4nRT5iToPNpa6iS3+2LJnyFpChJ9mBblCogdpCWHN1yDSNAMPA8hUe43f1URP9Tick41q8cK4Jrg1nvVZise048g9OZFyyELmVuIApm5vFpUo5kX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJeybpgC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJeybpgC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0C5C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 10:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781607393;
	bh=YRVYxWryBp5dJPlzgZOZAiXLh9gaueuwCiyfCgci09U=;
	h=To:Subject:From:Date:From;
	b=eJeybpgCCdHe/Bav7q1P9s3/TY4dDRQJ5mKqX9zwemrpmq8ET7qJlys8XafUnJQek
	 xevjRJnOYIUASrtYC4aMAkLStvpCZN1Ox1EFehAyvUqM01L7LMfmpqgxjxGubrif5y
	 csSTdlsOvtO0s+vZT1vY0484xIywa+6xIkZJ1j8qNLo/iF81x0zgMybu9658+cGzNn
	 h7hJj/KCzK+7RzyAQMV5Xnuf5/VYfGwspvotyqUyomnnp7bIALMLeAZBiJlteHvPsr
	 8BtBECi2Cv61hqrY7qr2M3KxEWdC0q7btwBzhe7emdiDDI9Vbk5QtD3VC4rQj/n3vr
	 Xg+lxwtWyRyFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21C0CD98CF
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 10:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178160739371.30180.3445986947293927011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2690022d7d40be7c66cf6238b14c09677a918339b8d2b4bc2346aee6c2410eea
Date: Tue, 16 Jun 2026 10:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781607393
