Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD65B189525
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727753153; cv=none; b=CpG6n4rkj+3tcsWuEXphOIr+DrAU6S0jR5UKFet8WNIel37dHFjrwxkXIBJTVCKvwcFAYM0G1/BAvQmfjUtwA3ZoLIM19kc9Dw4JyVYi1ZJZdcadH6x/4tjZEVvQfecZo9s4JhdlfVlPZ4lpymTnaqzntLQ2C4luLHYZdN6Xlv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727753153; c=relaxed/simple;
	bh=LC46A4eZqwiblJDcsA8ST3WHjSECGPY4o9wbfKGPxWw=;
	h=To:Subject:From:Message-Id:Date; b=n20vnK7o9EVMJhLZFme9q1C0NNxYZHCHp+jobZF5+zgObdojNAokmo0Kq+UjkmNwB1xXfNhMpoZQ3TmTK0A3hlY/xkHucyNrtzgwRAsfFPVhiwdOrKJqpFZ+zLygoRv9Rzwb+s6UcI+F1SVs/W0AZC7Dbg5rOaXee/kyFmj27qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q0TusuqX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q0TusuqX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1119C4CECE
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727753153;
	bh=LC46A4eZqwiblJDcsA8ST3WHjSECGPY4o9wbfKGPxWw=;
	h=To:Subject:From:Date:From;
	b=q0TusuqXarAYzXdPcXrFWvmphjHnSZYcNwDnTmxxasQk8ux+nr7uLw1FmnS32uLwQ
	 wA12m6db0qcSyN2HquPKvOAHFD0wsvVnSCoXJa5V333TLrwT9BcGjxptbycoNPOcaK
	 u4Ur0npgqJikX/xjxygsCFxt3PWsH3niRWGC0TKRW7E87cH+YVk1XxBFCHuPAZt7N6
	 d9RlSwtsFEKjRJc00Mhyorkk0+tk3CKk/Pg2OGZ9QrdC2XHhi2cckxnbiMaG7h+5Cp
	 ntvvYrM9shGm7TBAZ6z1ribOuDqLwPILbPQkRDBfzdecHn7SBmY0D2KOEKU6X5deKI
	 gDdi8LBTa3LdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DADCEB2E4
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172775315365.23161.17786292382706221151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 557d35a5e805c93b52460af1877a935351d11de89d67dc6abc5f85cc11f382c6
Date: Tue, 01 Oct 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727753153
