Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1845A376F1
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722626754; cv=none; b=Ty0WU/mkGe3XeJGQMovAjyEvBOGgHonVjZ8zZPbMq27xaaiKiM4QkhltWTPdsyiVSQc8XZQCi6vJiZFJhihtyni6CP2nZeetP46jCZd80+LJWTSMLdJsp8J+Lj/Dyj7ImF9VjErWVICdyzG0dQVS2LBtOdgjiHqax/3OayuST20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722626754; c=relaxed/simple;
	bh=qb1pwZTZQjNAV1gTZzze6l7gTwoV0e5MFqpPutZsmpc=;
	h=To:Subject:From:Message-Id:Date; b=RZ4MYD63ei0/Mf/S7g/mJ7oN0AFjKMjbENHeuEq59N8SSp0zpdmGQJ76XT/Jx+QgyT9HpwuepQtfI+RdwdJbMnY0DU2StioS1bkkGMjhZLZiAGiuqck0jxBo/4eDHlirEeTFZWp2cv2rGW0YsnDT/u55hSq6fVUDIpHAx+QvpMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qncIJWIj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qncIJWIj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD10BC4AF09
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722626753;
	bh=qb1pwZTZQjNAV1gTZzze6l7gTwoV0e5MFqpPutZsmpc=;
	h=To:Subject:From:Date:From;
	b=qncIJWIj/LDOdlLN8lrPCx/Omnk68ug26D9gKe4COsD38kgvEH7cJ8KO7yZUuYaqt
	 6z3vyr95z5EjgIjl0Kmh5p8h1fsu2j7VJexvUH2w0tHNZ2vRuKA/EUGvwqVeyq1B/E
	 tDkRGRjLmmDrd8bcn5+ZVl8TYG27l9VJtNOWIoUYOvXagQwsSBAMDReVcnK7IXG/HQ
	 5Uwpo7XBcbqax3lTv5J2ayuSmTO9cpIQqyHbsmepcq9SWujBbA7TXFwFcf14coNoI/
	 fPnRWTuD6Fw6+OlWfSjv3sV+iGvz+XAfcJ7+Xm3X9/lbd9xWYIdI6KzyX8LsZoKc81
	 9/BpR0sIRvO6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976A6C3DA7F
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172262675360.3686.1549439326794463492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef375c39458bb4bf1eca3adf03c2c0097d6214aa97782490adf81371bc8d6faa
Date: Fri, 02 Aug 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722626753
