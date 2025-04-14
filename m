Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00BC719A
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744645794; cv=none; b=KeVC4ybvhVga3Ro/By1n2ruQNB6VHGWl0Y6RnBodPhTqAp0Cv0y1Eh6PIATnf24qZAsbF3Oi/X9YD1CyE0DZl/OicA/VNNQPaS61MLAKiaYiBZvQa3+o79K0mhwI4EdS/3wL1O55+kIkE+VDxnlIpXSCdhx52urJ47qmpGo9xwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744645794; c=relaxed/simple;
	bh=jf27jVF0H2PdMCgWh3yj4tiTu7PPA+HOVjHf46PuI4Y=;
	h=To:Subject:From:Message-Id:Date; b=d4ig3qGwpiOkgNY/uD/2MPEbQshhvdeMxWjwpKDTVpDw9U2VWbfsSB6O6wvslsAkMiRe2YwX5ymatjKFZLC9yfbORLz6QEjh3wyY3ecF0303cF37GrMTqY9MypmgcQB5z3NQJ1K7pGu5AYvjPHh81AfpHXwZuIRwZOea5Ce8eg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQnStwqZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQnStwqZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA773C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744645793;
	bh=jf27jVF0H2PdMCgWh3yj4tiTu7PPA+HOVjHf46PuI4Y=;
	h=To:Subject:From:Date:From;
	b=cQnStwqZ4fYL4jRo91zRHBtW/MfSgwqopFbUmuzKb/zc6rN5CJHj+ZOfA5KoGlRWU
	 eKtVywXwz/Qg/qt2fTtTuaLAId9molgfvmNSHYwqJ80Fpu7yqZNSM99i9goJ0Eux/X
	 CGhnAsFeq8FY8m8LdnvkZzuwOAVwdmDPquwp0m2xiz8pYgx8sisy5ode1we0+lzQ0a
	 eVL/tRkXm5ovX3pMOVEiS1qvSStbj/FZy/pGC0ZzHomto38IVscfzkQUVyM18rKW9g
	 7qyn89qOKdHvOjOV9XdoQcAzlQtzvsevoR1Aytem+L7UDJMnq8oNRwQiHGCY84NEcm
	 jkgmPeoOrac9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B890DC369A2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174464579374.22338.12270533393019988218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f851cd9bea3ce9c396f7a342d540544c7f4abdb4e1f0906e1a4b302a813e5de4
Date: Mon, 14 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744645793
