Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52ABE2417DE
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 21:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783805314; cv=none; b=F/UQsRxcnfSi/tpskpaFYNrHzHE4RfezIsE8DdBmC99SLW2UX08hjSjYCXstWT3+OLGCuKJKps9yc1GcBolp5yy4XreYVfa6z2TcwlWqVF5gVmF5Z/YQwztwuRh4He1kW+8SxbEYyIDqPNf6+fEP58ZaOIwkM+Qw5pzOOInaf2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783805314; c=relaxed/simple;
	bh=LViC+mKxqTyQMrtxetkD2Jr52wsS9PDNBMp0gGWYW4U=;
	h=To:Subject:From:Message-Id:Date; b=XJId+8WJIM8RR5ICzA/RWJ48NVAXr03zb/K9I43rRDv6mzhOmKKT9oNh11EYpjXBCQrmK579Xu/AN5EQkqGQEyO+dGzCX9yGiAynFBnEdjrsSSWDhnEUw7Zqr1K9tJatrj6l2cWJz+Nfl9M+sRjmHSJKjGZhGNXa5hti5SGmfRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/JPKvmX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/JPKvmX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78C9C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 21:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783805313;
	bh=LViC+mKxqTyQMrtxetkD2Jr52wsS9PDNBMp0gGWYW4U=;
	h=To:Subject:From:Date:From;
	b=e/JPKvmX+EwWRxkqqAm0kEnkFit6JJqZAJZema4LAM1jcuBkgzOM1xyJKG2DQMGY6
	 GlfT+B6PqC8r0W2cG/OW7jZykaDYWHz93u0G0DvaAzAKO3ThLWvEWZOG+1GCNWiW98
	 5sRpxHZqFX17fSzpCkItk9tKAUNkzVkCItAe8b9yNm8k+lc7UV8vet6LxkOAdU02wV
	 3ZRN/BwQ5ZGFiQTUKWocTLQ2CdoX+2eMr504C7f7mpC2TWxtZr5D2ymi6LH3HRRbkC
	 VCVBlyv5yoD6HefTdgYNdBPzj9IEVpaTMpmkrqjB+VPImGS+3QGRmIVekdLIbVVcJO
	 hPEKuOtcH+owA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE71EC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178380531368.12008.5579201529911784901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fe9c3a3cffa920bc56575266ab7d0151cb274e3b0fbd5da3fd22fb4dab6c8b9
Date: Sat, 11 Jul 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783805313
