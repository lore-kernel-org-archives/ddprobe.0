Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132752D63FF
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762598394; cv=none; b=k7JNN0JegVe5W/5gHeQukAvlRURgKDC0kcTbki0tC8SYOsVeYBaBE9ql9Wjz6ZRehAVEakRkyQr83n2do4lZE1waZyxvH29WxdTBYW3rTTko1CyPBVe2hjKLluN8drex/q7zrHi07blTaO+KCirIUPr/7SQaNRLqijJEFvXb4oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762598394; c=relaxed/simple;
	bh=r3zBLeZu35qv5CY4jIPUPV9Um9xslieYvj7uga+w6r8=;
	h=To:Subject:From:Message-Id:Date; b=lFkUGIHfmcxFSCZ7uqm297YxgVNCnOtuEiZY+v6Rpap/r/bi9St9NJX+Jz27vnBjMuFG49U8GwugO2YGSt4gYU+qiJr47wOufIaZFrbNzRBDRDK3qOWZPmoQFsCra43w6Hwoi2xMto9MpXqn3cDDFD5HfBZsoGKdLYzqX/aTf1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WtAQjujB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WtAQjujB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F966C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762598393;
	bh=r3zBLeZu35qv5CY4jIPUPV9Um9xslieYvj7uga+w6r8=;
	h=To:Subject:From:Date:From;
	b=WtAQjujBpKRrYhyqtuCCUsDHuCqaw5ymlU44G+BgNSlDnpukjT/oK0eOquoODQvVC
	 2ASb95gbBJciFjAig7h6Zx1hgJu2waIornt29NwfLJ6LoOyr/WRiQguRnEFm8S5+Ze
	 2JSXHts0LZuwSaqIwjLlcHuLKx4QRy6SDuM2IFfLIk80WuHkDkI6xOVEU3UNSpT5NY
	 zdB7lihG3rJ08dxpFKzGNekzzyzzzzO5j4fAEkpRwiXQT4VFOIfxfWdfCxdR673dsh
	 9kROpEEWRXHn6JpD89yLReg6YYmWGRPfQHxOIDkZqDGlYsR9SCj/QkmZ9VsxRqvK2x
	 b2yZmunnix52Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D93CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176259839357.30829.6743096576149775863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbe7f0a3b9d3f28bbe3508a47c2e72b6fe91fa546dde2bc03f71f5973ceadbbe
Date: Sat, 08 Nov 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762598393
