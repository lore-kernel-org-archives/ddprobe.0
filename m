Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2351E1401B
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753601395; cv=none; b=UNIogKE+pspHGPwMTRMnnGjN2l8uyktgDdFJSu1HZWWltW+XpIPS6vIXjK4lk6RIfmPyULTKggBAuVgJYCXwIas4E/cyHMGHyEO/wUfQpFGRnKMRVa2h75aGBHoc6CDKMPN1bNYupHEXGYx6csxQRcQDTi+6oY/F6Et/3LOZfjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753601395; c=relaxed/simple;
	bh=KPS2oaL8tHmGdwJGzSMpg+WEGL3PKw9KT1qz596XSPs=;
	h=To:Subject:From:Message-Id:Date; b=s3kTNjtHjqI6RNfE4+bLDpak+Czyv7oH6TKalSiyfipkrj7Tyljd4sp51fRuv6v51o1gOJ/WuUYUZ4LrxEGnY9bmqLmpAAyzzZG1pQlW+k6qjwtD03UPYJd94u/Z161C0Jv04/C+hyADNvxhkpUJomvIOq3ofZRCeW98fIVftEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CMg2swsS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CMg2swsS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2570C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753601393;
	bh=KPS2oaL8tHmGdwJGzSMpg+WEGL3PKw9KT1qz596XSPs=;
	h=To:Subject:From:Date:From;
	b=CMg2swsSuRm4WnHW/FlWeTI/q3pdAiVrBuOIY9MQw7Tzvc/jPxFQ+lUFF++FYHDi/
	 NJdEkW88J8mvksgitG5JBczdnHCEDCEPxNCZJfhoCtYyxnuuV833d+DUa3Y9cm0xjI
	 +TRcc+73CDCiDDDlJZabRTjfQ4oFXuWE4KGJeneXJQtO5SDLSsFu7sbr53sitoIe9e
	 BZJp//DGFsvCigHeEP4dg0hUXvP2QRKqbD5cZbQaBiUc1RL70Q5J1bVIo1s7bdRwl/
	 PYEPv0MZb4QiujCU/+2bFouOmVvpU8rw7wBBy0Sjpky/GPALJM+6sMKQLNP/EsCwKz
	 wBKruYv3Dtqow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A4CC87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175360139358.27436.14099674080217547616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5caeff6ea1e20656cd13f28d08e6bad1d81850e78dbed78490b7e1d4a8b25db4
Date: Sun, 27 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753601393
