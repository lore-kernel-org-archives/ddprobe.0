Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F1141FD4
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 00:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778371714; cv=none; b=CbfB+Ubu6OwYIZrInYp9JVxPxwI78fPz+H4+QcCGMLe1V/nu78GqKSv3U8n5gHxyH4YwDRRnev9CvqPFOFi9AmcAiQW2l9/3jA4lXfs6THD20TVUfw7Dgck2mwV0Bc/sCQ2FFdvIK12YEL8CHsJEHz6N6cxX2rf6UG+6T+wLzNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778371714; c=relaxed/simple;
	bh=cAAnv6C/OgyOq/lNlqTIGbBzO+xOPl6ot28g2JMh9ZY=;
	h=To:Subject:From:Message-Id:Date; b=ofL+wBfq5qXHx5JVn2lFEzDROidGn01t485da/ZY9mjh/7UrGNYwK6pFMiNJv1eOCfYBJNwWgpyT+rNfuiVBY/zdc7P5QJ56IsuT7SWJ6gcPNP1QlZkxRkXOZTXM865ulQzgt9Wa4UXu9szouN3cdQ7hW7LQRgvHH1lC/ro0jSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HV4Biuo/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HV4Biuo/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 14A33C2BCB2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 00:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778371714;
	bh=cAAnv6C/OgyOq/lNlqTIGbBzO+xOPl6ot28g2JMh9ZY=;
	h=To:Subject:From:Date:From;
	b=HV4Biuo/M93YCzLFwc+rE+yRsgnFoK0wSC2rhVbEpzVCyWtktKGKqeiCQc/usQUc4
	 83Ct9uqu+Q0xTpkylsNY2Ey2TC6zb+sAA9N9Ggj4j0P7KBBz0oUcVur+4DkJna7Yfh
	 y/XxS2BCrnU8AQJg3sw+mzjcfRsKiMNYx12u9mGYiF6BimHawMjkS6V/Q5tS5bKZjK
	 iA/7s03rT0CpfWIpkC2eFlSzA7HEh5UtJ20X+fEk1U4k50a+q0+mwKU7Ybdn5m0kEI
	 FlMHRz0A5QlXYjZkOBZf8OQ87g4KgRs0BOv8LsusPQJ8XfddGs0e2jwi5mpwRSVRC5
	 hCj1GlD6Uh7kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBFB9CD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177837171388.22192.10304558684024050128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a96c3969f79da45db9be3d3f882fb38d7bfb2b8432ef70c45f78bff74b8f9e6c
Date: Sun, 10 May 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778371713
