Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA7A32AAA0
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787286634; cv=none; b=ZLm70U6nAxMCWyFauQ5wSU2nv7UZ5mIevwg9jZNO2AREynQLQUVwstFIAydpIwQGSuq/ql7+yGSrmSukpgu8+wpV/DVJPcx5OGRfnCcjKqejfnaeVxg4TxP+tU4Ww4hxUDZqkZ2LCYdNxQMN0WnJtk/tGCBYL8zfe3fH9Glzkvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787286634; c=relaxed/simple;
	bh=L+Gv9z3ZpWMFaNq9L9xcRzHYns9pHiCtIMw7iZ6JCvM=;
	h=To:Subject:From:Message-Id:Date; b=WurHyp1TV3kWysJVHkJ940cGVdUbEMApgHbgR0oqqVP0xltO2mpPeC4Z1qt8fcbuoBvX/0plrhfj4a5RpditX5Nu4N99tuiraBLKbNVK6N7QVU+68dUK+NJiNL/NY933Ezdm1dbNJgqnkj0dmJ3cNF48vajJAYMOtowfShh6ozo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ex+Z7Ih0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ex+Z7Ih0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4E28C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787286633;
	bh=L+Gv9z3ZpWMFaNq9L9xcRzHYns9pHiCtIMw7iZ6JCvM=;
	h=To:Subject:From:Date:From;
	b=Ex+Z7Ih06txyS4w6zUvZCkPIirZYvOmkOfY9Q4GG2kVkuV15hrHVxqaocL+Jd0Hw3
	 p6GFcRMjSABRRxpu42QPTTH30wMt3MUtBcEmhluR+dk2fL8m5S68mVN6PIjvKW5cRx
	 VmpJlh5BO3bnSSkAcWwJbHxf+iJmFNf+bug6tvDua7zbxcl8HfM8Mg8fETITG6J0n4
	 TqLJggGGBqJEZCsDOdQZnhs8hoPg/mq9PKawLY5fdIg63fCyuq9x2PzWRVN9SyNHh7
	 F7nStlrH63fQXhuOnGgj473XlFvUgrylsnQ612IfbFJus4fHryhXfQcutjLMT1/mig
	 DvQeZQ0uBvQsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCBBAC5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178728663374.23034.15067985079783091748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fd430a70f38068fd5fb939f483228ed562fb5e6da273084b78c85bfdff43f25
Date: Fri, 21 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787286633
