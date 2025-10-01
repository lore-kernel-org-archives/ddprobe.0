Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1861F46B5
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759310994; cv=none; b=p2wSdQsXhoXR+F/cvzm4Bu7y0ILOB+fbpTCRO/S10CWCPzokbsJZDVpURuYG3bEnraP2JoaQiQ/5nAmopIBlCbovvDHLHwAAX/A8EkS+CtTkO2iRfrUVSV0wTpcV7EDF46vmdCR1SF1PqL7RAovvLg2EX80d80fUVetPHUML0T0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759310994; c=relaxed/simple;
	bh=wu00DFU43Z5Y6BKkiVCYMB2lepF5cwwCqkf+zEQ1Ui0=;
	h=To:Subject:From:Message-Id:Date; b=KX5KRCYX2WBLnnqTNgy9aDqsq46/C7jfQDwMlcBrCYfvSgHXiXwn0F3QPdH7ZXsurKXWd9/JrSbu2+O5fTEVNx4nzZZw+IpBkfF/eCh72bkGofj3iE1RXt2ElcPjZgaQs7Zte50sX5jhjkD6MCYfnkzd5+UKxk1uSfSOvXQvBHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vROwJBdE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vROwJBdE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D07C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759310993;
	bh=wu00DFU43Z5Y6BKkiVCYMB2lepF5cwwCqkf+zEQ1Ui0=;
	h=To:Subject:From:Date:From;
	b=vROwJBdEjkw86sSdke/lKAPepROo/2XdLjhZlX7DFnbLotpwC4X+KHP+1co7lNV3o
	 TZMZpze7QirBauAaVT0UoES8XDc/sICVq6vmYjRAlj5v17Kss7hh1A6rQsA7P/XnPy
	 +RWTONRYW0ye/aTpzgA2zqwEN+Hb2H5JOVCHUfgt/in1hpE8GPsU2ww7RrWfCn+LOW
	 pRbx329J5js8pze+1HIeaTgelZXLYhZahBXcfF/RYB2X9kvQBNH2qlN+H//y2DmXp5
	 WLP6g6fDdN+22NqlBIJO9p+P2+o2LYjWLwPB1h0zT+glapyWxrcN2eh14P9H1dPqss
	 vzMf9QlK/3lMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9045ACAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175931099358.16447.5112852209582639572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fba4178933a7bd697b0a91859cc8b4ddb58bd918e9805584e56b94efd7be96a3
Date: Wed, 01 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759310993
