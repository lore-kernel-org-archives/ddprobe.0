Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413CE1F9413
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746223794; cv=none; b=fWaswKcgWXH5KdHOfgwMDA4xj6y49jW6r9AocJMJgB1krjgwO7TF762nkLmzF0Pgvb0Qlxt4h09Lx+3st8V2QUMOKvQCleqbDAVhbm9CTJh2kOmwG9MwYwASQYu53iTj+yfEXbp+d0YdCe3bStIZ2oYHeMNh6ziICTzJi3CYnms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746223794; c=relaxed/simple;
	bh=p7ZU3S2pyBrPTHGhjvscQh83/irmUklBVSLIgtKRZa8=;
	h=To:Subject:From:Message-Id:Date; b=T2W+kdH6+Y1krH3jrGcEfCUPOKjaTApEyEFiA1/3hJiil9FDXZk21gScChww2Z8s0TaFMAIv72qLMOMV8S3ls4xP+MXTWRJAetx+clH0l/MHDYaS1Z3iqzwrVxO6DmHdYDbbxSN6JjA9s+vRx4X8DGniJWCyCkiuzpOuZIwMZzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VAh4vb1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VAh4vb1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77F5C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746223793;
	bh=p7ZU3S2pyBrPTHGhjvscQh83/irmUklBVSLIgtKRZa8=;
	h=To:Subject:From:Date:From;
	b=VAh4vb1PSj+zdm1kwPgseU/IHuK55/j6hv3G9wgxfJNuruwHWBUtUAxVLUIKsO/R1
	 TphZTEiKlF4yOdxCSbWBnnL3aPcHWBWrA9BIuXhsEpdzLuCwjrgTOkeF/74U11MkEg
	 Z90LBKrjVVNApRzqAmYU+rYVxlcdo7pG1CEUI9QUwKZP4nzkf+QStzH9XvR3qplcLJ
	 y8jawp/1v4miBpx8ieHdiqB/W+/37BNXeQWGVSUrFjpxsMaRNGmig0aMZXefrpbmqN
	 guf9HeM7uXwxytjp0wQI1NCR70u5pWismt2GBygJBm6GKVrDdIuLGInqrWzpVIovvM
	 7vQCc/Ta14J7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F752C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174622379357.21208.13891111698815377318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dab362c1b2c2cd201beed90d58addac37fc7c562cb5ad40ff83576b66470a39
Date: Fri, 02 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746223793
