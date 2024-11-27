Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12FC3193439
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732702554; cv=none; b=NVG89vJHW2Pz5S4Nz6bbLfhkgglZmPT6sALKsPnXOslL4MOdXvEkfgaQ7NA3zJdil/uqCi8fwJWVGYSW3yFcmpcVzRZD8fXoyfO5G10A3wh5kn1u4vwLlZC3YEGWhSVbsjp2F7+pvNCrYamCtIqwpuIUw3K9UrFrudluXfTjQ3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732702554; c=relaxed/simple;
	bh=zd/RYZFCefx5TNa3sqVwIKSk2xYpJc2jxH1/Nxmt0g0=;
	h=To:Subject:From:Message-Id:Date; b=jlyQHnhNXw+IiXuWBjQeYumdpH0LIorIlBHj9J5uEkdbDimuVFZifmjAkLjrB12orj1dfdes8ASvUCE8leoA3KsnfHXaB4EIzNpd2rItA7hkybfrKld6Guz6x6vTBjmEZsH7JaIA/jBNb8apU2DqpY3kxKyTaBpRLrTF/irf68s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SgXdBhkk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SgXdBhkk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4EBC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732702553;
	bh=zd/RYZFCefx5TNa3sqVwIKSk2xYpJc2jxH1/Nxmt0g0=;
	h=To:Subject:From:Date:From;
	b=SgXdBhkkDr8HJrR19tpsCyfvpIVT7E+CK3fEbom19kzf23GVyVYDRQf7XCC4E9b5e
	 JZapGkGVXX2KCaEbGldJnUBNFvIQK1Mdw0JbXJaR0nlfPrE8zoFb//kys7glpq8rGO
	 EsY02n2fklEMrn5P+H0utY4y8qnjWFH0eMj8EoJJXXCwqI+zIASlVSAxddKPNofM6T
	 kK7FPOwtxB+oqLMTCAm4QgdLCqnUEJSjGiLzvA0tHT1HsvaqXvo5TbIu6bPVfh8jwt
	 +S/FSjXmtpg7P6MUwWJ1FwlKZMCpf4Nzqb+Dzm/h/SBDWhVBbV8gom02DLeA2v38qT
	 ds1nqF+Vh9BXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FEDD609CC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173270255360.29629.8686453858806659110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adf1a8bc15b1e10567c2177bbe10284ebbfe1f8605e2276a1e9282f01666fef6
Date: Wed, 27 Nov 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732702553
