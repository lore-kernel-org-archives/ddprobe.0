Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1676D3597B
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736189754; cv=none; b=X3l9m4UKadbF69n5A7h4FehitfJaSr8unAW9mWZo0c94pUlqK5UpS9EjikeCkoT8UfOlSDEuwS0MAXqfdqU/te0AjiXHoCMY+qwURxNxzhtUH8GnX0CC98pVLDrPhxZgjbH5XtiynkHG+nzNknSjVvdcDBKKGBxvlIM8M8GEOVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736189754; c=relaxed/simple;
	bh=E5SWX8g6aUfE1C7GC0s7bfKpPtwA5cuk7G92JQXEKQg=;
	h=To:Subject:From:Message-Id:Date; b=OmT7NinJxe9bSvFl6owjVXLXeFwjBtZhgN2LNerY0U3j5nJF4IPymp7+ESNPXaDAKUheXMtp6UB+stB9Bc5xkrRM9J0Cpo2ape6W2gumLkqfDWk9ePICYXV05YDTQKzs1OlBo1TaRSLvvLjjVrvBYwH5fz+N8pf/w4WOdduVMFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LeMU7u7E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LeMU7u7E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B37C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736189753;
	bh=E5SWX8g6aUfE1C7GC0s7bfKpPtwA5cuk7G92JQXEKQg=;
	h=To:Subject:From:Date:From;
	b=LeMU7u7EnsrqN15IKQfw27yo3iAmiR5nyk+KIwp2Eyt5D04lb8yY0ILkcQJs1+LdI
	 Ck59Qamf/HQ8S22wsdLZN8dvZDE0R8rsX9vXbKRN5vMcTqkcY2x2wtoGd5k76A+hRy
	 9iJzNIzlmfg1biroJw8U0En5GQiaS3j7z3wARd6bpBloQiKq1Q59FVO4WytbzhIJhJ
	 B2jOVyttZxtGFFLDxK/+v15rfxo1emoqOj4m2ccUD4Iy+Quap8gJWPIlVY5sPB6HCa
	 j1tc9fzdVRhyhZuSyjViP11lS9wBtFe8KERtV2r3QmWOr07cHGakrQ6I3FC5478RUA
	 WwdWzSqUQLZzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FAEE77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173618975358.448.14802708192294156639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c354ff330b098818bece68d94e9c20fd38647c1f851458ec6cad9c278368f5d3
Date: Mon, 06 Jan 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736189753
