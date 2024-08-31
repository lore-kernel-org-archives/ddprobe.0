Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DC6AD2C
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725117954; cv=none; b=J0bdOaPibQTIojXHCVcxHCd5idfH5RTM0thEuJucVqqdlRiDRQnXhijuPdny2Kb6spfUif8pQ+/aXZZKdDgMs7Gve5kAJ4OVKano02puvCcYqJejHI32Y7KQRiY1nv4xl/JVrcDnA7K35jtJCsiv40afiW4TYpJ58wASclnXckE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725117954; c=relaxed/simple;
	bh=ZBvGynKZEaM98ma1qHROj1I0UXLDx8if/YC8PghCfl0=;
	h=To:Subject:From:Message-Id:Date; b=txkVwbhrb87dwebl8/kFBxjfJd4333jNHnC7v974A/LnQu2aPlFf9x2gLePcM9K5pm/N0G3TH8W4DYPVFTUIGu6s7R9+6Tv80JM011qWYhyoNfhU/7F3p4EpwFjqFLTvrmm0SOAbpKKgbRNsHG22rG/0A7tr9JNMEjzo3It7TVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkwHO9ut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkwHO9ut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD886C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725117953;
	bh=ZBvGynKZEaM98ma1qHROj1I0UXLDx8if/YC8PghCfl0=;
	h=To:Subject:From:Date:From;
	b=NkwHO9ut5HvK01u4rMU05M+iMqpUSoUfucolA5em0xT5aEAS9P8JhS1oNRvNtjiFP
	 s5A9hBNcZG74MrQa/3FTVuB/FzSxpXlUWmAsvxdu1fr3HseivOGMs6Aq1NTHTwLyb/
	 arLajvNoMEdGq4HzW7it3G/NgFlLDjPe5wOIHfZ8Tx6V92UUFxY0VcS09DLpNv2Usn
	 x05QiJsH74xe8fPCCBtZlW5D8O+qz7jfFy7DpPkOzAhqe97lPwMtSV4YGgJK1o3Gnk
	 bjku3O9K0VoGbOTFu+EPDQDdhQQVF0h/W97/j56vcHVIXwJcHdyLVI8G3tAw+b1cZS
	 iwOgKOonMx1qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956CECD13D8
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172511795359.20780.2658771044747316535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1597ae5ca4594845fd632494572c95eb1179a7bac333d14883bdbdf72c5ed5f8
Date: Sat, 31 Aug 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725117953
