Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD4720D4FC
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 03:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770003834; cv=none; b=TsgvabsNQyStwfJk9wr9FoTwJuGxYme7bsx1/kfgAJVsa+oIP7Uik38pg7EQAa4am7cX4P66rtbIe1h/PZ4N8gUKQy/jawToKR0+zFGyKXGPaOUcnjHohEPqYWevQs5Qh2xywCyomi0LRkDWHnCFBPzqVbK2Ili0EYowNVXC084=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770003834; c=relaxed/simple;
	bh=0prsPLXunlemidwOr0vIio9SW4G3Im8YR1OWmEfEuIg=;
	h=To:Subject:From:Message-Id:Date; b=m/HxdgNtnuLVMPIVrh7G+2PnmUNITi90ispii1Qn1aylqoHW4di4+nII75d47Nmbg6EuG31asBfTlCo0mM8o93li0Ix45AOiq5N1cJVoArhqahXGcr+PfO2DoU0HSTkXXZKBJyzzGosD5LMxoUFjfg7GarOPCpUokkT4GMzS8Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJPVHCCU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJPVHCCU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB437C19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770003834;
	bh=0prsPLXunlemidwOr0vIio9SW4G3Im8YR1OWmEfEuIg=;
	h=To:Subject:From:Date:From;
	b=gJPVHCCUJ/ohlfeiJI8rsz2NnHTGznfTxHWQKXHq9ND6kIji6+IH2d8b3wvsnWBMn
	 njlvlK1XpU30oqS1O3l7SuQuf9WufBW8BPIGD0tARXl3l9w0S78cuObw+lhz13j75m
	 uLEsNbvIKDmzujBMf1m0DzQY3gxeakN9Z3tmfRJMmkJIkxGh2+RCee5iyRaaTWL3WL
	 /zSBi0JND1fD91p+r8tqnXVmtntZABJkxskVxN2c8SQNENSW2q7FLoUF2MJswwIcYz
	 qqpW9xCiVrxVKekNKb0ozysW7QW763OMctjyXbDgiuy+K60o6ombeTORAEYh6cVNJL
	 6pN/QQ6D56mcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0DB3D172C0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177000383370.3017.3031135009041153546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 088a6a042302d4a90b2e09c6596cd158b1b5894e89d5a508c3d249c46bdbcf8b
Date: Mon, 02 Feb 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770003833
