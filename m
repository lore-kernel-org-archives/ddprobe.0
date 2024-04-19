Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CBAC37C
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 02:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713494963; cv=none; b=HB0NqV2nXskideEhKlCsHW43uLezWIS6eVfpY7r2wcbWfcXpWRkBap9909wQZeY0YmKQ5/y2a1Mjdramxj1wNy7tyCBH3guC98VoFB1apAeEfc9qJVDqbSp3i+b3gvr789EjAvyIxJ3E9LLlOxI1ihD6uOYuErRdwfSPAfUKJqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713494963; c=relaxed/simple;
	bh=PY9gTUS9EzFpiz2iW5+gC6mCAM+lmnD8l5qkVHcZA+Y=;
	h=To:Subject:From:Message-Id:Date; b=mmU+8F+0K9XiJ7PiMW0K8x1QOdto/30+01WlWrB0xJ/h6ABZdSj549waivahmg0ttEFxBrTGsTRwesYSVOzDuAFPbzf12/Xy6A+c149XKn31zwFHWFptDD7htUZu0bZ4qlAbEJdBl/q7vi3YfL/gj27vjSHudRoTpDl3cu5Uobg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaiJO0bl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaiJO0bl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 024A7C113CC
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 02:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713494963;
	bh=PY9gTUS9EzFpiz2iW5+gC6mCAM+lmnD8l5qkVHcZA+Y=;
	h=To:Subject:From:Date:From;
	b=aaiJO0blWf29Ep4nXelRg7lwtZYPwMl3P+53tVzbWHo8ieA6i3wv2MtdICF9K9mCp
	 lRWS3LLhudTzE+p5Te7qn+MzLg9tD9oM3eM5gPTPqlD4EHAN2CkgiLaySIngZV1AFw
	 39KOf38s3Pq2XU6Kk3A5hWp8ov20LRwT0Z9LKLqhedKvo+NsZO/4AgdPGnK2ZGpwgC
	 EMgIqVNMVmbAi8ZRLq6BKWoJMz9iYmd2SAlUhK08oZXtDFJHFv6YsagHMKeR3hyFtU
	 ocNfm9L+jUU1I30tRWMDuYO+qQHEh624pw41vj6YM4baByMlMOs4gV3yTVs1URkVQY
	 e7FI233AMC3bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA9B8C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 02:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171349496280.16171.17766318928657894735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c867e103f0518cb697bc9ab10300aa7ba2547c9dde2622d4639ce5392ab339ae
Date: Fri, 19 Apr 2024 02:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713494962
