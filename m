Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AAB04BA94
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 20:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717705643; cv=none; b=KyId/gc0EMekwhumTBUHYjmYy4sx5xLzmIzRqCYa2iIL3mTv9r6oh1zGWYjK5r9dxtctq2Xn+SbygjF267mkkXgIy4gxKO7Onj9WUzQ6AN5AJZ6mqytTYwHkhGH8qspvO281zwCtPBwCLlbHkZPfOkWwqWDQ77kuEXLK+dvQwQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717705643; c=relaxed/simple;
	bh=sKtKLL9ozy6tnLP28rrJSh37b1488NuYtQ+OP7TDjxA=;
	h=To:Subject:From:Message-Id:Date; b=o4eSjOj62ou1r6y6mLkpcFvQNf9wBz2KL8GDd4SeUAxaLXwxPTK1VfnYR7V82Og84sXJXLqs4omTZS/iFR3FvP9lUaSio6le78F1+MuoEIDXcseynObzmmW5NClcyaeMjGJHiqECL1bERT5V+ZSDJdS1Lk+A2b0mBSAJ3zCuwzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGFMrcdd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGFMrcdd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB1C9C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 20:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717705643;
	bh=sKtKLL9ozy6tnLP28rrJSh37b1488NuYtQ+OP7TDjxA=;
	h=To:Subject:From:Date:From;
	b=QGFMrcddOAcuqy3NEfzcDv53Qe03skA3O0eEkMARelojlfENgfHUrtNAoo8XSXaCo
	 hAFiljjXuyUHfugqmNx8C48+EKUdfKkh73CKA0HQDe+qmhZbYqb/PTKHlZdth3SKgQ
	 NP87bKDvNbcNCpP9Ya34Pm8TD8Ys+ONbzL7pNUNv2TvvMY/BLHDrWHMW55vzMZAa+Z
	 SatPB8VsNLNhPI+1ICUVzpzUkZzL7O5QR7y2VOBgNOHcb80KaVEpxO2Pvnk3Ncf7qa
	 hSPQlyImUvFoiPnhEbXwGiHfX9eZ4L1wYfkBcFno1W6XX5X//wfqAoYw2JoKQY4qud
	 jP0vbx2AtVjag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2A93C27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 20:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171770564279.26201.11181273395164248727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af5867e94000f6bd7b4aa869614f46c10f9d709539b73c8a360f95c0ab2aca8e
Date: Thu, 06 Jun 2024 20:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717705642
