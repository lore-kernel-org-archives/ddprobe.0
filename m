Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628C4175A69
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 13:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781788594; cv=none; b=fQ6Hc3H22QBN/Kgjr/Xsdb0avVW8lGxQhkK8HvmBjAIMy7nQhjqY+KJIvdFSCv5KdJBb8/L5JqyCHQHQt779a2QQh46jX7NHyLdnwnWwD0YUAEPMoLpaOTMd+OxYhK0EBDC/FQ0GziFjTE2GyTUSiu1BBU+89dQ81wrCuJxZ0sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781788594; c=relaxed/simple;
	bh=SdY9tIlRkTC+ezOxE+4nhBD5bZbK2RqNrwxME6z8frw=;
	h=To:Subject:From:Message-Id:Date; b=YpGLyJ0QU4qUx6G5B9xxFKhT8+7jbFo0IaBwnSWgf2/o4em2Nbjcgg6odE/qPCaZmp9aka1Hea2mD6i7i/Qw8HVy0IVi7o7hTYRqfG4ymd8HNq+hoF7PuzStNYeYSrPR1plmUV50qVeHP7JaO2d+L6+rabJy79upd9yP3yDkiNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P67Apf9d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P67Apf9d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF3F1C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 13:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781788593;
	bh=SdY9tIlRkTC+ezOxE+4nhBD5bZbK2RqNrwxME6z8frw=;
	h=To:Subject:From:Date:From;
	b=P67Apf9drYAcpB8bHbYMbIm3ZeDCnaJdywnT2ppPmofp255nx5E1P3hiMNrTBAGTF
	 qYdPN2j6LeSTSAgtnIdXBIxtIg0+Qp4ArUuYS8RyRTBHTR0chZLc+DwZafV9wbgrp3
	 PuwT3tMXxrvYKfSQff6qYaG/97cU7TZe4d7igTHfyr77pRjwgQOfUNiM4EObSy4exa
	 aKqe4gTs1RjSjs17E/u0aw2KIhEWT7CstUjpkDHukqQQhMPle+8MaCNYD52HwKqIsL
	 c4TcuHTRX6BEvSYJsUNMt9lqsys4AoPFZWBZzPcSK6RgwBV4s56pIPp03YiqxzSHKn
	 KsIxYch5/T0aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF322CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 13:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178178859370.30726.3050313900834213687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 574aad39037bb5e49a091153e5e555f00ffefb975540d8d3823a6762e4a8f4aa
Date: Thu, 18 Jun 2026 13:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781788593
