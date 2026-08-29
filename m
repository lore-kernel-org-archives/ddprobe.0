Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 672612D29C8
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788000034; cv=none; b=cGRiNVDTQa+ZzRPkp8/rfCko+gByJTfBsrNufJe5SrYbW5h+SZBK2htq/0Wp38A2LtoJl1DolDy8vJUcSoJ/Bkg4QOjYfXl08DO70RZVzmZVRt/MQD+YpReiMl5994Ttl9tuVTm3/QoCVe0NkFXcmC2CabMphWNY6MmTRi6ov38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788000034; c=relaxed/simple;
	bh=2ESmZtvzHD7q3ItmktXcRjhFUOMFklBY22J17/fze1U=;
	h=To:Subject:From:Message-Id:Date; b=afaocIW6egcHVL13TDnE3yGMtxaNrn4oSrrLGGnTseDIbx8tCkO095lw+ulnedw5Dz8Q/rFR8K2Ylho/qNbBS4/iY/6xeFMe0b7Sj4xYzMwG1NBNmYWi9bWiRZTt+7EE8LQgO1sE/VssqPNiTQbXPsDb12pZV6dvaY3xIcfir4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJnElTk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJnElTk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA9AC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788000033;
	bh=2ESmZtvzHD7q3ItmktXcRjhFUOMFklBY22J17/fze1U=;
	h=To:Subject:From:Date:From;
	b=tJnElTk7vK1P9oF6KR4/usddIwzyX2Cs3lk15jhkTQX+Qy4JoQfoK/KCQkh7TVQYH
	 SLLlrUCkBLnwNStghRJIMSa4nePAugZi+GqqFioyU+dCj68hV3vTs1JGXo2+76T4xV
	 vMJ+1sNCYVW4JCdAx50VMV1XCZ2SFjWtwdAbha6Iovk9j8KNv38+5+fljRrLDGR7Fc
	 PCkzLGfCnbX3J3z81Ld2A3UDBqp5OywApy83LltpDOUzk76n9D4kfH+9fd8kfeONPe
	 DXgxkGNiQ9pCkzX0v8JULkX8uSgyxolLcsu3HHMj0OAIul8cnqAw4N93S0xxgoM8h2
	 FsWoLWxgSQusQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F13C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178800003371.11011.8447156953449714898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a27395c579049663f4f9445e41050a48a31ba6fc6e992b5ab8db9e20229de2a4
Date: Sat, 29 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788000033
