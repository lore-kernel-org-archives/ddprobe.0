Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4C02E06EA
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774385694; cv=none; b=iW7ybpS8kXrsdJBlyt4f3XSZqB+2sho7VsyQmz/ModPKZsIMj/vL9h7ravma+1tDWdMdpuOXZ90cIOGrGTk/VDHjaLlx70wIWcxXQhF+iaNs3SZTUeHcatTbhNYu3IyC+sUi4ZelFmFcNMFBdWA0mJrLUrn1GHa8vybgHqziNfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774385694; c=relaxed/simple;
	bh=lldR7t4GoGMgw7EjlfXYaQRKq4MIjNcr0iQthbxxT6g=;
	h=To:Subject:From:Message-Id:Date; b=skqKqWmzYbVHjUKypaQAUI8edTneI200TsQH6UQqhfJ7THaU38WpzJvYnYVxfQAy6+RC1qlFbF96RVuG2TO8Dn5LB+yv+bhCHnXz92mq8h0PnhuxrhItNXLWydWL6I1TOvljdzSQnf+we0c0sOPwShQfy15aHlqwTc87kz8Ogm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPKDc8Fw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPKDc8Fw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF09C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774385693;
	bh=lldR7t4GoGMgw7EjlfXYaQRKq4MIjNcr0iQthbxxT6g=;
	h=To:Subject:From:Date:From;
	b=nPKDc8FwABJjrovPHYjuhZrWwExTYZbh4uSJQzmVxB5xZV6JsVU4zUi6InbUkLlVa
	 5BBlr8i/4woiBhqDcTRZ8sRCCFrHI30wssnosa2060vsutEmgHF19Vt9SOs/DW6vdO
	 OzsiBv198RvuyvwjkuYEykzF0uc4yQGg4o+OMDWhHi9Wu8sp6fezVHp5pgH4n/ulL+
	 oXxwnAkn7jMAyT8gwTC9VyzJQ2j0xEVdyvc7DSgTP1VorQ/pk6ioMOo+YxfgosiDnM
	 3OBKU9dbfb+X5gTT6do6VRvwJKDqSbyQWkYJPOqCk6S+ItYsDq0yioukIpglqpbO4B
	 8Y9cShZQvDjPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A566FEC0FC
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177438569362.4474.17983238037779206595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df4bd4e91d616a83162c95324c081d88a20fc0b16a6f72138eab2456d05aad15
Date: Tue, 24 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774385693
