Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17ED5239E80
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767066234; cv=none; b=FdTMUUz+Q8KUFuBQusoY/qv/lMX9yWrx6VYAxu5l4fphrBLqBfO6g/nYaFhqXMCWLS9Dvdhm3VEyQMIl6ttAb9sF7aMxcLoSgPp87dN6S0wBnqYR0Mpkz2YkAekltmsxOCd/KWqXRg7pp5GIJVHgcS8TJrZzCJclYWgAefGzudI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767066234; c=relaxed/simple;
	bh=Ej9bdm6JL5wfdk0hooqeGdjo5KuxG5EkHgBmUhNX54k=;
	h=To:Subject:From:Message-Id:Date; b=ZEpmb2wdqS/1QPRhCWAvW8G7TtyitnKgZF9QadwAcSJqRYOKYQXwBEj6ue1YXhpUwWZVw9/ySNokG1/Rl9aAgMj0TxdxOr7NZLnMD+ywsGGjhR4rHiKSYmZqKCdCOMoracd5zLKb2I8pCKm++amxrxyDJbQcNdycgJwLjXWR01c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAmUedj6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAmUedj6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A407BC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767066233;
	bh=Ej9bdm6JL5wfdk0hooqeGdjo5KuxG5EkHgBmUhNX54k=;
	h=To:Subject:From:Date:From;
	b=qAmUedj6tJVuuRV186nevNuzMOnTZB7YD882mkZCJFqedHGaX77PPAKdItSi1W5jQ
	 qGyh6pquLI921LHS2n6/ur4BnGoWFMSkryvws6lNbN915TWe7i44fILckYSsIQHrS9
	 9JUFUAO9oCXIIGEUlEyFicCFqk3JsMYACNmMOTwm4lfGZRBUjxrvq2VpbG2wNr17t6
	 tw4wkMaj1YhJasgibyhk5rWNMYbyMwkt2pLJCYSxh8rnfEkZviNJJiaPW/uLyXBfuI
	 b3qp6o+KYdRPHWmbgTnmPmTzZVaPnPWKVqDNKDloyHGuKOqaBb9/Ifiix298O7zlqU
	 pS6fXfIXbP0qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91090E9410A
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176706623358.20107.384385450829898150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 462328fe54ebdf8d6de061d7c707a62d45087a5d466da1e5b0f2f97c89f9f605
Date: Tue, 30 Dec 2025 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767066233
