Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDD52DEA80
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762484394; cv=none; b=t6wDepicD6C+yu30tK/o3nA3vMAsl5WyDW3JdBpWAKV2sUl4KHOqC8THieXBXhNw+Y8MVqZBjjuFfuUwwdYI+ht+LITxCA/zD3r48u3eP8qshKcJgkTFFPosiho9V0rc5kBl/u1WSzTUYuWS6UAHgLbTJg91E1cTC3sYn4qqKgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762484394; c=relaxed/simple;
	bh=s1xISqiNggxvIKsO+D7C0d3hgIutDnKmo+OqSkBqqW8=;
	h=To:Subject:From:Message-Id:Date; b=XA4fGBhwfOEJ3aX/sOn3PxibGFqwEjBlBFPKUogb3aGqwJWLClNUKPFB3WVW7/8WW0mJM4KurHTV7aAI7LOrPIXKzteqJGVQqJxdY30b65FS5F5lliGAGEi9NvSLUIvzisfqbuxBYF/y6M0Z6rZ438szpKjaAp0XfHbfBjR6/C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eilClCJH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eilClCJH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFA9C4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762484393;
	bh=s1xISqiNggxvIKsO+D7C0d3hgIutDnKmo+OqSkBqqW8=;
	h=To:Subject:From:Date:From;
	b=eilClCJHNhzYNZ7WoARL136jY0MOmDfbABtqWkB2ne8kCkIFOF4pT2oG46ejQBASo
	 IArhD4gjSbUY/y+0R098fOMJDOLZYQYQhkTb2SI9zivUy0cU0BGfXxbihkvewHiXnZ
	 kopS9PxlTpUjBZwd0674K1BYJTzMtXCfS9f3C4c6TizP3qhOFqSsIXA+3g3EunPlDG
	 lSakdLRZJdPmfmQZRyhsx/BTYxCn/C88CybVHo47kOHoqgQYq6AdohuXk0/uuzD+Lm
	 Tqb2+NoduMujErCEwG9Q1bXjX4RTNaBIzt5Dcv4i8VNKpw7n1gbCKVanDpn/sDMBWB
	 +LZq4MqQ0q6fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE3FCCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176248439358.16391.3414104814741670077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f459aeb6f1cddac5a40de6042ba8fe3daa88a7149ec256b5da0a4795218913ae
Date: Fri, 07 Nov 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762484393
