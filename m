Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1625D29A33E
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762577994; cv=none; b=BpgETKNpgskoQ0Eys5RFGVd5TaikXdKuZZBJ5TLKzfSUEY2p7GFDJBdazS2goTsFnbhHN0t78bnR6cc2Z7zazZQp4krNbIZDddJoUoHbzy92wgTTVqiBJQfGFnCHxdJNeZCuFXy9kUvCSvvMEsIt51OMuA9gpgaeKXsD+XhRLIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762577994; c=relaxed/simple;
	bh=9xH7nTX5fiqjucx3XKielrrgLBEjlFKxEHBbvMjI0Z0=;
	h=To:Subject:From:Message-Id:Date; b=TNzEQ3KfMLcsEcK32vzelRHhLq1hwBk44X0v40EKMr/F/qWbVN7Kyl+TK5eGIhotMGsSDXmBZzVzH5cag5sw2VA1CHLiKs9sSfLfdHXKWUA2kgLyP901GRlYJOHTlr47oF9AV6IluFqIyVej4AU6o57p4Kh1GatEJp1sl0Rr+fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5KjBPdP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5KjBPdP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10ECC4CEFB
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762577993;
	bh=9xH7nTX5fiqjucx3XKielrrgLBEjlFKxEHBbvMjI0Z0=;
	h=To:Subject:From:Date:From;
	b=Q5KjBPdPAWWjaM7ZOgjO6DZQX3u7FwMSkWQUsv4mKstZ9xdPCyXt+Trg4QriT/Hly
	 kaAi0g0rOXKv9k9wUXyTiZ0xqxe7GtppupaJZV4jrBa9XyPHZ7yN3EQOnBBLQt7Yuf
	 DfHPSKRM1m6YDYh5n2+EbToT42JgliB1NNptFskZP2YxIHSUZ0SJvJiXZqit5urCyU
	 bRHEZa6TMhgmJ0lu1ZflDuZ+VVqltym7LmfzISQFqnWcztkqEn0Wcnlq0JaEyDKSEf
	 dicNRD1rrmV7MwqiDpRZDXoD//n1RtmgveZSLeVeL/mThWiAnOriVt6Zty3VvB6kpz
	 L2CEDzOI1VyPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9570DCCFA0D
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176257799359.22397.12842156954670788453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a3c6e82fbb8670d1add5f75d12f5147da97f9442b00e3f1c600f58ae96d45dd
Date: Sat, 08 Nov 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762577993
