Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166A71F192E
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773866094; cv=none; b=SMUDUhKLYOTUk0Y5lQSDDmkIXatv3ul0GofUDOewCwZWUl3XBBGQDU56IcnvjclSI+MT+6hAy5R59wq1ywqhsGj4KpDCkUI8CwFLrBXClijHeAffINffMf9UfonLHwv8qd4POkWve+ZTihK1lM58OXisf7wnsbZHRNirl7NbI5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773866094; c=relaxed/simple;
	bh=3U7JKTy3gb2EQBGP/j++7Gblkeo3M+mYVtJQ9B/HUWc=;
	h=To:Subject:From:Message-Id:Date; b=rygwdh1+irOzPpoIDRgwLLVuBwHV8boHP4LJDc4pCmdlml43oXvcfLbkpkJ+u9dkduIAAmCxnVKtkM14UK8FXaq7MuRLMHk3aCxfyyiOKy8Cm4fo4IeiEzHWIqywWTnVjvTLk1KTc8jP2gZ36Tpq/yABm5tU12Dk9Zzd3rUpsX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxqhUZdt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxqhUZdt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B286EC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773866093;
	bh=3U7JKTy3gb2EQBGP/j++7Gblkeo3M+mYVtJQ9B/HUWc=;
	h=To:Subject:From:Date:From;
	b=jxqhUZdtTKG2S/8Px0XU/8BSlF4a1c6ZuxA4zjcYpKYHvMt4GU4avK1jjgdq2bWNm
	 Sr1zAUyaVC+WN3DApMfocIAfNbt0KMdS/HGKNPGcLAFHVojVkmatJGxfSdOMzimjdr
	 GL4nF3HQT1fTRymiwF89S1mmViJyYPmmthOOfDsvPQyEkFC0f5fX0aJXCPbu5ZbqSS
	 RsbtSrKBr0nQMVYCJGSzdtCpVfxesE37KMdXsn3NSBZn1f83SBXv9sb6cYKzshvsI1
	 UAqwZQqdQVqQhFhpCUUFe8gBEc22Ohz8zW5IDjEh7rttOFZCCFZbYpLOOafzJodQtc
	 +MHX21mNr391Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0D81077612
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177386609359.14750.13799098928672285737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1dc0d1283c34b3371484b8b021786880c6c8062661d718265540d267d6e554
Date: Wed, 18 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773866093
