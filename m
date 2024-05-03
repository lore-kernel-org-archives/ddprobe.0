Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528AF481B9
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 15:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714748543; cv=none; b=ezs+mPdEJSqO6cbKiy1vkusnkfutTN503ah+/Ac9C7g01QcjQWthX1OgS9yqqUHJ98cwe59LodsTDmPaQTP2uyPTWZENScf70Y29wqxPt4oN8Fy3rJewuPBPilBKN/J3idcncdvG5nTdQeERJvs2enFaJKtIgJdssxjc/xGI1IE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714748543; c=relaxed/simple;
	bh=DD1eBeb8SnXU0vQXNv993pdwl4kgRhucnXJifFpmS/c=;
	h=To:Subject:From:Message-Id:Date; b=mtkR1+nw1kaRQljj5ui1Y4TPyT8z2eCFDvNfttUWqIg6q/h8GPjDSHrw9eM7cBONirzT3FmQHJp4m3oaQAAHGC0oCanMD+jju1w95lz+6MKbySpaNTh/SQmiPUG1EsmUxojXj3uDimt8ant9QkkNT+52nuwOPElPZtlMXlJ+xfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwkwsWEf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwkwsWEf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF9AC116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 15:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714748542;
	bh=DD1eBeb8SnXU0vQXNv993pdwl4kgRhucnXJifFpmS/c=;
	h=To:Subject:From:Date:From;
	b=YwkwsWEff17n9dqukwLd0jufh78AknyVNwxB189jedldwvrNSs8lO0g8HG/pOhVXi
	 w6NH+fzpcEisK+mpr/1CKNEyxFJW1BgJ1y9lcpwbrdbXBlO+nJBa4LIANyYzPZdCDH
	 oAGGYdVcQNE//+XHJ4AlJ5s+2l9ZSCtUT+8jbVs1cfdlAzwcYB5q/bNlGNomfWjkhL
	 xjq7XuD6aBhHjni+i8QZg8Q160W2x4bOYtoK9rvjl+puQQO5i+S3ExxwGFekbNrEEg
	 QASUx+5OtLuI9ddHEA97c9R+bpkKeejh4/R7FO/ClUo7e34sq7z/ZHqiQYP/3Ybwdm
	 KItmkqLP3QRMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7451C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 15:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171474854280.13354.12066980308907557251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56e436d83f838dec526593d8a7a4aa33dda2788ce7d504dc294e1e4adccb7f53
Date: Fri, 03 May 2024 15:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714748542
