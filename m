Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 925911E877
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712780296; cv=none; b=kQFl1YPITQo+de+fL16J3peesyOnUb4vbTmy3mkziq0rFndNe3ZXihYwAeRmx6WoQu7piuiBcfq9MVTkt6KqaW03O33LP8v1KZEmW/RVeX+mRkW4Ok+oAG8ajtgoPqp3eHJR0T512oXksPqVxUwFtTjCH0jIxb9E8lLiBbfFLAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712780296; c=relaxed/simple;
	bh=U8EMn6G1Waoep5UTHbmEZOOyo0Z9JXTpXqYfd2Pa4Bs=;
	h=To:Subject:From:Message-Id:Date; b=Fh83kRmwtPsqpLHlJdamkyAYSLlmIxd7xN1bkB/JGvYD1CXGXqPyrDhcnZVtztFg11n8LHsWJ/+E5z3va46VaM6WwK/uJX6kijHhMmCjuNhysltDIzEaYeWPRtwjLnvKpEiDSvaeWbJvrmy81GLu1uG0fOz6kYF/kpjU6HrK+Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=brnUuGed; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="brnUuGed"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7666DC433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712780296;
	bh=U8EMn6G1Waoep5UTHbmEZOOyo0Z9JXTpXqYfd2Pa4Bs=;
	h=To:Subject:From:Date:From;
	b=brnUuGedXSml/FnLFedRpjlFgZwGILH07JbeBlh8CnRgTsH/fW2LfO81v2TG3oHY/
	 KnIV8mDjjm/ZmZHna+q4RyawVumLxtCqa5cdL6K+FOJRJ8eGRn7nLisK/217eNpNsU
	 qB4vW0xbZKyDws/vXicFK8rYGFwzjIKGWwIEkX5IBtmcxSi043bqguodelTark+bDm
	 zyKOLVloh/XZyjCpqy/ahRr4kcmXd7+qkJVUNHl1jAxokZG4G2w6+efkNzM/kEe4UU
	 mpVecqmmVTwK6Q0I47nd334J9XcI5/9MZLPU/cIF0rlxUWbCT/VXKj2sZZMArN5ub8
	 lE8LE4rHpHPHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 695D0CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171278029641.474.497038347843028100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 907ddca409d359fbea8ad0afc35b8ac2b9ff851795ded28f0a5cb217e4fccf45
Date: Wed, 10 Apr 2024 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712780296
