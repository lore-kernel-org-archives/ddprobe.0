Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FECD13A26F
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730962554; cv=none; b=EqLpcOR8NI7YWIGaAypNfeFZ1vE1UPQqye0lEqO0Ilvc7lD3jfMWp56D3aIOB7v7GVwwKauX/o6kAndwGYXOBo6W6NS3Fl/sXuQKoYnJNVUSv0GwUpUc1ev/XV15i4tTGwh9Hdk8ymaOoSob/jA5JBUQGajt2/g/d1hP5qorSGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730962554; c=relaxed/simple;
	bh=Rqp13H8smkViijK0L40pma6S1kemghIMpKDKmhrZLHw=;
	h=To:Subject:From:Message-Id:Date; b=PVcKh5TtN8MKgikQcjd7LI2ADkJBzjEwRsTHPs6fJQQTfOxIIQTXS8wP/8GDpmg4QyUbkYiB1p6mDyirifjD69M4KIKHgfhNgwl0QAUVeF3Nq6XRgBO+W5h514X3h0X43fxcmKk0qTknIeDkQwmU99lzYoNH6ArhOXDw9arro7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jb8O62tv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jb8O62tv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C89C4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730962553;
	bh=Rqp13H8smkViijK0L40pma6S1kemghIMpKDKmhrZLHw=;
	h=To:Subject:From:Date:From;
	b=Jb8O62tv0yiOVCLnMXOdJ11sEhtQNwBYiyUHK2UsnJG+n8HWRt3FV6XZb6aA8LlL/
	 u3f7qqknJDIMVKq1CqDn46K2AYfR3qa/UYKEBTR2gZYaKCNlY8agrOFVzEctG0DJUJ
	 4gFsKwMzGtH6JVdZ8C1U9nrFZsjhg0ansNSjb9ZW35M6y6xa19mVbflbCIL/5jEMoK
	 1manPxucta7+iR+vM4AF1hSoZ+fpdicqxf2hKnCQpmcniSZ4JJ++Rtva9uJf28xyvB
	 ryClAi8KHwkJd8sWmyj5A5pGWnjkF7O25ePZ248dMBeyMlDQSp9cZzXUoHHRbhvl25
	 GzqP/73VhT6FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92540D5AE6C
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173096255359.5962.7294913791680545041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae1dd67ee292f5092943a988af2755754c91a33f4e5aea900bad49fbad5a99ac
Date: Thu, 07 Nov 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730962553
