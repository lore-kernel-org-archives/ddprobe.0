Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3AD2522B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744640394; cv=none; b=RZ4gpVcPCLcQzShuru+YgETDS3wvYtiOOGYJgGlDr/VGKSCM24tuQCLy5Oan6uKTNsHN70lyJ/MqTNesdjcQrSw7Ta9440Z354VVg9hYKBcEkRA1jFZm0eWpZJ00bHGtGEBIs744i2aVEA2vQaCewC6ILQV+1m8mFuUXiQglsi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744640394; c=relaxed/simple;
	bh=zTlGHR3CGjRQekJGWE1+hrl1vebovjF59nk7xdw1nsk=;
	h=To:Subject:From:Message-Id:Date; b=nmbcdDEIOU8trlKrvKTRviEVvp0ezqwIquhXNw1DSkSoTFBug4HrRyOuUhMnKj0Dghb/FLoBugx3AM4JKWctaw729Uyr+Z55snl1kN30VwEjnA/ukdGRgxMn7Lt0s5uzX39UPYXsH27f+ot4qHAydawiMUmh0z51K1V/G0dOpeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=beYCRdk/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="beYCRdk/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F9DC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744640393;
	bh=zTlGHR3CGjRQekJGWE1+hrl1vebovjF59nk7xdw1nsk=;
	h=To:Subject:From:Date:From;
	b=beYCRdk/7VnmMn+f2rGshlYj0Yx+tcVZ7NTLF4G51sAR6wrg6gdEAKV040WZViO09
	 nI1PRXV7fyIfJ4VGPmwB+e+hJsr85A8uwdq3OGuM/S/J7nZOmDikEpzO3+hrDHjDVT
	 83nv/5DFWPPK19mE0iFA6nGrdJdKIrZkxTaOhSZeIVN2wuz0TBWtL+cp3QK5cGMH5d
	 1qLPp+YlH+va9g0U2PplLWM5+Da0UTs3xTJ4gdQC71asBt7iW3DnskMaQhiuGeKUBM
	 uVR+tqbVLTY3dZCU3ji43P9I0MhyWbOlqaei5pTyYt9GMHYmhcP5vxoWT9YWfv3WoK
	 u9opwVI6C+5AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F65CC369A2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174464039357.3185.11568785629482242883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f7fdcd81fa3077d54c04d53a4738e36bced5256c0abd043baae9843cc6ed891
Date: Mon, 14 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744640393
