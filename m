Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517D91B95B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743131394; cv=none; b=MLoTW3Yr0lsvGfhat/AqXAZJjMKhzLRgKQNr7367YUglLevMdCjNs8W5ItI56hfKV18b/AnSTCpppoM8j95ktBxGKdrz9xdsOPKZMyJA6GqhNoXpwVlOJJqbqn+rg4q+euxzvUQOzRy+bWQYLE5iKWbAoJw2qiiEEG4nGVhXfwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743131394; c=relaxed/simple;
	bh=ME0PKcD5b2vnfYP7R7GikZ/t4YVboxxo7tgy/SVORw4=;
	h=To:Subject:From:Message-Id:Date; b=Qp9xAGpOdrCgTnAKqKN/ej9gKb2TF+BGPkQYtUtBFAmBIYT8oapuupa0zbdqWDMj03KwI+vnklQ20cvTN4GD+kICXXaQQEP3VAZ40elBsd3lS4rsEDnfN+AQ5OIRoPgrJo/oN5wujSLWdAAOunQpMOEiZK2iAMpuH39/Rceuky8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFdgVs92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFdgVs92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1157C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743131393;
	bh=ME0PKcD5b2vnfYP7R7GikZ/t4YVboxxo7tgy/SVORw4=;
	h=To:Subject:From:Date:From;
	b=fFdgVs92ha+/AS+iIaZdnW031YL2TdGal4XSO20cqyFWypCil23LZFlvo0qM/NumB
	 job53YOCmNR+aJ/RS77+2xLyZr91pD95R7Ft68XzKFszPOfEbgKCFd4AhXNmTRR2Fz
	 nYbGqB/trHHClXLyDEQzs5/FNfXKSNVGpfhonjw31n3wUUyS0dHx7hszHBTJIYDL23
	 JsGaNRPSAZeyOgcI4sA60KKZ8vfxLJAFj5V0bwI9x4ILenC8EckZSRpG1uPSftdYPj
	 TQypvq9ENsj3aTO+kdd6pE1jfQC1cLrtdT6/FEf/zoALUt0A7whwcXeOgoobGfaENd
	 2m9QFCyEbxjmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E2CC3600B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174313139364.15019.14221529990839993922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0e7ba6250ec079fcfad00cf3bc0675edead36b69ebefcad19089d767570d616
Date: Fri, 28 Mar 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743131393
