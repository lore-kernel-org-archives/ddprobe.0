Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF70941D231
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787824235; cv=none; b=MRwBzd0xAFtqPrWl6f4HYxEWIy2P3q6/gYXVz/AglCK90gp+k7NzVviUJMPwgXV2aHAIz9H1CykWFXQoJkCu+Qbng6NALJ+OAzCPl4RYtW0dg8/JeAlOADUX3coJqEvrl1XO33FO7PWvk0hbCgEJLPtvbXAqtrBTgBfZyLrVBTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787824235; c=relaxed/simple;
	bh=JBVYI/uXLsnI0LqlvkWTuy+wyfxoQtkn5Ytu7TEacJI=;
	h=To:Subject:From:Message-Id:Date; b=Gu2lSWaKXT+PGuFAYpyaX0m4FwABLDufOMyPc/qbR+yXF8YE2BXtSlZplZv77ebadVWecXSpqpZQBgDI6TIW/yJe+QzGA4VoVqBJByTdXD7aXugHh/tOYFiQ0/tp6TXqKIZ+rj4TvXIYlUmbxWXrF2lP1BVns2WifQCFj2OYCNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hd6mjCB5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hd6mjCB5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDAAC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787824233;
	bh=JBVYI/uXLsnI0LqlvkWTuy+wyfxoQtkn5Ytu7TEacJI=;
	h=To:Subject:From:Date:From;
	b=hd6mjCB59xtm7AFA2K9IylyHPruK+HMYyyHirBBVqffVtxu+7GOtTHajLuh+jRQKD
	 PRK/JJye//B2jbKMkEqaotMZpWrLcuP0VEGhILj8BzWl2rEmvEUftAEOUKU6ko6DTa
	 +Co3DnS6Pa7KV60/98WsV9VyIy96n7YCaZ5EIZ+1Q1TdRPmlraaJghKVeZTMlKT0Hn
	 qtf39stCe6wq9zCvfMxpb6a3L9YR/ciMx7ITTqp+9FD7fiMDFGHnHN3p5SqSflxlaw
	 74sBy7sMK03JxGLHTNqvvgl0HviO3b5XEQ75sMdGZzGPwnsb/l5v3N/vyGBNJeOc2+
	 6gVS1y7p9HH0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA17C61DC7
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178782423368.18781.17961032089837544060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c9ecdea29859487baae25d2aadb097076fe646e61509848fb163b8ca6ddcfa8
Date: Thu, 27 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787824233
