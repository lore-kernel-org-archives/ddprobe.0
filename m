Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9D71F92A
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738620954; cv=none; b=E835L0peihDoctukP+jB/oLF9NDDqmWTxquOnsHGkDPbUpsepBWNIuDrSFhJCbzDySpjnKEOnIFKDFrK9+csW5gZ2GNNDnjiX8RYBxadEKxWTRaun6wgvJJhRNtYxOHGKl3RMqAFRo3H6cg1LcdLj/fFWXM1pVDItU6qtvsSnBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738620954; c=relaxed/simple;
	bh=+9KEa3Ie6iS1bONI80PaakUYB1T3UDy9DO34JlPjpAQ=;
	h=To:Subject:From:Message-Id:Date; b=uMjcM5BJQXEEf79T0ag/DZdZvsajuQMBt79OKAu4VZ+DrmcJfVzz9tOL1j/QaUixJXSsiU+cIFw8Qsu3nhsTTr5qtoFec0WAjmh/YqcY2cit0BJQeORdOKE22LDrDfIla+FncdogIwvRh6QoFOlwS6IuLOvVSpdEbj8qEPiD6m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m955XnUK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m955XnUK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6525C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738620953;
	bh=+9KEa3Ie6iS1bONI80PaakUYB1T3UDy9DO34JlPjpAQ=;
	h=To:Subject:From:Date:From;
	b=m955XnUKXNoRcSiNhuXJ+k5328axUg12lkDt8GVH/bZzoeGXVAFyMaGnh2XU84ME6
	 z7VobSZb+itWO96k4Xd8LW0CE11q8lDfvFr+Gsm/43AHZMa1xvAa2jHmrTgnf6RqHE
	 dId0oKz/+iYnFH3BPG680RJ/TC0l5Z1FzJMzjK0XQAyIcE0ZBU+bUrmmgQ4QnUZETA
	 kZzswZVyXqoc+0MoS7oJr0kfYwrcauuYEnzoCgZ8pCMmLs29IdRSTEN0YnXPLNSOk9
	 z5ghmS9pg2BDon5XGFYgAyzQlPcuF9C6+sB4p4Q40gsOr20gsGrAHNReaUQqVjNFW2
	 p39NBCzR+HMXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E35BC02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173862095362.15528.4278088143386775590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc65629b7ebae845061b1e5bb15d85377699af8a93bd5bb88a78401f57aa7604
Date: Mon, 03 Feb 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738620953
