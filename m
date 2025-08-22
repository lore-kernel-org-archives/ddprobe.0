Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EE3272E61
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755907194; cv=none; b=Vxclz82ANHdqSBhcX78OR8f8BJFNkrXv2RiISKNQrn7q6KbH3OdeDmiiIAp9jHQAdP7sFF0VxqTIL2aAof5OxRUvjEoSfFecWEM0ZNApzqqCh53psuumpFJAAJ3vSw+tq6hFh0bnFm63l3ljJOVFqQs14Ehh5We48gz0lQSC4aA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755907194; c=relaxed/simple;
	bh=UpSzK/YNMJeBsoQgE835L9DTxCTWGChKIYxiZkF86fs=;
	h=To:Subject:From:Message-Id:Date; b=N0n50KpkIFLIOBsc7QGPIrorugguG5RfS3yms956dtQGoJRGFbGi3aS/clRBBFCJWL7gzyIzqpGSHjqA5/DNQzbhtB9oWYYO2D93yHwKNGGmtk0Czr5ZDediQHJHCUWEgk8XqZLqnlgVzNe2OgOb6hFEOeufm2V5lUBkWNjsqz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TICDu6Um; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TICDu6Um"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2511C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755907193;
	bh=UpSzK/YNMJeBsoQgE835L9DTxCTWGChKIYxiZkF86fs=;
	h=To:Subject:From:Date:From;
	b=TICDu6UmG7WpH4FQOzeHuxVH+cBalIGV+x57lnRn26ZyOoCTuf/CUBD/GYsS+XQcL
	 nTNgeX10d2MlAyuQag7NxP2ROFYzqVJkSraNXrWeDWUR+Gs5Kvqb2MkeSYKFEILW3O
	 OValQzawMSb0sZbLHBdVL9gOZOytAiBGVJK5ws4JDogi4HYuNigH1kDXRnF0LbTQL4
	 zB0hL+znlxF74mQJnvn7M2XWiON90RvAm746ORjUeyj4vLAESps3qCDMea/xlPYkrs
	 m5ex9A7qNv2ZXiFH5N9VArO9U7mVBRGaSRiV8kI2h+rWxfOnKfg5G7kfmbSz2KECpY
	 DFsiex3c6lUqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A29CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175590719357.27460.18335328172965226798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d476878ab792967e3ffbf5113cbaa38c290d17eb88f1ffac05dc2b5414b94bc
Date: Fri, 22 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755907193
