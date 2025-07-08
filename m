Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E2D645
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751953194; cv=none; b=CVp6dd6azXt2w9H8wey3YTFja8G0BAmHAtShUrk3HQprtFyCpH1+SLnvGLr9fixxrNgqk28jYR6gQ3ZzDKc5s50/fF1PBHTxN9cC8HlocLe4sqBX2M8lm7r3SigNapIowmAIUXU40EOQdNq1gGffXjvJGbfKN1mxjS9X49WgssQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751953194; c=relaxed/simple;
	bh=FisWhvVUkJoFh7lOcZ8eWlG5+5v9Mb1XItaZB5OV7Rc=;
	h=To:Subject:From:Message-Id:Date; b=qadbtnyVzr+jE5rvFtuY2p+2k5EzRufVsJC2c4NLMZzJSChtqAlCTeWsd+BzpQKi/ktPuWJHvI/5T4QFNvxxLnPcp/ZKHO8grmKg4BfRPZjgJioYUbOmH7YBWEzjWFrVOLXpoqL+WMc7nIWKECwwt69QqDzQyLxBKuLm0coANEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVhOROys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVhOROys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1215C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751953193;
	bh=FisWhvVUkJoFh7lOcZ8eWlG5+5v9Mb1XItaZB5OV7Rc=;
	h=To:Subject:From:Date:From;
	b=JVhOROysaQMNJ5UgQM/uIIZnhB1+iycV5W1bmT/rbz5nxjwl728yZrO18mTZOCPn1
	 uOGs5d4m3JwamblwpAFTnlSSVprpgbwzyV8TibVeEALkiN8U6L1B9R23sT0ECLJnQ2
	 6sWVg/nWB3GKYY3R4Ec2KPzDzOrQk9remtCPtC7+zfmA4+hs08T740TbXcsfV0Ee6P
	 lk2ip/EyrP7SMUqOQ1mL38ULsdrLpiYhKDyFYMnyD5M5rD0a3zF955C71SbfArIESy
	 4gVZljEEdLWgK9GewOILg40HDx7yFmlcKdKaHrkzyuK3R70TIfWg8dcEngaMIEFkV8
	 OjjOpWhX1JESw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9E6C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175195319357.18831.333385033929747547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e6080d4f9eb795b9dfd2d1073a361cbd1cf4529537bbf6cf18ce97a463186fd
Date: Tue, 08 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751953193
