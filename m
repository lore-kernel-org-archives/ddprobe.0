Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCA51FF7C7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 22:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764196374; cv=none; b=UrIn9sqs8LmAAn3iH82UpeCJskTYZRfawixQR22I9yyWet4n3qrBw0WgXG0CsK7iNufTvY5HqLGv8qclXKPPbaNSIgFFxsGhKYbe8rU0nsO/y+YtOYqdf4UeH2VHPrU5rUNa+yI4JBHPobXb9ML+ECE9fZasP/OKAqSzHHgfBcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764196374; c=relaxed/simple;
	bh=9TcEC7VsYHsbM8l8qBmCLJf4/80DXmzc3sQaxixZdis=;
	h=To:Subject:From:Message-Id:Date; b=cCyUhZ3zKAZmIOsxiIT/d+JqHX20uFdYNQa/fZknqH7UrVuZQDzzNgST9xQ5SWAAJHwgxxQlVLvz94/frQe5ljJdGPAgh+pP30YSDpOQ/stZK311A0Dy6dDPmLXtlZRP2JsHkmS4B4BX6L646i9XeEdR21n0wsjPnjEMj8iCUXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dq62cJsP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dq62cJsP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2141C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 22:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764196373;
	bh=9TcEC7VsYHsbM8l8qBmCLJf4/80DXmzc3sQaxixZdis=;
	h=To:Subject:From:Date:From;
	b=Dq62cJsPsVn79gMVIfalcl3j9q09ePGtiZRhFDl3kOBz1AAnIfvSAqfSXtJXll9l1
	 bsItp8fIhbOvZH1RQjNo4a/Q7xCJpEsVMgTy6i6httWqWGbOFrlzgZKTxC6DeGJkd2
	 xXzJPrHW5kCL/cQPKC0lOTNv3NjedmhNIVHYj9TvlsU+LxtQMgzCQXlhsqm+1V3Scn
	 sE7d85J+TG3/FcS9WZhw2zCTefwEBL5xV2RhkJG8OWCtlgWw1sZH59yN0mBU04KPbb
	 8Pmkk6O70laq9G89PEoFKVBMF9JtsCLahv4rfyxvqZSR2utk7RTAQbBxeulaCoYkds
	 zZ7XtoRJbSNuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E162D111A7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 22:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176419637363.2946.1021925392470859606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2c8dcecee4ed20550bd6277bc24a54d7ee33cd897d6fd06c0806a148a1cc4a5
Date: Wed, 26 Nov 2025 22:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764196373
