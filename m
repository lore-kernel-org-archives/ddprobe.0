Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2265F283C9D
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755897594; cv=none; b=REGJ/VWHVLCdnd8iJtWPgfZVVUHVi2ZIeAaLNINzG7pxfzVKQDimJnzytdm7NixGDdZlVIamj4EJrFqx+MiQfxYr/b3IwtMmh6ubczgpxvBfDJ8l16MSCgAjKNlwVT3ha98MsS1rfhlL7xfOLCjfYiVus/Q61zVj1hLeXMnfdmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755897594; c=relaxed/simple;
	bh=KwtMcsaPFe+BN5qlvG009pynPWi1agqdwwaG9r57XXs=;
	h=To:Subject:From:Message-Id:Date; b=hdkZJvTyc9L5B5ELaRh0iNmia6i0wTBMlV40bKKYdtDLQwtFKysYQvgB20/jsn92LaJfnquG/rDXTKj17ZIgPq7zCOLlI8qId1rrUBMW1auUTsd+EP6m2sw7Rnhi5cKRAEpIsBqUPsAtcILdKPaf2SzcxHorg3UV6lqT/nO0Ezw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vep9Iw33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vep9Iw33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FF5C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755897593;
	bh=KwtMcsaPFe+BN5qlvG009pynPWi1agqdwwaG9r57XXs=;
	h=To:Subject:From:Date:From;
	b=Vep9Iw33zJP3m5mvlDLcIcSfjT/onpKYrwQSGuJvIowoWqXuwY//8D/OkU4aXGK1i
	 rRhg5YPhofhxJoQHbCClo7PpDnej1sggUOvvLxnP1/axyBJ+v3t4A63Kv16tFpFnM6
	 VsArzZonfNM6ITa1fnOwAdiRd0eGcVUK3sNWyzKpZsoR/09xvmyUp1EFjiYEeJRnKM
	 EMtbRyw38/brOaws9i8Re2YpkGS5FKPQDi3tLHsOyziLO20RptIoGKeVi0w4ulGEaH
	 ELiruUWCT0JXPahzqV93xeoX7vHjxrWvh9NzUEBcBtzR+1IeOh+9qgsYwHxnPe/TSr
	 NZMH74HxGMxYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BB5CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175589759357.21582.14448211546792043864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b04cf118476ec3938de6087c4e3f7217b2e0373367b56e7c9a6c21646fdc6afd
Date: Fri, 22 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755897593
