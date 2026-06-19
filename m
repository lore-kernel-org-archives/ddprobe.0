Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A617F3F9FB
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 03:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781841394; cv=none; b=hzCqFhbeUJYYKg9p+5IPjlJEn1hfa7V8srLdKnAu6V3MgU8qk+PPsEaOLqbDCQNJJ41vGeblIhrrl4giLqhPoIAEIJ4NoLutHgc/3trRlN7He4hKb44xk1jtI40tvQZLkNjMSrxUOwWekIY0zc9MXa9F5a+7P6c+jLBj++pbArQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781841394; c=relaxed/simple;
	bh=o7ZXs3C/Z/1aZIppuPZLpOlyEGu9dmnvVXVXycJO+Yw=;
	h=To:Subject:From:Message-Id:Date; b=RwcAd4tOWrj4alYySAfo4bCtGKwd7jMKXF5BDJr/r4E290QcOEU/pFxiEHTvjxavsRXJodaXCR0nPOol8/QNrp+57mcLi1Ixz9PyJ/2m6J90L018XCWriB5uNZn735LMwH2Qt0l/B1ja5y6SQ8pPrzul7Xf6H5v9+L7MiUDRPgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ye6l85dF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ye6l85dF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D91B1C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 03:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781841393;
	bh=o7ZXs3C/Z/1aZIppuPZLpOlyEGu9dmnvVXVXycJO+Yw=;
	h=To:Subject:From:Date:From;
	b=Ye6l85dFS8/RESoegybYvXCJ2z0R7nLbBwK0WmWPLtRgamgGd5c+d2KgfABkKjvQ7
	 7zyx5kBGwYjueKbcjth93Na6xO1QTWqwLtkXFCBTpRtjB5JdvoqDF7p5doK+90Ts+V
	 DmzyWHkMhU0QytV8bjrCnDYMuUm/xRC0wt96xOidcc3PQ2ah3ey7lc06k8J30q+ofm
	 zDog9l9yM9K8hn2+6RvD5jOogwZzdlLAu+ftdekwZ+ffZcrpTW3LRjJ54TX8GGfTN9
	 bU2BUK+PysE61wS05u+eXvwqzJ/b0kCrnhm4T/NtvI2Am0shwtAN8fwVHNTY6krFGm
	 HGqRgo2+nVcPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA1ECD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 03:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178184139368.3119.16326450534096741084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb860fdf140a71fccbfc4506c1bd9b2d3f28eeef10dc479a0d79feed4028e62d
Date: Fri, 19 Jun 2026 03:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781841393
