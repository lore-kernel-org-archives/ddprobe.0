Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0872366DDC
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769885033; cv=none; b=ioHKsPyTT8CSv7pfF1cijVPJhw37K4nU8PBYLcjT63ulME6AZZxOR7LFbK3TR3feTdqz5U/K+ONCzZOEYjvbBcbTFvENipchtgyvLp+XPdldf9ErIAfTHTQHnL1cCn1R0pFsjWUHf/zzjxsix/67QR1zY6VN9KCd2vBcvqtiDCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769885033; c=relaxed/simple;
	bh=LMbzewGiUvjDNUXWft5k/5RVCCVu1c2JTKI7vRJ6djE=;
	h=To:Subject:From:Message-Id:Date; b=fPX9LcPMGPyuVCnRYhDahuq3z+lbyTgQ6LTkraT1oFllXdK6wH0LWEbiq9UxTNgALDF9PasTYTotixwYF+RG/2LA9rQVjo8Hfmq5OnOGyCMrdy485xIZNccbBBQAw94Ju2mDE44XHggvvTVTM5LmHdQ8c8ZAHLDs2QI/0GyeD+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tk4YZFUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tk4YZFUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A546CC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769885033;
	bh=LMbzewGiUvjDNUXWft5k/5RVCCVu1c2JTKI7vRJ6djE=;
	h=To:Subject:From:Date:From;
	b=Tk4YZFUsDrfa6+dLLKXU1hgqI2m/6O8toDvECQl3djmsSVcOyxFVi8eHS9D2pUBPT
	 tVeeywTtbzNVv0cQfwZuhVDncQNyKuSwAh+mxTXwB8cKcc67Tq/5RrYqExi5kHonTJ
	 JnioDdTHDJKyungiP5ElxJtRO06zSgHselSFpkKSbbozmyob+H0p4Ii9CisEjMCt5W
	 /nMGzOiN5hLdwu9n36OkdV8a1aoI/7p//cAP6gyQEIqXPA7S8lz5Xc4FFc4fpUaA0p
	 MD18Pifp3Loeeg4PQe849IJaf/AcOWOEb9d4rRnaRsmKh6JadXc1azXvY0Ac0KWS7G
	 S2EGx/KN0+x9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9734FD7977D
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176988503358.26107.7244995117189029780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7e39980023ea15e5aad998ad711ea21502b7bf9accd9e36aa7e58f27a088b2e
Date: Sat, 31 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769885033
