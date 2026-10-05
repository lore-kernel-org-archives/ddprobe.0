Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C49476076
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791196234; cv=none; b=nV8T6rJZ3GSX+Dh2ZbwFLGW6WXrWl4SEQ0Z3YggfR6EQSX1xtVQUFdzir8DXZoSJn490M1I+0eXLzlQBbjedUVwuFrq9iAbrrKfOObMJbfvuzgZEUc8J/s+1oM8zYNuX8cAUO1bq9vTOSy54UcAS7LrP0mtOHP2mCR0Sdzu8Kjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791196234; c=relaxed/simple;
	bh=+PzXQ397oNP/2pXt7dh3aXcVkD1KKif8nco7+bQvisU=;
	h=To:Subject:From:Message-Id:Date; b=HFrJ1au2oSgpa/zl7wzSMAk8fkjF4wJfbLHtIAfryzWFkX5w9kUjvtZLzIkuIlsoaX6gqCTC6OH5i5z6lp2cs8BPaTs83my2TGPSGKfoz5HqbDMub8RlRuG+e5oAXcQunRa/GdVIHTSXSHH2cOpLB3wVkYb6thrzPaAzcRgjfmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IAt07BXL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IAt07BXL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EA6C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791196233;
	bh=+PzXQ397oNP/2pXt7dh3aXcVkD1KKif8nco7+bQvisU=;
	h=To:Subject:From:Date:From;
	b=IAt07BXL/zkU43Ezm86LoGUwF+j6aTWfFB/78b2agRXZoB93w6/jCeB4kn05VdoF0
	 U6guXWYuuK153mjBD3Xf2raxquUghayfQqgsJCGq8U6jONNIMpCuYiBDNXvOvgfrvu
	 74cmECAtr41gaM4RIucnBAupfzpXmR3SknwKn8RPPQNsB3dv6JQjm4DN+tWlR/UMPI
	 8/wPG+Ag6Mx4QgXh4eYTwLW+MyoJ5gxyQB2jmCe+09WeEkkApjEvD4x69iVPk5CvOT
	 Vn8EOzsLG1u8yHJOeIq7GH2jn5E0/ArhoqaMkgRgG98g01pCP5VxjTTglXVi9mTS2O
	 yfbG7eBM7L/Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9BACA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179119623371.3190.2763639271192290922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9c64f688e8b7814f3b73192e0e720a1dbf2aa7e03d8e5bcffd0ae9eca67ccec
Date: Mon, 05 Oct 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791196233
