Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2975328135D
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767093834; cv=none; b=KgEd2RETpBml+i9soaXEf3zqVTKjYiyJZUN9JwwhSR7oPI79+W4Tbz/jAhVMo/5A0wf3GeiG6ysmbfSMnpQCdpfLsKIPKhqlle3i8Hfr3IsmaNTMrk0IcTmRwxWVpvoZr9nuFjXcscrqfqm6KXXqJLxfi+tFm3OOodUDYQniems=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767093834; c=relaxed/simple;
	bh=3glT5YtwGxqkP/j3piCtk8wY4W5wQ9f3RWoWly0xljc=;
	h=To:Subject:From:Message-Id:Date; b=oEtgiw0Y8lFsDqNlC4SGgtvBi9sewGMpsoe7B+1gcdvcAnjE+Lq+L6Fhwql6XXYYJKcAe8TZlI29YdhEioBcAZFvIHRzcOnGdhC5Tp+7Po8e1PBPBPPbFEF/rGGvTERtZiz3PBNrY5NAFhzJEvfdk5BBjMPYgG+MXTEHxo57GLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=blne1xor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="blne1xor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30C3C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767093833;
	bh=3glT5YtwGxqkP/j3piCtk8wY4W5wQ9f3RWoWly0xljc=;
	h=To:Subject:From:Date:From;
	b=blne1xorBfxRwkwqJON876px02+Z8IH06etaGvEYFv+7WKju0e9WAVUqKjZ61y2rn
	 GDvFQpQqVGzNmh90tIwmaQpW/zTKayhtdmKt/xI4LzAODs0H92CYzyiYMhesfqmIIx
	 gV9VfP0RtB0GhWgTvWbVZDUD+Wd96JWfw77JE8l2v/4YIX1SqWI5Jl/Tj+IqB/JBUo
	 2V04mc3CfJK0PpEReETOrjqXPXOvXp1l3WKD4Es+WVbgBtuBslFdsHzxvkQlAbXhD2
	 UDp2hgB00UfRy9RfS7H9I3YqA6RBRrXEelK381E5B+2MB6CZPzYng6WJzyCyNET2Vn
	 IOU6xFDIgQwgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9466FE95A79
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176709383357.26388.7118222725959358325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c43de6ea937effcbea599fe280983e77649f5a176a8c30a2b08fe3c8cffa905
Date: Tue, 30 Dec 2025 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767093833
