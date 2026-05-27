Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD7F3E639A
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 09:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779873155; cv=none; b=ZQvIml0QCgigJmBllWEHvaetKu5hYCQ+qSzI4wGNLCT89wR6ObQdMNfiIiKi66IVQtoe7+2QCeX3tG+VTbJ5OsVewQxb5Excvqe0VAnTDT1f5WysCh560WfTZ4AIN1BJSBDLGv1Uo5duw62W4J8uIo294y3pMglP964mkg5PFaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779873155; c=relaxed/simple;
	bh=HUkPOuCLRixM8oVz04HHtf9LM98FweXYb0Zin5U93sM=;
	h=To:Subject:From:Message-Id:Date; b=So3lfTTNyCjakNgPgOqBdFoVSATBp59/bJiksVNSuWEUOtmnnk40bb6LrXN0ymBl+UZrT9a9GxQisQvq27DIvlqWhPxO3pSRhr33+4LuelAaR4E/el0uO7m3XX735fTzfdMfz4cr923BwCx3gWS4amrNgQ+VhiY75dFHBbcf9Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRVTi6BD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRVTi6BD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C486AC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 09:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779873153;
	bh=HUkPOuCLRixM8oVz04HHtf9LM98FweXYb0Zin5U93sM=;
	h=To:Subject:From:Date:From;
	b=HRVTi6BD74E53DLahB5KWyd7T5DZkpYy6FdKT++oEltVP/ImxKZXN5qjB4f2h6wc1
	 okvKE1sJdB6QAbGomn7KuH+8JSv5skzsmxLpRQBFILt5oOvPd3RmxZPcsj++NZt7ef
	 2ogV+xKR6qHfhZfFMNfgGHpfF3budxlB3TEFnzWBM/UgH99LC8wqNjZdiz8F6qXvir
	 ootTAD8W/MwkIJt5dhMXoHdN7+ycIDagitNHJHiIeZ9NA4sM4wFgJYoAjQuQYTamFm
	 K5nWcVAaBoWWvaCAjZGe29zs+pgOi+kLBHtyUNj4Ty7Yk0+T4wZk95AZGBgioQ77QA
	 QMUltICt0jmyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACE2CD5BDE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 09:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177987315368.25291.12055403842518008486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46139d3751561a373694721610f5c2f79348de5cf79a8a9af7149821af55d67d
Date: Wed, 27 May 2026 09:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779873153
