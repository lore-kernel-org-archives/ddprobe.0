Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D38E28DF1D
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744712994; cv=none; b=K7PKxamPN/wLyEbTPvMwjML0H2CvkNcGxIEPImgqGdLpJBfurfxsFBKJeVBaCz+aGmLHx80VbBZME/fAj76k235dU9ALBkrCEsmdM4UHkOlwamHPdI3IHcGSkgeMaWKX22SZGlsNJGm2yJ7+/INGo2OnM1YL27Cl0JE+kYsu+tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744712994; c=relaxed/simple;
	bh=UiGozSb/z8I3xomY7+X+u/tUTvb/7qtt0zvny8YRju0=;
	h=To:Subject:From:Message-Id:Date; b=oh7iURvqsAvhIwUjqBYjuWrsug7DfrWyVWVYodNWn6SeqnRMvcKrUe1ufgKm0GEdr+N66JEJ4hXmIfkqKHppFXtAXPX6Lm+qn0KWvCQd/myqHgEXBk+oL4dvoxWHjGxK9BQBmcM0T1TxSDmSYKtQ+O0+hkmQiZJ9w+Q542onNo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/KNOm6Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/KNOm6Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E44BC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744712993;
	bh=UiGozSb/z8I3xomY7+X+u/tUTvb/7qtt0zvny8YRju0=;
	h=To:Subject:From:Date:From;
	b=j/KNOm6Yk5VbFAjzOfFGvobdlW5gUoIGFi7yO5TGFxR0+rJ7K6gLQquc+vGv4ZmMQ
	 889lIS15w2kn0x7+ucKsH1HaIM71hO8prb5Qs//wNfo46NRiVQq1kjfjyH5vG4vlTM
	 nzvDKpO1ZmjgghGuT1ME+13q1WJE4d8msYiAGzcpYK2rG0QtN264RbVxSqYv+3wQvf
	 KRA/DKLnk/hitNgndWTvryxzXraK9Bt7FAIC9Vlt0osgBBy9MiSMPuRSD/tnVS93qN
	 t1AftsAFH/asZ5ObDarfZOcrx6713IHXgcc2Qalmqu05ihdILgfzzivrHQ8oPEtFrK
	 qeu3/kb/v6eag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90078C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174471299357.2388.6619395490141613684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f46a86bd483c1e5c6d503a9651c8bb9fd5b240a8064af10d89217ce25f048b25
Date: Tue, 15 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744712993
