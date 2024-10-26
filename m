Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27392AD51
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729965954; cv=none; b=GtS52WYrDYgKrqbgTowtApvoOo3IM/k8ks2cHFdOY3mlXhelq8KDDoYC62JSxa2CdHWQMN1z0KP+ObZ2RBNaSj/ueLI4tTnZO9Q5VdCGk2DgtVu0D02OCMNUFJmA/xEmuYRJkeK25Xa7GP7c80NCC2M6EUmzqWUP+GoNUhctF2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729965954; c=relaxed/simple;
	bh=SHmQ2FmrwistkJkwT0W3iybod8c7NtFqrgw3UywMzh8=;
	h=To:Subject:From:Message-Id:Date; b=t1gLi/36TkVzzk9tKQRFpeCEBbObjwYdgst8MVEGBUE+ND5KQcI6/sONxokO6V6mFLlwwiG3cV4bmgtVmg5d7qO6V73VbNA+5USSD/OMb7aG9nqMb3ZCGomKqXoMUQ/voSghLtw6WNkWCBKr2WN/9ds0ltPlWh3GZaiHKOuLIrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y/ZmkNzs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/ZmkNzs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B026CC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729965953;
	bh=SHmQ2FmrwistkJkwT0W3iybod8c7NtFqrgw3UywMzh8=;
	h=To:Subject:From:Date:From;
	b=Y/ZmkNzsKmINyjEqaHyeoYr0ff8N3bJgJmCAqjh+dPX7nqBLxHeEXDNpttX6bk2zO
	 FGM6SZ4IzQtrMOIMpp96nBsLU5nuMIKrpsXUFn6oWPQOgnjXtmLQG5UIx2Bip1jmJe
	 uJcSGAOSpyCvLhm54V74ufIhJwfDpaK8Yn/QTdCQVtMA3cS9YS7CI6kPeySno8mmH8
	 RGErIycUV/QjAWbYkpDHszw7d82JO5kdSLOwhREy3tt9NaB+5HAaxCbvRgIL7cyqte
	 aYTlDdTu8sTFziR/zEVNkNL7gpadLnFFpGPdK4OvxoSE3Tb6yxcsOeb7H3+byAjR6w
	 8w+itl/cupYbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A121CD10C01
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172996595361.26599.17005638415570299800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 523a497d8ed0c7178858f35933390d5e6ad7b0625feb52cc3f38d5a5e5c68d63
Date: Sat, 26 Oct 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729965953
