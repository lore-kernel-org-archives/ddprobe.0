Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2E41A3164
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767263634; cv=none; b=lalQq4H2LfEs0H8eCOTgR//RJXmE+kR13jrwEA34uKgFSZeRNPyR8hQYtzTKqfNnyeTQCL9XhO57Lz6uP3Gf/kc9WSA2ldPdVKYnO8ONOlzkZWfk4RwN0g6AnH4+BaTdnFHfPzb333ERf1/Q0E7ReLNLsH5QvKLCee4TiJSB23M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767263634; c=relaxed/simple;
	bh=L9cIGhXrClFi+TbbILPWqFa1lNZvqRj3xuJFzL6zoVI=;
	h=To:Subject:From:Message-Id:Date; b=S1tvDs/AwowUOmE6ry65iOZJ2b1YmIYel1JomiaI0ZoRsBG78/Ydrf2IgmDkvEiQBZ12ht0bHfNfoFcvbBhleQ4jH79ZchnYMrV8BobsAThJkIwgQxZ3mAWJqCESNXCZu/Dy13sV8G/zj5aAFWXLouBme/7dKqrM50BGxEYB5Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZ5PPkzO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZ5PPkzO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5392C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767263633;
	bh=L9cIGhXrClFi+TbbILPWqFa1lNZvqRj3xuJFzL6zoVI=;
	h=To:Subject:From:Date:From;
	b=CZ5PPkzOU0eEctAnI3URz7UlsDZwvJeKu+5E73r+kro5oJ5wGbA46me10NEUNyLa2
	 OWXsEswR/94023Z1rxfkET+2M160lOyzly4wLjLK88igjF1d+fG463Z67peHYpCa0a
	 uF6pLxFoWepS4I6n3pXxTrEvqa0ABgCiec6aN+qYfDQ2NcdpiujTJRBx0Xl02rw25A
	 6d43fOr7skMoEQRNj8kC9VfvlSeFPnN19kgueA4yqVfe4p/XYoZ5z1/D4XfeWuqe+y
	 gZHFDZoX2czvbIgdBXwZBktIK2Wnj6swRMo2us0RBPgpc9FLw3CqSEy2yseA66gL3w
	 HerOgQJ70cpjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915F4EEB57D
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176726363357.982.17670853068163489567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8af24f995b3abbedd79bcb5541b345a36044fda7ba6f8af30104c52cd7758b1
Date: Thu, 01 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767263633
