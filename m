Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB8C35CBA1
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762900194; cv=none; b=stfsrIJrdQO6HDWLJsYXKj1TFB+vW8P7wnVDsOrO8jjVmbokBXnLJli0tPIJOYfgYhW+cjKzsOPm7oeuRBdfZncQPLA0vtJa3IUUVPuV56HYfPlGIpltY8ddcESWW7Tp6/rlSeuOWU51N2guW14hk1Xi50dL9d35/yUs5wEnjUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762900194; c=relaxed/simple;
	bh=HHhOfkym759Clh1Fvc5oK7uM5anU40u5luaSkGPeOxE=;
	h=To:Subject:From:Message-Id:Date; b=oyLcTAR8zX0EBGRdONUG+OOl61uxwn9PtcfzMORDo4EVaA9pYfwASItuf+6ZelDeqeEPoHSlep+dm4HTMBx/YBbyNKuMUmui53xVf7JaHxqHqS8z/L1EegWO1N7LAOcNnO/1vzERM8frYJg1l7seEa2f94YujMEmtfT5iI66SVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwGkNgqP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwGkNgqP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C81C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762900193;
	bh=HHhOfkym759Clh1Fvc5oK7uM5anU40u5luaSkGPeOxE=;
	h=To:Subject:From:Date:From;
	b=kwGkNgqPJhml4x31JeJC91QHRimMUUHWHIwzXvnWr9LSMNzf8cmk8AfHgybNYfMmB
	 D5VTZqb4XTmWQlnXjwk8+jqGocVLpDTT9qptJijZexxp8BB9lifLzDV1M4LFHqxVuF
	 7qzQvLgJwFYw1rZo2ua3DpOxEA37SN8pF3pD1NMAxJZ2U7UNBIRqssKWzOkV1KjL44
	 /oopd6puSnu06pE7gvORPIIFyhLgCJa49IbwM3kpWDR3MysyFK1c3nAk3zf+gnSOW9
	 /UJpCXmuLO16xY3DP1lcrw0flGNrQdVfWM8duBN0/FqE6Lyfn5JBdHhsPd3FOBxud+
	 AYmkkZmW9G2mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97833CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176290019358.19848.11469441510556890504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b09d169ec15cf66dc3b6d38f0c97c39065f80505d5e825fdb9cec2ed5868afc8
Date: Tue, 11 Nov 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762900193
