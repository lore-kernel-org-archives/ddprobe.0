Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0145466B
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722084354; cv=none; b=YyXQ6ptvPhSGUzB1R8WmjX35xsTKGQtd8lFcNbXCoNaZa8IA6S6mHoK10FHhJwRVYaoiah3XLsuqCGrrkK7I5IioTbQH6nObOlexBHGeeTmYAtET3PjgZR+CJghBjmMuC86N++UMLHRbT/bevZ7oaPfzLSOObCEuqSEFv+wkRac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722084354; c=relaxed/simple;
	bh=R2ZbFCYv66Jjm/vTMBhU0bsF+WznJpjFb9StgFbP99o=;
	h=To:Subject:From:Message-Id:Date; b=m9iB6AzyvxLXXprGGWXX3wlH/CuSN+1jxZn/rpbcMUVwE8Rmdq2mA4RtdYIeVG1nSyspoH+/oMBjGFlUn+1jVme2GX/E9pxlCBeYQtqupA4iqmYZbqg2nI19XWkZ2Jli2D94/XQ5m1tkxwkpKmRVvMT/Nvg32F3nrYE7clkqj7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XdE3C7/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XdE3C7/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE13C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722084353;
	bh=R2ZbFCYv66Jjm/vTMBhU0bsF+WznJpjFb9StgFbP99o=;
	h=To:Subject:From:Date:From;
	b=XdE3C7/71gyrKUEye72hTkFVzVqZF6Ofj2aFWG2woGLh5UMTs2WfFZ5G2PDqx+cA7
	 QiTPnxPDyb+0ODLfwtGXpVY7BHiXDpktpXRx0yanbP9cUMb/lwRIydCr8EDYJ6ZGB+
	 MsizuyiWNzsjJZO9hOxidhIOXf567RKltgenSGAqTjWNWoJsYXuK0d0eUMOYyyivp1
	 PjAVt9AMLvum830ycoMEprSCwsjiN0e/UQT4FXn6zrXBeW6stOX5xkRJahlkQPYQEY
	 1A1bi7Y/RiRuwqBnd4fzFMxkF+HpNKZT4J8KNuwZjS2wJEmIZ1LA54DF/LpS2fTAsl
	 Bzxyarotl72FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93407C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172208435358.8960.10392802022803576498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b14774728594f14b85a7cc85586563535602da8ce74d4b8c0c37da6da5df2ae
Date: Sat, 27 Jul 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722084353
