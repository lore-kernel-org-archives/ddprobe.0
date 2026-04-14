Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C162C11C4
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776143854; cv=none; b=A700tmqddj0rbt0UyQdXJBO0dJ60aGp0IyS3sQN3OfkPKzUtlwy7ArGIV6ekWBU8JTGItSiLc3m+n5H8FaVm6M57w6VS6f4Z14CiQzUViFEjJCPenrN1oawEiQuIzL8ugbraXOY0AjX8ewsfnFvMUcpNH+Ac8qq4PwOF/HbpVlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776143854; c=relaxed/simple;
	bh=9Y2KOfwXAepL/jrEIM4fe1IIIU1/F0ZqlI+y8SyseOs=;
	h=To:Subject:From:Message-Id:Date; b=mn2lxzKSYY0DFiSerVmka4epQn0haVr9Apq4ECCCAmZxXqw16wN2cPAI36hCXskxhcBFTfWJJxMa3dFBUBtLbawv7aL8IYiRzAxvBYUGnr3vt1Lm7dc1aOAWZYuvaT9B2aj9zvbbO+C2GoenUhdHHDXIm54ALVghmYzWYKlmgd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYdQXsMA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYdQXsMA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0855C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776143853;
	bh=9Y2KOfwXAepL/jrEIM4fe1IIIU1/F0ZqlI+y8SyseOs=;
	h=To:Subject:From:Date:From;
	b=UYdQXsMA0y9YmW6Ee3E0TCjDiKyXVTUUSoJeqgPsH8d4dQtqobRjDwtWTD+1FzIoh
	 Ru++Ms0ijQXsDQoc3OsHkyIXIBmNPJ/VyM5KEBcwPr1fIV9pnQe0HDNJkatEn9Mtwn
	 5MsUi93rL+F4JXx+PwIzEl083cPkfdJM29KNZDXE4jLOGPYpxrzJDKz9gur/nUC7ZJ
	 NxQHNYjSjLZc3w6nJ1jWXUEnroAVPbNHg0l5avrWMQwVEV6eYtp/IzBHvZ1rVQGLbJ
	 ixBirQGeVaCSmu7YpH/8iexYEkZYmr3unCJOLuRXFdh7vuarX4L30g6vGkieJXyw67
	 ysxjpfKSuefMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16FAF34C7E
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177614385369.8404.13439780344050325418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a336d56615da176b9b4643a2a343a139872d13fc47b4ec78846c3727f82b4d2a
Date: Tue, 14 Apr 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776143853
