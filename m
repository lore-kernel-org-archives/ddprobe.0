Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AA1618037
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 02:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717640243; cv=none; b=IrWhCww4wqwC+DBTOudxkf0pRpYyryFGjjlRKl1e0LlqU6K+UlGgA5t5CiaPoUMZedzdn+H9PSQ1YcS7gzgw0bgjv5YAVckVOBdyYHMw1P/8L6fWOsxfMgr1eoHMK3puJRaMUeZ/sLborS7uP4OWb5DQh2fCjTKW38gLatGFVxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717640243; c=relaxed/simple;
	bh=xCQfc57lTJrKLkfa0zIuxtyhagz8/vW7t4ckIfSCqSQ=;
	h=To:Subject:From:Message-Id:Date; b=j89MC+99Dw5KpwJk11WkAEXuyHx6yM6dLlVgl6Px56elQPMo3kUVfgV0KxDcZTti5FTBe5JFSOWjl7Bk8JUepcYkiF/78b516R+3zw4ZCDzkYA+gmiIM9gXhqDOWoyoylZ0XPDK8oKGGUEEqICaBa17gu9uS/COzQhRYTlqWD4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcKlifj5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcKlifj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0037DC4AF14
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 02:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717640243;
	bh=xCQfc57lTJrKLkfa0zIuxtyhagz8/vW7t4ckIfSCqSQ=;
	h=To:Subject:From:Date:From;
	b=rcKlifj5BzgrbLH2X+adMI64zTg9XLqXqm+VBYkI2z+5//e7vnz+/4R5aN6gHE5E9
	 965Ah9+42JhVEIUHlHkmyYhoNC+zYd5WqzM+RF9O6jORYzs+Z482CEXHbvxMokUV73
	 MwfyK63MlLCaGPInzIjE6VDU9Ojsx3U+6BihSbfjVBrILxH4WK717XUobYTGhyk0fj
	 cG6y457BRcTpVglO8HQgB+0u+oO4qnasuJit4SUjUR3QRw6OgpnscOz8XbWbA8ewqC
	 ugh4Hjs755Ov9vM3wrQayaCxf4RxDG7RL+atB3On5US4h2ku4K/GBqQQqk9BpVWDMN
	 CxYijRxqvMdcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0DDFC25B76
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 02:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171764024283.22962.360424547274273208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d51cded41c1684a1245aa3a723b59dd74b48d6afb7a658a25179107e7729320
Date: Thu, 06 Jun 2024 02:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717640242
