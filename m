Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8E5330D35
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 21:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780002154; cv=none; b=uojxcrqx1cI4wORa7HVXFppvnqHL8+JGqUZSMa3rd/9mTzNRkAhx8ZhkyDxYnb8ppCSoJrMQPZUQ5cC4/9hdJG0HddxgWwIzfBhrAlHXKQSL22Z2JwCGuoQ6I5TiobrSfhbFBW81EBas+ZLABvsssTl1fAb5hP35dEF7012wolE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780002154; c=relaxed/simple;
	bh=1H3PQvAQANt3uVpXKIbbY3sR93KpXiNlC7LSjHvnzhk=;
	h=To:Subject:From:Message-Id:Date; b=T6X4v4dAqgKMkfByxL1YdSj4Y/RDNxgXSxvVQf2wYfYRSa9P4XcyqlteYpOvcE0AGFUfffGdSGk9YJhQ3PNH22VM9jJlFCfzmoM5DQLX4+k4EqXnW7E229AKU1VZV7BVva/3fVHCJhBRY1fEkPZ4Pp6xIjJH2MTEj0KBpk8dK60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2g9wuVQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j2g9wuVQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF843C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 21:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780002153;
	bh=1H3PQvAQANt3uVpXKIbbY3sR93KpXiNlC7LSjHvnzhk=;
	h=To:Subject:From:Date:From;
	b=j2g9wuVQA2RrIp2Ur18EkaKv34UWw/UD6B7Ymt/8S+L1ZpouyXZaI7i/bFpGyTONZ
	 BRSl0B2AHojzUe6bmSfq4jgI8fy1fREYAH5pUNmgYlEH9693k0SiEuoIbUIsG/I417
	 DmtQHxkiirn0a1EFoV1KbwywL6G9U1lIvEGPYZyUW8TT/eoiLhghSQC9ugcOVAmZmk
	 szhbEypRt+o7CDhB4qXu0TkwlZKEX7K9qdW2JYiSkzvGHGeO3T7lZ3rkpkygBDA3tv
	 swaeM9oGPm0j7Ncr9iBYMOuBSyFOlLmHu266zpyKVyTK6nTrTxRsnW5yvbY7vNHzBL
	 Tf07adQjpcOFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04A7CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 21:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178000215369.6609.13566823897611737729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3cbce8ed5b4bbeb5902cf6faf3eda1ddbf81ef9d136d4fbe4c1466793cc56ea
Date: Thu, 28 May 2026 21:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780002153
