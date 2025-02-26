Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4780321ABB4
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 21:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740605334; cv=none; b=V8fCHffW0ylRROPu3qlgHJII0c5PVxJXTfwyfWNqnSmZkG4TH6m1rMQ3+jgKUkgQJ3G1SezZzCBENfIL0bJ32pi0DLUKNGoAAMXFKkNKlkK5rPYp6S21iIgzZlsfpTiuqMlHH3uqWfjSMqQPZzKUAlxRVdu8Wq7BkweMV08QGX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740605334; c=relaxed/simple;
	bh=gO5lWwQiKO5CxrpWdcB47gXHlkqBuV9qJo3jE/uSnZg=;
	h=To:Subject:From:Message-Id:Date; b=ETGaGrK5PGS5UGndvwKvufTGFNpt43g9Iqoxp1s3k913jWCO7EJNP9oRbfy7AulI9qhBPi5DDR62wbGyfNYASi8hfHCMBTZ8pkGbSecCo9mvGGmMAlV2XXlcJjDG2zeALkjcmboSx/M6VtjyFFz36sXGLzVxre6o1rC+cTnHD+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvKrgjzr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvKrgjzr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA541C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 21:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740605333;
	bh=gO5lWwQiKO5CxrpWdcB47gXHlkqBuV9qJo3jE/uSnZg=;
	h=To:Subject:From:Date:From;
	b=CvKrgjzrOLrZRrrLU49ZF6ilJvdPeb+r4Ii37qTnEg9vWoKs57ithdm1xNirw8IID
	 /mS2ktPs5Dm7mPBvnXdk7KCSojoHbDsWrJvWpKpZBNHQu8611bQ3vbNXtWfYvQkrnF
	 a5gFzKLG3q1uZ/lJs2qroWd5KwTzla7BXXNXtyTCD/AOTLIeL2cwxjefoYbpqjQ4nW
	 p/bX6n90ssD6P+UpE7hpZJKNmk35rAtn5WnIDKoG/CavPEo+yoaaVMoPZQa0e6Zle9
	 rvIgKTaSRtqwtM2HQCWtEtnMFYesh1TfRb0A7xNz75W1Kg6zZw/dwOcyEGBmFGLi3Y
	 IDuYeHKZrS95A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC80C021B8
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 21:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174060533362.25091.5039396851343221657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bcb66f2759dbfa4561249680a7a8ae547f0f36b6e1a86a72bb80137a5a0f4ba
Date: Wed, 26 Feb 2025 21:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740605333
