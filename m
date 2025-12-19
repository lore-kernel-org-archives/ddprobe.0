Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE263A1E64
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766187234; cv=none; b=FSTLIJ565pw9ekLsOK9DV50HLMP2CUQbzlfMPAWp9AdZ+j/k45WjurZrJkmv+2lxeKp5HvHaIANDM08wYYySME86ese4qWwPe+Gxf1P+keNNmuR06zOHLWgGqV2LPZVPKXLSB7AiAWAn8p38r+coCA1TM0dJOnGOJZSZggC2MuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766187234; c=relaxed/simple;
	bh=WHLAtBD9wwk5a89a8KTTfhR3R6Kz7H4dXDjfaakYMGY=;
	h=To:Subject:From:Message-Id:Date; b=Vl5Oj7HRjt21s/ffOSVsSOMZ/ZeGX8PQ0Zp/dI3yyQI9VOLxgllDztqThhdxnxO1qzxzGyR0Jr/iXrrQVgLX59OBekBVQ57gtxARL7g3HjvcCHPDfFVo9bch5aDtsPtWsHFgBnfitgX8/ALCEHMCpXhgq/3c/YMpjnVEJ3PWF4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3X6FOKX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3X6FOKX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AD4AC116D0
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766187233;
	bh=WHLAtBD9wwk5a89a8KTTfhR3R6Kz7H4dXDjfaakYMGY=;
	h=To:Subject:From:Date:From;
	b=u3X6FOKXNv5+vNmlcGXPfDRmLOQurj9ZPQvyK6h/Y5K+mGdvqqkKz/5yJKBvYS/0Z
	 I5g7vJmbVogPlDrWX1ahru8bWeCX1L+dPpZ8pixKQgLMJjEH9wgpNyFOHnEe+fEWQO
	 qJQfR/IVu6/ShXS1r4KpIjVAKQt9zhUsXYL6RbSO/bP2ZvpaAawETmWuqD08tV+SzI
	 Kjl2eYH1BQj1aRBr9MTM+7B8gq7ujpENfRQcRjB9bUCF7i1qqDivJ6tYBU+Cchk305
	 QEwtuC3r0xBOYTb0oCEHllR2+aDdPUCt14Sp93oaRc70CGeNMt140JO4D3ZOrdy0+z
	 Iar1MgKuVJFJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937B0D78797
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176618723359.5900.17549616409245694872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e329e692268b0746ab5813b0100a566f230868d7bc89028484e2f5dc91b1862
Date: Fri, 19 Dec 2025 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766187233
