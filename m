Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164441C84DC
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 00:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775089534; cv=none; b=l+A5D7R5b8BrnIUgOdy38FNjHhSEwsH2jKPjAIFSb8OcCb/bdaWbzGNxCeDXLHmfEdLiiADVexBA1iSKy7sW6axOqVFLOXlgbtD2F4NdwepeLf402s2CQ+WSk4PEJAtCyNd8OUB3w3kJh/ocyTp8ejTpmZTiF6mcEcd0dZX2L0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775089534; c=relaxed/simple;
	bh=M0LASyb+BQ/GxlTj+s48JL2oGHL8F/9Pb/08ihRQ4Q8=;
	h=To:Subject:From:Message-Id:Date; b=pgXufvVx6vRBIIlFTYbNUIe3JtQXy16Pe5v759Myowng51b5DscudX5t5lEsMcIJdmeUUpFGKEelS4YQ5mpvSQKny0li798GxXEH+OZyW0ZXBScCFRUUPcaBVaS76WQMTF5pqVrTqYe9tElgUtCP6PRQyfWmcgUdb23AcmJ6Jw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/6PZD/j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/6PZD/j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27E1C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 00:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775089533;
	bh=M0LASyb+BQ/GxlTj+s48JL2oGHL8F/9Pb/08ihRQ4Q8=;
	h=To:Subject:From:Date:From;
	b=g/6PZD/j1KSwj6/72a3k9JyUMo0l+o+OObtGWVMropLrxmp/4vgzSLhbYiuTJEVAh
	 hCa2v8X5wKph+NlnvprnHAXqGvpAw/2z6oRTIyRzc0lU1wEzjHE6qWJyg2FyXw1PUW
	 akJXIkSSg87KAaxmTnY5wRUmXq8zFqyYu7ctXWAKDb4Fv0ICeF77nSrGt05vqTux31
	 dSIRvLsP9RNMV+5q2OXhoPvVlr+qs55QUuy692c4f2oe2KH1C+sfN7pQnAjV045dah
	 vQg5+QMPmc3WKnK8nNTn6fEssXZG8M/mGRqeAVaBi8pzcSu0NbyRA7J1GZjmHPay7T
	 1NdqQ/zF3RXNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD3D1112249
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 00:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177508953369.9110.3259282412771192650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27eb5438261e02139a03aa46fbe064f32132012d775b97c0013e5e5be25359a7
Date: Thu, 02 Apr 2026 00:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775089533
