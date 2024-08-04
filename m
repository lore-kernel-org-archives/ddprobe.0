Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B93D79C2
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722788154; cv=none; b=cbCpjBrd6FdVzV/fzB/I+MZNS7pv7RlRzPvFUzH6Lulh/UJoJFVfaUH1lRPMBebOjDaQDcdr89a+qDFiEschcH2gc3e1hWhZVUsyoeCDDU3ik9xxKGi/q1pkrejKVaH2XogXt9nPjOZWqEQKKoVnK9IJtuN1JARlUXWdHk78LjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722788154; c=relaxed/simple;
	bh=+o/mMqUJW2ACAm5tNCULR+MelNwmcoxclblae24fjtk=;
	h=To:Subject:From:Message-Id:Date; b=mt6Lh9HIpf3MXgx63SIC32GustZOvLBWsgAhMmOzHWt2HmY2ET4h2bj+cXs2rz13YDoOvZ1gClTaLe4QBprS8IJdHstuA/NfkfcM4Z43FPKrPx/lts2O2rMrO2E4FFft70t6eExCDDiWxlZIyhlVJysZ6etpuNTQFf6wetug+OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=doowSbxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="doowSbxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C71C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722788153;
	bh=+o/mMqUJW2ACAm5tNCULR+MelNwmcoxclblae24fjtk=;
	h=To:Subject:From:Date:From;
	b=doowSbxc4IcDu4+Jv79z7kgKBb6PIRgrSPF2thSa537wwsjspoYRjcTD24Sr8Oph6
	 Is5vcYGesiy8EGOmqb6kRabcyJ+Twy6py5/GqPYABRORsKxKjsnNTQOQcqkE7Gte/J
	 WSww9Gz++6b3jK3Zn2EROzRm85RKYpDzb4Kodko5AoZkKgu31/bndu0CIVky3tKjsE
	 uEAzH0OuCmNrRKtgEPab94QebgL23OE7wCAmDloq5u/ndxYv8cBgD4mKnJmiqmpnJz
	 /1re2wp8xtoZ9dNkFTa0Et15RprWHbAEoxf6mnIcHMvuY7LKdFIEMxNF3G7+5NRd2X
	 ZXNRKqcvEI8FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3E4C3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172278815360.11098.13028378657451436272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5babb8e430025c292e768d50066d9b2a13f0bcfa95d3c280ac5b1e4856692996
Date: Sun, 04 Aug 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722788153
