Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEB21C8638
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748503194; cv=none; b=mLjAFBk8XMDpW6JW3ZBV7kutricP8yIRuFqHPE00Te6EAieB0wKNV3nkzsy+Rv8rQ7fA5gQnU6hVS49+jP+RYpunzadroe0vMxZIPG2fntO/4EHoVtNhqEtSPb2lkoOAYG1ZKrrX2119grG6NXERTYxCgQcwHT/qzP0+JF8HB0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748503194; c=relaxed/simple;
	bh=wY2bM2HpMPcw+LMaRwx0Woh2SyvOxeSmSc6Z5VaZyrM=;
	h=To:Subject:From:Message-Id:Date; b=r1mGFB5TYz4QMAlaSBS5QBrjxeXvp2JiiwWwP865elSF2CyQzITXr+ahlwi+ALVWO77z/tRMsx9MCnXBhqd2+v36AzvA5fqn9FfP0L6fguRylH2BppqLfgFoB54VQ5IT741Sfkl7kRiixyZAjVMCgBWggV3gmcHArSWCj3e3/xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bnU2+oEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bnU2+oEL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09DCC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748503193;
	bh=wY2bM2HpMPcw+LMaRwx0Woh2SyvOxeSmSc6Z5VaZyrM=;
	h=To:Subject:From:Date:From;
	b=bnU2+oELKP5Nys1g6vvK2rAYxVsSIozg5Xl8aPdRC/ueGYFVMW7rwW24j4IBiJMGi
	 uLr+AnScjGNbIjWD7dcuNh2RlX8otnrMwYNaha2VVyGov4yBqZse8M8fHcaRizMOlQ
	 zBdKGYvX/ne0zc4Qj37vM7cGiOA/hHsnb7S8GzKLiJfRjpD7WOsf6LYhI3iDB1nm5J
	 0bZX16f3IfnHmbLvjTo8KX7VD1DWZwvaLgTop5uznGUi++OfOqNCdNUfoqVXzaoXJH
	 mfmHE/0yEmMx/wL5qEUbdW23AWVtkAxQWMI+m3xYBzK6QNAA582aC/8+ZWZaUbrOU1
	 X+04kjWAX/dMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECB6C5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174850319357.21476.16792487102493392543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5a8a248836f149897da28c5ca0908f6e74587b0fd2bbc4303db523d162542dd
Date: Thu, 29 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748503193
