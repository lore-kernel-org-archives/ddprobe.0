Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D135A259CB5
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751567993; cv=none; b=Cb0c23h0mZsRF7zPtkmOF0RySPyMVXYWwIttPGKsOm2VI1ctfYi4FfH4Uf5FfO6V97KBfDYHkPYyQm8Sp+6jkMZNXlCbs5qNIVDzx9r1LtMOY+rSgpKYH4UX2ltONKXPjHYhvzDQ5YZ4qVs1WwYUX54rydjpElL2AnOxvK0c6WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751567993; c=relaxed/simple;
	bh=05xvmx+pNg0xLyTaREGm6r00AAeUaIyTlBQNvasNCmQ=;
	h=To:Subject:From:Message-Id:Date; b=Af5w4iNGGIVvfuOwKVeV05HM7Ohbzkvdwk7WrHPPV0GQXG7iiJAoDgcZwcmYcZ5Po4mD6wAtSpcZbwcNnHBSqBXxeO/bDJ39Bb9CfuhbPKC4V01bY47fndtnLkOT1xXfUroGQMlhxaQ1elmhpHczZzkaxzTWMZM5qVbcgT7HHB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJKdFEPH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJKdFEPH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7322C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751567993;
	bh=05xvmx+pNg0xLyTaREGm6r00AAeUaIyTlBQNvasNCmQ=;
	h=To:Subject:From:Date:From;
	b=LJKdFEPHEUyvggSKzRCO1FANhFANBwDJri1XR2uCxiH2Sfh5qI2pNNtkRjIB4bAlD
	 jt2A3VRenC242TrdZCwWAgcocNL4JJ6zuD+bhEXppCI3tlvbzV4ODHrTzbKeBqVBZB
	 DPBg5aIUfDrNuUOjGlsZPYwq9AzL9q1yiCyi5QBooZ5O9V9Ro+xVVMIa8/lGNEvvBU
	 8qHTy7N8D/DkShU6zrMZr6wF8x92LbwFNiRENMM2uZkqOUKsMGv7qIuY8NQ3ILw5HR
	 L4e2kH1Drm2JG3B+Hre3lQ2AJI6fuy3xJwVQE6DqFRSS+Cmjw1+Z9rXcCQH05rhhFl
	 h07qR2V+IxxCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9435EC83F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175156799357.28926.7781990895575453083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1083a63a2eab45816cfe1b3e2f69bc36139760b8dfa1d63dc2f27f51764eebbc
Date: Thu, 03 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751567993
