Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7BF286D56
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759334994; cv=none; b=uI+bBpTL7leqKcYOqWbDbgTxQ+NU0K6Q+xW6IPBzORfhpwBhLdUh4C0BXPRhW601p+j7RONTy6GVmmlr7lsMFJqG5SjXFKxJ3yKAjMDYyXHUPcDdCnssaYDvG8L515PloqlQJJp1OinrJ3wSiOfI526cmPnQkjhCkpMvLs8D5qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759334994; c=relaxed/simple;
	bh=lJ5LdwLoJSwzH2gwNO1xbA7SiEWgDDRKnpkur9sbwDI=;
	h=To:Subject:From:Message-Id:Date; b=CNFwt84g9prwe8VFpZl/E7anoVme8e+FZvoT0le+y14o+VRRahYvOAByCwpaQkY6YJFa6fW2N50I1UQER9ju7GucdeZWYM5ffdqK7gvEDRcQsbkm4EOwrm9SzWAuh2egBB07UsKIAvMCvLn1sIKWqPwF4bu3ZnO0JDE/q8Fo8fQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNxq5j7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNxq5j7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CF7C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759334993;
	bh=lJ5LdwLoJSwzH2gwNO1xbA7SiEWgDDRKnpkur9sbwDI=;
	h=To:Subject:From:Date:From;
	b=BNxq5j7TEWlSFQe3522JhPSw6boirU6Vuh2c7YlWgtEm9nVVhUlY655fHb4nzxW9X
	 0RTZqgrJ78XMOOYLcs4ykVrz8beSvNpIHZlLNJCy11uAD9SAG3VUfgWob1Xkw6xitP
	 UaExxg9gfXBRl14+DOUDX+1Ujj/eh694Ov5RvsfuYujAJpoZYLCkIX3WOorkpzJV60
	 ZZjSf2/9Q5G0otT+crrqwPaIWzVO8dbQ8PSruA+zLxt5h+mogibQDyUXqpL+IVUACR
	 1qv9Fs813v7v7L+eklv+ubDQmHkStmqoMmaQN0HMSHu/dhc3n63fNufZU4f8D4mS57
	 249EkqJn0C9Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9298ECCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175933499359.21548.14737605635585984519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 263dee509d8cb0d206a047413342f181b1ab7f4ebf7833d3629d3ea4f9448aae
Date: Wed, 01 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759334993
