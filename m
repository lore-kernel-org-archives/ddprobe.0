Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2405628370
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728759954; cv=none; b=puNqS14a1DKV7TiOb0JTCL3R/fu4rF6EQT26jrPeT8islHT/w72M+69ijRt/cO7brXAw2gjvs/Cw+tpN09N3WJQCAZ5oUpinqdU8qYF2bsLsDeNtX4hLvy/Yjo7Z9VlhiQpZ0dzn+AedCA/hRNBDmd906Fqv/Bx2vqZH6yaHNCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728759954; c=relaxed/simple;
	bh=cBnO47S601FEggNkYSP8I0cTzzRC1nRcKrQ0dP4boW8=;
	h=To:Subject:From:Message-Id:Date; b=AecD/lRSHida2WlzlNh7GtsJm1NwYgyBd7ZdZ9Xr4FRw0+12ErUbDkGwyBWhO9zIXljf/e82jPC+dsiIqmkbAJQNjlT8ybf/Vp2U9I2/029v6b7gZp4Cbkks1TvG8sJJpM1D8Cp5cpuRl32VnU5DVQ+bjnrmXCzsLAC0jsK/5eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+vCAFlW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+vCAFlW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9797C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728759953;
	bh=cBnO47S601FEggNkYSP8I0cTzzRC1nRcKrQ0dP4boW8=;
	h=To:Subject:From:Date:From;
	b=E+vCAFlWM3MM+fn4Yyx1si7e2M6s+E7F9uEhIDrcF0Vgurk7OekCarjlqAjE1qjnf
	 SAwLUX8qQPlwApIEyiBaCKyqbkn/VZjOagSpdLWBp5enXrCEa/N+YosspES4ne/UkG
	 xQ0b5yqPt39h4JRUFuWXuXVrJvUpCc3rPuNxUha2hEtlf3CjTTvdV7pAtMRpKDAgfK
	 NRon1RctWrSw70sMJYxGmv2WRtwCVi0o6YsLiyY7RJM6aCkGXqTXRyKYxhh3nMhqod
	 6grusCufVyRjTi04bhCzVGOckl0NSWYJIkAoxGCM9B66166s3gdNbIWxO/LhsNZI9Y
	 clMxCbMthl07Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973B3CF2577
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172875995361.23585.12595871725301265931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baa7e073c555d6f0d2999c614665c8e1112c3eda27fd107efc458ee4b2e92464
Date: Sat, 12 Oct 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728759953
