Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E206A400981
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 14:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784211515; cv=none; b=Fw0hWq4HHrBiWsospxySfqm48scg0XuWCqf6RzP9JVI9b86fuNzPFHLpbqA63ZNEZ/+woAwzOiCyVFEqS6xRpW8IZ9OsnwCSRv3/7Og0G6FwjEDGKG8AidtW504VnWngMF48qDTVnKkhb9w5R1kBrjd/fGmySJ4vhzKuu8LbMmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784211515; c=relaxed/simple;
	bh=+Myft33PEfae6RKRtdlAfe0jot1gbqM7P/eTfnLpzjw=;
	h=To:Subject:From:Message-Id:Date; b=Islf+ibxdjA7+jUqzw8UAcjyt6T/lAYjHTz4ZoTr1134vacKqh51NWdTxWYKOahDWNGn9kNGIS+aAm+DosXlHGeI0ox9lAAK0tgf2C/W5Q+CHC8aQDjv+WRW5tCrEzij0atEfeiRQZkmByjoJLoKQsx1KH/H/vdxGnGyPsxd2rQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7jfvYxx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7jfvYxx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76776C2BCC9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 14:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784211514;
	bh=+Myft33PEfae6RKRtdlAfe0jot1gbqM7P/eTfnLpzjw=;
	h=To:Subject:From:Date:From;
	b=e7jfvYxxbwtkpMYtj5V47ZGIjoC7YgWBbRU6Xu0+zfNN4g0AlWyqSalPypp7nsEdI
	 m42zvc7V6y4RvnGGCGU2/6isuibXHrLgnVY8Fc95RKgWY+fS9P/XeiSZY/fgF9Zf+X
	 1WVv23Fp86uyU2LJfGstWiRbd3l/6ed2JEvp/4eKHwEBkqQ+tPhFz5d8nrMR1rRHO4
	 yvm8m9w7AdDfaULMErxuKZHh87EVGrD6Yxsga995v3btaTcWNF4ZHduD4kMrKNe/OX
	 px2lLcMQW8HcgKwlB2yyhu1vFGTBymCuOAXLpIUSwJ/NhKXuaEKMUdkB+tEBo/7xUl
	 ctOkY2nnePoMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E6E9C44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 14:18:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178421151399.6219.6418570063690041517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 842fe87095766059faaeda05ed053c2487b26a4cc1d0c62caf103051571658cd
Date: Thu, 16 Jul 2026 14:18:34 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784211513
