Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D86396560
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 14:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784126915; cv=none; b=YR1LO4EN7JqT1Gf4fsu2Yh4b1Oz14fXISnUs/vbJdmvCMWjKpXaCmQT0H+BW+E89WVy7YQg0cOHUJdKEsjgnDqLdDwYbCZQqlNo36QlcSTxA+PJAkGrLhbzhneL4sRovNZRWK3W/DqpscL39J4vtOBkeu3JfFA8o1mkJnXFuwCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784126915; c=relaxed/simple;
	bh=bIAFGKC42ZwPh2lUuNwCWhX5VPAspZaPOboi3qM0Nao=;
	h=To:Subject:From:Message-Id:Date; b=TWx85bG1azd8O7Xkai23LGI78Zgr4yjyVzU+Cu4J+xypWn1Fe1jO6ufEbF4khonTqPFuQvuZ5bgRAp5N5tlRdCLV6+uqLoxkzmH0J1GFXeyH7NQYkknE7SNZejEMaU79NpsBfAu5ercHcuMYZG7lMGMEXe46cr8ftkrpkguyC44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXw38eNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXw38eNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 023FFC19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 14:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784126914;
	bh=bIAFGKC42ZwPh2lUuNwCWhX5VPAspZaPOboi3qM0Nao=;
	h=To:Subject:From:Date:From;
	b=qXw38eNltYgiPQvJWw3gE/xlIYJ4L/0Io/mY0mXlA8j7nnLweZnlPCSxzl/nuziPu
	 uz46rQZg/3lMwi1XKo0tiBocNYgTKysaiSFXRU+C5DF/NYfF4VkMVd2s3LpEeozMbx
	 ccRPgutwedpzh9SbfYT7cHTh1BJuNvj+yeZScu82Tb9+++Lz/SX0bR4Yi7gkUjueF9
	 rX4zE3mlx9hBck3bDUMIVc9m+EEPT41BIJcfLxBCPONnMbuEwskaQiaWaG2bayE4M4
	 b3j+HeFQRq+4RRV1v33LEER90+AZ4Lg+BT3IUcT2zTxoZ+aeoFVJ/ohWAtoA9cE9AK
	 HkLleflsF146w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD82EC44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 14:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178412691375.18883.11338855351060579761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcd801ee02f2dacb174270f71a2415e27fb6d2da6bc544eaeaaf2f6eefce47d3
Date: Wed, 15 Jul 2026 14:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784126913
