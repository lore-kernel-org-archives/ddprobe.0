Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6072BD19
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728089154; cv=none; b=XC8frBr3R9ObgvcRPZepEEESdK3hmI+gYiiUm6qF2yHE0Yx1MZG+Rt2eiRjehhZ2TElwJ25vnTpsEfF4IF4n75xvFeWjDZR+TdE7IbgtmWPHKNFAB0hm926aaGt0MK8M1dEAptvIHp2P0GwOWGbonOxJeRuGmUxAqmdSMhIJh7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728089154; c=relaxed/simple;
	bh=BNSsiezo5NUm3jUGJaVFpI1l4ZmWaKpHczJgxVOdblg=;
	h=To:Subject:From:Message-Id:Date; b=tbuqEwndzguGflXi8+z5hwLVom1k+I4zhodjDGcSaQOaKWEBHSpBzylIGjKJNLm5TRevuhOEGqHgROTXhV/kGX+t0oloQQ+ADetvm1Hyr4Xf5VGVVTIKhGuIkw+UYqj1DwhrEAkn4vIuotAu6F1QPbyjoz6XG9K7tt68dvtde7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OpAPm4EU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OpAPm4EU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7E5C4CEC7
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728089153;
	bh=BNSsiezo5NUm3jUGJaVFpI1l4ZmWaKpHczJgxVOdblg=;
	h=To:Subject:From:Date:From;
	b=OpAPm4EUi4mI1IbtMbetmXZzrS15eVANSBfBcnAiRvDpe4XUeZlXiYPVHef/rpevU
	 uFWd6lerfMZ6V2eCBmG8R2+YanAztJtYQzOV7+dkD5q913MK33OCgSQei5ctkceShc
	 xauB4OHEv1fsqGj8cdsNqdusH9N1wGXkdCusJWDRnljXVoFpIDesfKs7xXBN0YbthJ
	 h6mXMZthK47esfsrYJFmM0oeS9Kv8ZBy5d37wc1VTpbnqh/v9hQbE8e7Q0XUaSdKSe
	 kFmMMIZdeFTeeD9N1MjQk1cCOuSzURxsig0rBi1YECmRHfyZ9gKG9ADS6TSOw8wltR
	 nWUfDVDoeN7Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E307CF8869
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172808915364.25042.5972208007684587729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c70dae31111ec3d4e22b257b82fc81069ce1986ca8268b8a95eade17fb9fff65
Date: Sat, 05 Oct 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728089153
