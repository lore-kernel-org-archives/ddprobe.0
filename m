Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219DD274669
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761235794; cv=none; b=cQcp73vo5JxkZykrC4nZJFDzBDlKjKyEOe8f3xURLwA7MHFhEcxKY5S0wUy53p7cxxyS72573Tmtq0EwdkXoHZBPSTZFV8cF8CWO8Ge0glGhB1kyObL+PR9uVUO9jv10XLo9JrP3p2mnSLHKLAe9PPHdvg9AUuiH6bCINKs05qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761235794; c=relaxed/simple;
	bh=mwYRhaidLA31GCODMJkpTxcK9VS0t7e9rHLdxcvYsc8=;
	h=To:Subject:From:Message-Id:Date; b=poKNGAqbpJ5YJ5GmWBOz8G1sUocBIP/PmnFV6ZjQl9VibgnbvXRZt4CxC+iXtW6+wRsdAQKnXA6fPligU/ha57I9ogKXsgFOFCH09trTMeNHXheOawce3XiZBZ0mytfcCJd1uylgwg4InMuMMe5nlKPnR1Zy0krdNpxYCFxOvaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujGj5ONX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujGj5ONX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E7DC4CEFD
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761235793;
	bh=mwYRhaidLA31GCODMJkpTxcK9VS0t7e9rHLdxcvYsc8=;
	h=To:Subject:From:Date:From;
	b=ujGj5ONXlnM586JxNoh5JbiSQmgVuxWh3GAzo7ZZyMTdD6hgBOIjhlWfx/VFcc8UB
	 1YCcs3jkmEVEk6UWl3XsYEv0Ec18LqAB7UWnBUvVgAguSQ2+xiVUHoRnKkttfp3vPO
	 tKX7vEQLy/Ftt7aWLC4Gtx41btzN2ZlPJOZqck1Ntvo1sTy6vWS5TsJM873AuSCLZX
	 /4s7BAOP9UgKlVhsOFEVnH8kUHk1r4fB4LgjIyIO/M5EOc0tQfKju6f4fctbNG/N03
	 kW+/Xapg8hcb0t9O3nvDzJSPfRpyAvVlA2Bg4sOvr+Zsc0pvCbpxpVKP7kfS5FYOB8
	 C1cJttl4rsXBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93022CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176123579359.27338.13806715373730335189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 611bc2a0f2e5a229e8e925cd1cfeca694cd020143cb1fa78c309b24ba5c01cd3
Date: Thu, 23 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761235793
