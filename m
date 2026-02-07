Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD3A30CD9E
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770508434; cv=none; b=t6729LhnU75KWJGvfeZEAnYBrphtIJxBE+qPPij2L9fAK27g64qeWwPkD/ciwqb+zpnLx56ufjmvhT6FdQGTzgYsLWFqwWQzLUgJZMJXjnMJ4iEGrsHMNMdT7kp4gdZYGK9gpgNDcbR+bLp1MXtMXLQuR0Ap9ZyR94TpW4xnFnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770508434; c=relaxed/simple;
	bh=vwfMJqQ59lvk39u17ebIUQylZ3Zv9CQLeB0Ftv80EX8=;
	h=To:Subject:From:Message-Id:Date; b=UNZgLM/pqJBTOLQ84KhqCuN3F+TEN1/JeRxYIGry7AO0vVSycGT7/kJE5CqXXdu+lY6X8IeetTOXsykj2vyw4LxIgVXiGXu3RCtOglJmdDoBjEKQnJa5QqEhva5pdwU78KDKJLkzSWmcrl04uM73s6oHFJJtI0WilNfTTlVRSds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=En+f0XyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="En+f0XyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A14C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770508433;
	bh=vwfMJqQ59lvk39u17ebIUQylZ3Zv9CQLeB0Ftv80EX8=;
	h=To:Subject:From:Date:From;
	b=En+f0XyZLKo2smUcKE6fIyjkJ0ImMZFXd72eIQccCcpW/orSXbTGfHhNaMnuIte2f
	 /iQgQjmBMUH3tGj3XoeSRq+AzTFAexiBppl3DQJNwtPbNNFoK2UnzV1h2NyrKv/0zv
	 ffxHQqiApnb0zbm3WPQLoohoF5Z6Uwi056trk0n50Cs8QTPMXUpJirCcawsLj0t1xE
	 CWE08uvIm6ORDx9Wyp168s01zBIymAsDT6cJAFpj2cfKBtzlRT4+FaLMuISgFfHjQN
	 cpwOSN8W/qzd+Z4umdM2y0wB7iOMbkCf3aVO63ubbwh0dXbC80KA96PItYCvnA7KwB
	 waetIeevnqu2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F789EE0AF1
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177050843361.18632.13092098272948171038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e70f5cf787c5d549e4232cad5cd3fd02fdf26561e91b02d8bad1bb9f1f5086cf
Date: Sat, 07 Feb 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770508433
