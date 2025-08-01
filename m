Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3FE139D
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754026194; cv=none; b=G7SV3hZvy8Mk/TUn6BMn4CUBPVQmuYtxBa1cU7RYF4FhorBJ2am2Kgkv13CYyUqIO9JkJhRVsvcNaXFrc8P4fZ7EMZ1TBrxLWfBsmyWLDvY8lxKOPml+RPW4DWvH1Rs/z+7cYNRp+SYhC+pKQHSW2cUfyhDDt7KqSb755ZdQ4vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754026194; c=relaxed/simple;
	bh=Pf+GAoFVPl6U6m05WmGinz79TMXdePAu/e+P31YYTHc=;
	h=To:Subject:From:Message-Id:Date; b=ZtsH4ORbcnzt74+xQr5ljBs5hoLhM7euM+pUB1NLmw9jaF9Y8id6Zj16hR+qlfBjqAR6oM/vpV7LUPKJ17948ssaEd7T0xjuY8GZLVEfW5mK1K5itGsDQ+rFre/aqCk1iMT5iOqg+PxsSfCOepwFRvopBoiFArhoMa5O3ErXKAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJNjxCMc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJNjxCMc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81B2C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754026193;
	bh=Pf+GAoFVPl6U6m05WmGinz79TMXdePAu/e+P31YYTHc=;
	h=To:Subject:From:Date:From;
	b=FJNjxCMcZcWbhDdUzqKUcDAs4oqQqez/5eXT3xs0RGySxjTBqikBj9bTTJZTirtAf
	 knBkLgDyc+OJd/O9RYDWijaxXEnoCbzaGCFq4dJPk0fekhxRkCqt+/Udq9J19Nr1+h
	 R32BY+Ues51wjMbY1QSMgUL6Lc6zlntI1nt4gwmW/KpT+KoA5EpfVDmbpqHO3vZqyl
	 UNXZEoKSyfZ+C/ZRmIFweUUeqTjlk95389l4d6Yq+akfgnE9/46CVXsg50Td4NobL5
	 2H6ieFIZTITmRARYtpDTVQrOPe82COUkvnj7qQpaEK9tGZsJfN1ruMSE3Jh6jfSwMj
	 yJikoIYTg0xug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981BAC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175402619361.8832.7390696264862054085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36d576615260b536fa714540ce4a38164fc60414b525093a7b85fba864d8f828
Date: Fri, 01 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754026193
