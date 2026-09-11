Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B17E3769F6
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789123234; cv=none; b=qXz0n85oZxFDyeLQFlbgJhhoAVLwYMc7SKkBsTZJ2/9hjMTdUeeCdJtIKf4CkEtdaCGjch4M6vwHRn+wUBa9HGD0WM9kW7A/eeFrVC3bslG+wtagbG4chH0UnTZW9ihXiXpdvlYYBAdO4Z2IEVTRIwxvyaPgd7r63Js1DyZUlas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789123234; c=relaxed/simple;
	bh=xUo1A6QnQQxIsmG2ahVtcM1ABxPlDeRLXJejvDPS0Yw=;
	h=To:Subject:From:Message-Id:Date; b=URUvlXTJN2USbgOK/6MS92txEumt0HIcYzfUa54jdc27NFEZ7/jnTAK04VfsSgvEoR4bRpIHSDmZ4FOIcXfVOhMiIbq/01tzmx1NNLKQhvTLb54z9q+sUxj4+kgeYFpLscjJVFR1zvb95bj8hCP2gmaEwVggx/7B/N2tApMSJBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWQ8Ano1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWQ8Ano1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EA1C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789123233;
	bh=xUo1A6QnQQxIsmG2ahVtcM1ABxPlDeRLXJejvDPS0Yw=;
	h=To:Subject:From:Date:From;
	b=WWQ8Ano1lf0RFBPiycrSX4Eh3GSvoC+zJC2sEKTBlE9trzBHgh1Qp2IUHkpkFZgPu
	 hs4Sewvtad1kzVxq0ATO1XT0cRp/3kkI5+6XNF6fcdgZi9jxbNplhd1r73uE77R7ox
	 el06DwHEIEku7eJFyVyh/NFVDcuNaXut+yXlWQwj6PztESXi642CkBIfntbodvKRo0
	 eqZtiQ5KVT7GJrFKRw2dZUtUUMGRBIQGjSyrrAQv0z+TLYtog5M3zHHTVv/nCmTFTN
	 2hE5OS42E6Xfw+g0ei7I1/c+B1jPYAMoSCwte5nSMbAM/bfgxPsQ6DVik0pb4Tm4Qq
	 gWLh/l6+xnarg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C1DC88E4A
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178912323371.21081.5988131199396702753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f3f26eedb8d27d013aeb3224a837965b02d855376fd8bef996b3ac4a9d0b5ba
Date: Fri, 11 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789123233
