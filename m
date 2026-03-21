Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D68C38D6BA
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774104294; cv=none; b=oLkNz+GDdMcVi0IUauGuCUG4R1kWJn3kqqMnUR6IRjn03rG55VkqnQZYGTR6ArRKlL4mhkbS7OlmTejoVVuhKF6eV8w9fLYkXmd6ZaM8RhmAJDIa/a7hA2zgR4AV4PpSKGp5TTow8FXcl3m/oje9HMQ5gSq1y1RNESU8299VNTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774104294; c=relaxed/simple;
	bh=PrkM4vxQHBzfpdQqYSnhIBE6aAwijLaPrLp9CWBSIpk=;
	h=To:Subject:From:Message-Id:Date; b=pYtXW/RzPuu/iRPhNRN0IMxTqk1pszFokkkrPiCUXA/bZ4MOqFFPNGZX6otl0m/pIKxG5rcgFCecNx26TXfGl2s3tBhrLNP42QfKcHMbHquIsHsSQHzLJC7jP2T9oYMG6AtfvRNg3EKewp286GYzRSEIgXp1JBZCtby/hkcrsV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2/SfX6R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2/SfX6R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27B3C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774104293;
	bh=PrkM4vxQHBzfpdQqYSnhIBE6aAwijLaPrLp9CWBSIpk=;
	h=To:Subject:From:Date:From;
	b=Y2/SfX6R0OLkuJzBr/9JwwsWGDQbWn2If+kCoKH+HZ4SSKuwKC8OSwUB5anD23KRL
	 0aAIjW3aK0pPbmzTZpsotVCkJHwL3uDi68Vzw/5FHAPF9sapPBm/e0oy8E2nOXXUJ8
	 sI8MRvPVaLDs995xPuXpyv+OIRsx/fqifN905VEtGvcwHmZ9ZSTywWPH7qRWWRk7t3
	 QbnBaGpdxZfQexT6WEvqDFt137135NJQk+udD73Kq5aY5bq5P9Fy8wFzWDXmjOcUb1
	 RBvDbX07axpKFSIaCq4eJyRwqRb5jO5kWoB7an5DhwSRrU22vk3JHTym2guLwLQirY
	 5xCELQBBK245g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E868109447F
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177410429357.20073.2503372495334651945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e8f809b00e203012d08ef35989ac82743d2fae7d1470ab725b12451f721141e
Date: Sat, 21 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774104293
