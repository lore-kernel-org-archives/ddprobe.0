Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBEA1607AC
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760629194; cv=none; b=j4Ys4wG+j+QP3pRqhWWXq9ldF0UMmfJMYq9+CHMsGq7gibk0dmDHAx+IMIkbTEjQ3IqYsYK4ZFH9y5dxnB2EVMnakoKNDD7SN7TUpPEuxvwC7aHYwgiT5J74AKOKVn2JNgSMtozOcT2HuFcl+3XjeHp4yO6WikeD2oICihz3GMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760629194; c=relaxed/simple;
	bh=wfhL6qKL+YqDkhqs2ANpq7Wvep0TEAKYoD9XZ4Kkr68=;
	h=To:Subject:From:Message-Id:Date; b=FhLkqiDL9HREJuP2fKx86GHamNe8YkUc3UYs2RYhtxCgzjZ+Br9Cp3q3GF7iEPiyXJF/Cmd/DSr0MPThoGZZKet/RHYX1Ob5DRBYM2ZpEo3AiwuL8g484E4fH/8Q9py4gt8ZcoEbZ/UzCB9x+O45vN6o1klnUNbgMJ78xNM0MsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBQIdNnf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBQIdNnf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0078C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760629193;
	bh=wfhL6qKL+YqDkhqs2ANpq7Wvep0TEAKYoD9XZ4Kkr68=;
	h=To:Subject:From:Date:From;
	b=BBQIdNnfaaEu/auFiMjbSXN9LXkG3r1rw53Fg7M4ErE6rQYO/hU764gSfv/Qf7Vzr
	 QHBhdawnUMIDDJnzW5Hbsf2UkhVOgZPLWMpvryRaASwTUGBcLfq26VqO3eH1d+C1T2
	 N7zoFbwUanDNyz4iYRDEEvsJn2J1xI+m+u53roi1wQCwAQZET5Fseh2COVwEmMWwP/
	 umvAj6P6/cHddnpq70mME4D0zuzzlH1ZY/pSjxCht7itNVv4UTHy60XPHGX0/NuVVK
	 eRGnFOctxLeTStdKuAgFUWnDgktOUPrHSL7Wy+I1tbPgOTFoTj4XcbZqfC5fQBWP/A
	 a3xG2SYYoz+AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91764CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176062919358.17318.2149662563704736814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 781a7f68cb69169a3985e9e329531710fb3ee9375a1cafd11ee48aa0ce3d877b
Date: Thu, 16 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760629193
