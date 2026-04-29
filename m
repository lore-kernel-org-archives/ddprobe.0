Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16196287259
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777444654; cv=none; b=LH+QNuq2mpQ6mL3m3NT0JF8pBQW0zUbsh8Aq3T5ywjPUr4pIDOiArBS8PolpLdwVILz9L3kXe4jnQJbsvw8ST9oN6qpcc3ovY6mRxs7cs++Sl52aYea3qGNQblsCTbwkK2E1SFKaFQ9tGYNjrBxgt6xkJpSCglyYguEPY6tZoeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777444654; c=relaxed/simple;
	bh=Af/HQZq8eN/Xh9Fv39FTU78gjRR7T3VFLSRMXe6U3L4=;
	h=To:Subject:From:Message-Id:Date; b=XqXBE92BtU96BNrKsQl6wCyKcwPC9xWHlj7V1YGoHqvsatc0ZWx3sgG7hDGfad7YOPotQ5LoeC+hNeVl/WjmFkS/jBNzk8otAq2rb5zmNWfvWSMUeip9DXBKL0lXX535iGNCAWIiNfWb42TbNU4cEb7THbTJXmf7bJcryulqWMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lamQpL/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lamQpL/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F21C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777444653;
	bh=Af/HQZq8eN/Xh9Fv39FTU78gjRR7T3VFLSRMXe6U3L4=;
	h=To:Subject:From:Date:From;
	b=lamQpL/2MwJmvr45jDtceLqZJsdAcs7IP3K42qbA1pASWxSYGxmuK5YbhWEOXNrkY
	 AergKUgwKNqi2LISHiUQ9l69FpFWjGHePzwRBqxVZmdCIjJ05nrTfx+zKuc3F25Kei
	 vSy/oEDExWL16lz5dlmEqmEW4DK3eSHtaRMfHRJ49riETsobCKhjBYo0ONHJ/TMckE
	 S0y0MHHPxQIx4GIkVDeGcCezEmBUAx/uNwSUlAH36s4ahnrg4RJuQ+l8SwdQNM1Nfa
	 JsH7pRrsw7SuEkaGyAcki5B/Od8dNct2a4gMrHQnz1AG7bXhJrqleP6zAYF5rzthc0
	 iZcaMe1RYgDKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF63FF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177744465368.31472.3387911852431802166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcc1a9799a3068948b8cff8d5b42521d420b61a4f426124f2a7a8e30b7dd00c8
Date: Wed, 29 Apr 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777444653
