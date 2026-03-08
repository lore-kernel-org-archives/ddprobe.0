Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CD01B4257
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772969094; cv=none; b=D+wvHhwQMzl9yY4aXDeWJ28/owMiCbAeretfpNo2SPpKSuu/9bflraA3x/UZakRfXRXrzJcEdKdcX8K0kHxZ0jTbDzBQREV5fsNLIsqodtVDmpMFgzCba9fFsTkCTb6VxTSvuo1GGjMtLL7VqVb8ENh5z+MukeJPIQVFb63O5xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772969094; c=relaxed/simple;
	bh=VGwpV3wvpk4o2yOmTnjjG1dSAHquj+5kT+L4k+QtpCk=;
	h=To:Subject:From:Message-Id:Date; b=ZoswGP9mOohZhw5F9Tp5mOIesl72wlhUP5btXtDmtmICpWYAiihOcvomskYiAcB6EjawzpI4pPhD871k4ROYPCsFMyDD49pYEInMkfh/+7kGTmOcw3m2YfmKkdJe5Riu4Mfz2pSOKl8Y2XY1TODrBO5M+XzF3b1KPYKMTqirP+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NL9nD2gR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NL9nD2gR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BEAC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772969093;
	bh=VGwpV3wvpk4o2yOmTnjjG1dSAHquj+5kT+L4k+QtpCk=;
	h=To:Subject:From:Date:From;
	b=NL9nD2gR+0KqmgRJmJyKbMjiWPLPEO9rKOGuVMBCpZ8o1TndCZYw/nJGtmaFR9KB4
	 dheH6/zsJhaZccypeyaEdJNeOwR9gON9KeJ0KTuPQSePDPl9tve5ao9W6hS5U7k51b
	 JMVtZt7skO3L3hLe2OPo+Rb7IChdXXhZnhwwBdjRWfdadhOuynq0u7WvoMZ6H7Z+c2
	 h6MvF8sK5sgVCmtzJ/ecr08sR6FGYUMim9AL3Nta08CGZFp1ctMwLe/dD5NE6PQ5Jv
	 EU6Z9aPJmY/48m/WgNabBx3cn0EZtnaKBVmzVh3YvNYczHLnLaBoURoPs1whENj520
	 73yrKTm3gs4oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943C0F5513E
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177296909357.7184.9071892944903334010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c4e7b93df64ff63a503334efcddfbf69378204c78381b59efef5801e6087e1d
Date: Sun, 08 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772969093
