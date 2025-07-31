Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F086154425
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753988394; cv=none; b=s+48sA3JRILBQcZUHqn7ch475qmfDNwpT8FL6UNwMuJmBxiFAwDwtZfFhFntUYvFq7Ycn+Frz0bFwiKf7tf1gGFEMRpZV0t/IxZFGYIGnLQFLJZUJsDBv/f21+/R3AyfkcECKMBLMVHXwvJ/nRChkli94kk9FKys1QIV+y+pbno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753988394; c=relaxed/simple;
	bh=Kqdp18+4rZl81R9AAmqgJM+5vxULnmsThrsB05WFfAI=;
	h=To:Subject:From:Message-Id:Date; b=NfITZaXV4qfnDzCfJVZPIshtb2ANu0Uo2EwC2vseW3KEKiAtOg3LTu6f/gVkv5pPYjXUeY8j1tzu2tHoMIpDCpkFC13GeKZSXxU8pCDLi/BPLHuW2QEf088o1iuWQbn3yjXqpTj00VLYXhLqX5nslm357Lw7+SztFQ6nxGEGEB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exnLxCZh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exnLxCZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24A7C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753988393;
	bh=Kqdp18+4rZl81R9AAmqgJM+5vxULnmsThrsB05WFfAI=;
	h=To:Subject:From:Date:From;
	b=exnLxCZhFWheDn5yDy0X5TR0c1gFpFlICsnOrdzo52jYqkQe+/K0aL602mYA9TK0l
	 V6zTLcs3a4eOo8oyaPNqwNTy5YoZwX7ZcGUs4liBdPYo3tVBm/SzHt4HzKmmJeiFyk
	 kMi3VIj7WyE/T4LrMZ0gM+EXfUvZpUUTm9gpiO+8BtuewL4cGGa+NkGWiQA+ck+i+M
	 plblJh1WciB+4/CSDhfEtOHxEMRDrjneCfIcRF9QDoPFgpoxgR6mjNaD4sJ1rnBNhT
	 nnnnTkrebvd17NXGmS3uYw4wJA4YRXnJxWDHcQoKRlB48SbHpgFzlGNZ13E1KUmaEM
	 2pDRCTWjOFw5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA70C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175398839358.23919.743794028420588554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 347f7bb4bdeed514064ad5c28f7a76da975d0eb7311d3a7040c76bb49ce6ec80
Date: Thu, 31 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753988393
