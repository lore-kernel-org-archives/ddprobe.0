Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3492338FAD
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726920354; cv=none; b=Q1qdis52mW/VsBNMm5vXGDQ7hABykoeRbivYxa4mdsrVilx+XboDACcj7VOw8BgU6TpUE2NeNCv7uL86Es8O6IzHnm0WuqvTHxg3LqehGycHKehTgPi7AzpahZgzCQsiKDwbHSDaQY760lRkAb8Ya4TjxkovX7vMR46zwIrGOV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726920354; c=relaxed/simple;
	bh=Je+aFVbstHzcwvJSHQ4uW5S853HpQk05wH6iHySm4ag=;
	h=To:Subject:From:Message-Id:Date; b=R2ic4KrDpDK+NM5koYT+nlIsHlxI1Q7TWmpNAsXUixRj8glFLXNubLnZhlCTqRLYGgGoqEYHNIxVc1VH1n/SQnrbhhU0KjwCHSUqZdLO+/V48IzSSes+1V7YI56FIkSFfLThnhjuOHs5qaQW3oSFfYbizWQMpVb+Sub0AilVyH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+81sTi6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+81sTi6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6024C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726920353;
	bh=Je+aFVbstHzcwvJSHQ4uW5S853HpQk05wH6iHySm4ag=;
	h=To:Subject:From:Date:From;
	b=m+81sTi6GnOLogCftJa0nPIc42gDIu1mVAGx6ht/X3EQA/btBmG2nxZ9V1LXXtaEf
	 mmGOegzmPJ7TsBG/yljdLZsrOl7d3JvT5v3gh9Y2bbt0kpKY5P3xMHOuA0xn4bt6zp
	 SmAaakewIb7uipBINT0/elOTdgpfhVgCUpWQ9XWJ8KRaT+PvmjG5xnhS4wCqdY7W6I
	 IyPDcBRTnXcZdlsOMcqJbW+sYWv7Lylr1+i11gnccsUYmE8anIN2MmBl9mPHyGS6q6
	 5bqRI+pjiWszLLzmytSZSHxrZ9f62lcACiL/gx0gapOjK8gT9RvrsxRPX3GUdhVpZW
	 vbOxRLo2iN4cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A14F7CF9C69
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172692035362.28184.12132176946689361477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c41df620ce8cd56e391d2ead474a54e2994d1077633030b405ce7a85670fbd6c
Date: Sat, 21 Sep 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726920353
