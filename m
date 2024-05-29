Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74A7311184
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 00:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716941063; cv=none; b=EhEHRZ4ks42ZoKK4ruP5/7VLb91HBYOgaCJaLeK3reYlz6TLEb7ZOMF95ndGqZn+PI/XxNeNzmYCX/4+3OY3RAt042d404zI+mkY6BxhXHksK0roov8SRyoY7P5lZES6gNBRf4Iq8kk5aloEAm2FRiYqAZOTT2LYTUixQBS/ID8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716941063; c=relaxed/simple;
	bh=++tatH1J4UZ3Pp59mHtnHEWAtu93jiiCOF7+kloz1tg=;
	h=To:Subject:From:Message-Id:Date; b=d73sKggVmnSRNF4mDjUYf1OqRL9sjKL9A0BpSES2vOuVOuKjZMBeNFKngKjdUaFocePp50T1wHYgrcwcjAAyyUi7f1gHJPW5fh7VU0lMEQO4AydhA3td7+m1fdDlfBguGXLYXSZclGsrWiDGHuCaaBGJDB81x9iDypa0M7cOX28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=binyNsqa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="binyNsqa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF240C4AF07
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 00:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716941062;
	bh=++tatH1J4UZ3Pp59mHtnHEWAtu93jiiCOF7+kloz1tg=;
	h=To:Subject:From:Date:From;
	b=binyNsqac1s1eadYhFqnRVTRXTD/mqC42K2uIari0zh3gXHSDp45btWTVcxlDzd1S
	 2FFEhT6ucQQOyX8lrLXV2mcmGpSNUJsqF+5UUOZieWEkmvKcZRyfg1iFLitoq4oiU7
	 LOpfN7LyrQgLDkTpWi39jiTIMBtab6TRD+f4K1F7AV8aQsyUOXlBkNXhtQxq7RNFqd
	 qGZXSj5W64nT3nR5QodoWskuit6E2vjSka6JBZN7FYZymZ/D6kvRsWAz1CAvDqm/4f
	 8udVqzMPWbuQHReWbzKWSu41AF2poNCR6OlBNC7SZFjD1NoqxhZxBrLVbKs2UnPLy6
	 hANjb3S0Y796A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5BCAC25B78
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 00:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171694106276.17606.7159586082266039571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e029394238f92ba328e939eb1342c5bde8ec9d1c4dec4be42bd0a30c64ebe39d
Date: Wed, 29 May 2024 00:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716941062
