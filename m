Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EA81DE3B7
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755367794; cv=none; b=ONic8pESF009zVVwv/BOhG69tAznvUHlp+0nGjpfYIZd4Gh8YH1YiCCL7pOUG7aaqbKyLcMG0gMwJr9YVUMvpLZv2xvk2dtDcaOzVqFKiroHw0UWbrhrKeEwWse8nqoTFYxrqmukGLMo72y4/DIE5pWq0iEaT7mZQx2WIrixwRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755367794; c=relaxed/simple;
	bh=ePh4jUmtuCzzyakLzQ3HhNv3i55XiFq9lkN5vcNUWQA=;
	h=To:Subject:From:Message-Id:Date; b=gfA6f/4e5kdGuLnVTeSnS1DN7ZOdQW+daTEynpsZNBV9sZfoHj2qAd5oq9GVdIxGuEiZSFECAu0Fhswb5KrP+A7wr4xEKlot3ViQZBW2mEeRTxjhWqd2ChNBxM48MZ/i9IAXMzLa+3RXphC9EYc4VDoSE55EqMYMleqTDKjp8gU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GC07mmfc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GC07mmfc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B9FC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755367793;
	bh=ePh4jUmtuCzzyakLzQ3HhNv3i55XiFq9lkN5vcNUWQA=;
	h=To:Subject:From:Date:From;
	b=GC07mmfcY0WMejLRpPJNGl+ltq2rj5f/3E+0fuapApMjZhIYCWpRHzinyjNK1Fbdi
	 QA2c9Vq1YCJEIoTsoKlTmVtp9v172ihX0UE7Jr4SQEI5qD0yQH5pLWjx0f2OIeAA0O
	 cNY72avuXUxcHLQ+c/WZuNRPpf8IZCvqm5/JQHQbmmo1+XBWbnaGgec/+rG1kd14E8
	 WKlgEiBN/O8y80PfqM+x41jWGgcQbKnK6FjmoNOf6sNBJoLHclu+eUhwLgNpRIFTMS
	 MSkOX0tKrMK52XYhr45rcYZ255UAoXi+NGzEjhkEX8RUlyZ4HP/AndVkVuHgGrwA7C
	 xVsvWo/uMXgng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9600BCA0EE9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175536779358.29704.13390521906283948597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d674d1e3e99f616d62124b08fabeb513b8ad21931c040919bbdcd499bbc3bd7e
Date: Sat, 16 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755367793
