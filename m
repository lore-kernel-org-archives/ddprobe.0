Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184D21E47CC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769275434; cv=none; b=H600V/qlHTtf93M3SNDE5LnqJu8+oR5hwvR385ge1KqLxOp/z8uxnVN8rGsRR99t6GzOmuoSOkiA/nkbQKGSOBY5CnjKTUSaij4uH/cezp3GstxgD5NAnyIwgYlasPoQ1i3HvKnpSfHNTTf870BA00j7V+9W85lzTlhFEjENB/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769275434; c=relaxed/simple;
	bh=S5pmehzVrlGb/3lOWAYJQKAfA1iKSEjXOu6m6W1G9J4=;
	h=To:Subject:From:Message-Id:Date; b=FIo9K1k63OLcIDiI2aJIWkUcKZeN1a/TdG7R0cxKny+1YCgB1bYvYlabF1EJZ3MWCVLyqZ0Cr4IInotESdzhhjZ8c+uJHm9TSul7XQA2B2r+ICFWmeWRrWSHmo0O3XS4ZtfQm3Qjd055M4nCtnJ6Nh/b5peKunggPV3582O03ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYXOrpFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYXOrpFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CB8C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769275433;
	bh=S5pmehzVrlGb/3lOWAYJQKAfA1iKSEjXOu6m6W1G9J4=;
	h=To:Subject:From:Date:From;
	b=hYXOrpFT0bNwB6pwPICIfZcDQ5FK8b4/FthjxQ5y94XApAWBKAcTNxvjWLdaqldV+
	 F3dkw/h+VCCRJ6/E1D+wAxxC7Um9mlxkPAG5m8VfcerEWufAf+gYiXVy3JJ8qmKWld
	 pkewOELD+9uM+ZT+mIuV2g/i5s9Xl20XL3blaa8p+6lKCEw4NipOHSTR1OORTFyua1
	 UO4N5MVzpA4BNGm6VtsJV6x5hQnV6Jwfj6azPVqI7971ABPTNMdwPzF/5uGnkjzAF4
	 JkOWP/4pW1rCyJ9hQ9JJODhFiRWLwbPwgP29gAmMj7RDlhgJoqxdRf0V91nkt3bfd5
	 0/mfkWOtF38lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95831D715EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176927543360.7811.8793321620074918160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1d1c4e2109c30938277ae5e987e78a38acdee82b59a016b295bddc95b3d0867
Date: Sat, 24 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769275433
