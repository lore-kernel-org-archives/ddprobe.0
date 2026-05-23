Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3875A2E0B58
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 16:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779552754; cv=none; b=Qr4QRRx1zBLVYE2cVfvIVL89eWOEU5NC0bZL/RCavY7Pw5m+ttEiuaz4TUB6+5tCZ9thvG0NR9idCyTImeSjePeulAYqDzdEnEMlNoE+w74iJIMzOit4SA6Fx3cEtu958WhACOEaC20W2qWFuNVO6wh83nKsoiwqMAIpSY7YmnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779552754; c=relaxed/simple;
	bh=xWKpC5MeHbV5lZX8ctCj3XJR48+caN5AJTy6nTGhxNk=;
	h=To:Subject:From:Message-Id:Date; b=PQeOy+be1Prp1ZNArN1ITc2jA1FJPvttgeMbNrK+AmCcrwSKs7iiUZh1tWIfvuy9K/O6AgGWmEdAAWv+QVmKHUsN1uoVPkxRXxZMvkIAOuOLgNT2pvUKPO0vqQEPIk5jKNPbeLj3sFhCY1a2Cp8OB58q7c3+qEPu5x9UjqWlZYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hawAZjfM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hawAZjfM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E41C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 16:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779552753;
	bh=xWKpC5MeHbV5lZX8ctCj3XJR48+caN5AJTy6nTGhxNk=;
	h=To:Subject:From:Date:From;
	b=hawAZjfMVMVjjzHa2oQxO9Ho/LahNzol6IsRrxaSC1gg5FPswBACorRPfdHmsYqWC
	 T0ETM8O0+FMyGKfFo7JA4ax50GZSP+TsPYKIsqRY+y4wUvFAIafrYmskaNaIamKDKN
	 +7/gDwpNcS8bwLVCxE3XacO1oDJeZsSrXIHdckGgO7Sr4ujRlnc1IS6l2TSDjUkkqj
	 9w0t2LCyL5wk1EhJniHtGVkRXiwgT5v6kgtSsV8YOf+UOe2h7f+day4pp6OSynYrhG
	 0idlx5JhaqxMgPPpm8x1lh6pi70XoptU4BPyQReAhXPDflyBA7r2k7MvaU/GZ1RLyi
	 hO6RzvfOTwFNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8C5CD5BAC
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 16:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177955275368.25376.17362580421479318466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef17f4c4a09d5b232cd564b46d72e8dc834010dc8aac5b30befede7a0bbaa900
Date: Sat, 23 May 2026 16:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779552753
