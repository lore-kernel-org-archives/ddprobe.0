Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7FF333452
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 18:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764613374; cv=none; b=CSCbuyHEiHfsMDiBfy6QsR8W2jrCPNKBhW5zLavoFTKWIDrbWY4Mmp+zmNa+AzuXPCWx8MxKOVaVV3A52TGldLvYQiDHngj/TJHfin3fOoT82UKMoDzAygY2VccTcu3arAgOSx0VwrjHyIbrGUU4Bx+PZZJGrifeYrFgwWSY3Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764613374; c=relaxed/simple;
	bh=mWqrq+iD4Tpeec04Uf7EXl1HOwGXYhWcpOp11VHrApI=;
	h=To:Subject:From:Message-Id:Date; b=t8oUTxGzwWrTob4ultIC/X724hX6ifU/3+FoE7eoT9L79LcVdD8IXnbbtX3ESIdq+udITVfa6YMmJ4OEZKL7o34+qQk/gr5c4uNMRZYPo6JEfo8wR4eXNGwrXWwcis0hcG7KQotUJcIXvlXYHyfaeHneKWeduSjylUq8Oyz13Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TE8R4iQ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TE8R4iQ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E46C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 18:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764613373;
	bh=mWqrq+iD4Tpeec04Uf7EXl1HOwGXYhWcpOp11VHrApI=;
	h=To:Subject:From:Date:From;
	b=TE8R4iQ8vnG1eIVozWWg92GcMB3osRuAL+XIspf5NLR11RQy7yQXjcskV+23sGXKV
	 r0XSixVjEDpvnFE2ehaEyqsn/Pc7RoI3DywaV/as87KNUJPSdUmryAW5dhqFluUsgj
	 u+r4Vow/ptpKth/UtO/5T6hvegC+xrExP2c17kLzLaLFRGMIyr9eW69ycL3mzhhoA4
	 YVKkfvub88KhkFwyoQNS4I/vFZCystO/XpQwh7ZAnFfGTQ6Tcea2GFSnNSDny8YK+C
	 5eQGWkccP2kzdfUVoZFWxNwe1RYXkppoKlVxCbnObpv/I+Kk459P5Rm6f9jFMSNldY
	 RPeyeAAtJXJpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97959D116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 18:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176461337358.14643.5937979767504041410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e229a4dd01bd2d8dba02caeb15b263a66de7e3980179a6f31c7a5754d1e9a7dd
Date: Mon, 01 Dec 2025 18:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764613373
