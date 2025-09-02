Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE4026CE12
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756846194; cv=none; b=RFfx7SxgbhZ0K63xQBZNn0Pz1yPFJqXBVe5zTBGyjfF3/J0urjkcirwriDEyV1HF0hg4s6cxwPbaqN3mnpxTzOx2l/CrM+Tq2Uyodo+swktneebLTDSlpiBNsvPsT3gnuRI+sq3ybH0I4374EsXuraPw+vQpzQsCFJnSTTZFY5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756846194; c=relaxed/simple;
	bh=8jZOO+/PC+1xdOy4YWgPzX1DazK6bFTANr4MelBEo+M=;
	h=To:Subject:From:Message-Id:Date; b=h69Tmc6Q7wXQ6ZqA4QC5WDpmC9Fsy5LPBCsM9EDCmaTS9JHl2+yzmwLJwPDQyg5HOtTkJ7q6+sevnCkCKLWt2n938UYnf4rZWnLK9+f28/gCrja1e8GvPyYGjpXdYNEuyygq9KVZzy3bEJMpjzPbpkX3dlqoyl+3ybCwP0kR0MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fX+HClXA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fX+HClXA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD60C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756846193;
	bh=8jZOO+/PC+1xdOy4YWgPzX1DazK6bFTANr4MelBEo+M=;
	h=To:Subject:From:Date:From;
	b=fX+HClXAFEyfgCYOFEFJGPlhWAtwRNDpzZHpMsUDqO8go5kFztanXT9ud/mF7NYW4
	 UAXVOThWb9K0UTzmW85QJzeWX7dzgDn5AzhZ0bZeZGg+Iu6XpLJ0BtFwKBHlqKbiYt
	 DNEQoKdQHY8BAp84VZ+JijWkDQhGCRbHJQ8Pw2xLu4ZSihGXJH/cO8i/bha6yuCT6j
	 Bejgt0pXM2uL2HpdUqSyn4BtksupHoW850B+2a9W2u804EW+m2Pn6OB8tjgPBNGXo5
	 I/RfxZVxnLhEkyyDOxOXeIk4S+7GS9gjJUoeheVLX1jQaRVlpI9c8qFPniB2ndx6bB
	 3aUc95eSQ7AQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D01CA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175684619358.9792.14345499916248495408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a204274d980982aa30834564d1999ac79101666525d86c82e9c9213b0f7b182
Date: Tue, 02 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756846193
