Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8A629AF
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729314954; cv=none; b=iMVgFXtZG6EX+BmtQ7uDVLcyIPI62J5ATWOm1AsyjBrTmXnmQrwHcTbqboL+vRHX8ZuM3LrDvXl0W5ZTh5LhupEF0uI7FC4iGU9tkSQjgPY+vngKKH2sgN1xXLM6sJxTxxKY38dkkGl592zH69gC2ZfoBw2pweARSuohv9nbMjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729314954; c=relaxed/simple;
	bh=b0674778VstUiYJ96pmSHG/MwD8796QxyCHOf+MNtgs=;
	h=To:Subject:From:Message-Id:Date; b=M1R3JnHVPVPcOgyjtLgHLfI3v/BPPkKneLaDgVvsLmArEtQrYJj7isPrfMlT8nL8HrbQe6oWYW2oxGXbITIJMT/FHRJmkW1mJornzuWzM2qW6M4/LLfaa5kLY61qpWDsQYMuqSPlFCiWhrSCsSsUfeq6nBQ3uypae0sjmSqF4Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=So850Fwh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="So850Fwh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E60C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729314953;
	bh=b0674778VstUiYJ96pmSHG/MwD8796QxyCHOf+MNtgs=;
	h=To:Subject:From:Date:From;
	b=So850Fwhrza59sXuIrVFN+O+zhVFWxB4vRx4v7DIldM6gSpRVoi4Q5YeaQyZOzVO1
	 udU+zwkbi8lckfPzf2OB49qDRceyfSfihY1DEIXU/HXUv1/d2b8sXdQlkIYfT6Livx
	 mEHbuqCjDDzAQXlEXPUZpI10vMuM9KYpyxHk9jQ7Dz4fioUk6MUurEmdCvxZvbTQGO
	 GQkbtL6xrPSyPfzwhZQ2Mc2LDaeKXH6e643K8WSU9mXPgVpFRUByq5DLwv2a2J467t
	 WD+lt5nfAxdcx4Ldye54ImfLHpbRKFHzH70reG1cWBkyWYeP/Kcd5Vj1csLvsYl7hF
	 xZuuYOuh0XtLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A2CD3E1AD
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172931495362.29804.8282333785922461524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94690803cc461e72d55811d66da5ecc3afc6f759bb84c6da4302e15635917c2e
Date: Sat, 19 Oct 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729314953
