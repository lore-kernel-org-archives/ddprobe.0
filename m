Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A862BE04B
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761774594; cv=none; b=h9doTAXbg3P0Ao3CxSVJS++1KjrcO8RSUcmx9wTQxV4gUXZ1cIOnY0Ic2l6iIkIUhiklZaBKBHiXJBHZT8rqn+ATO0MWkHyw/dgxIwZlNkcjpO1YsJf1rLUkJi9aVbEKwfjFZYnqXoOD+Lt63Rdfv+InbabIH5U8zyqhSTzSGnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761774594; c=relaxed/simple;
	bh=5E5+tlsqz0GsNnXw7/DN/2Uema2vGznZadCsrnEZ9Tw=;
	h=To:Subject:From:Message-Id:Date; b=GD0VJoWGjVmkWI+JClm18k9kxIqAYgXLny+yTlP2k1qKzhnGv7FNiQu5mz3EJA9C+zLVfce/CHUFU7wE4Smm2/4+cqF1FpZ7bf5s86MlYP0BuP69dzfim2CjlmUZpr/Dv+MyTPmw3e4/pWLWZ+lU3e+lxcrVzNlwLbybfkThxko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MoVqVAHu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MoVqVAHu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0FCC4CEFF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761774593;
	bh=5E5+tlsqz0GsNnXw7/DN/2Uema2vGznZadCsrnEZ9Tw=;
	h=To:Subject:From:Date:From;
	b=MoVqVAHuQaRcUcD0CDovBF+TpQYtV/Aj82rmtH5uKJs/EdIzKlR1nml50tDcugdV+
	 NXe0SL86KoG3qWMoVa7RQ117iKvpIUQ28TAqwIbmlKcdqahmyhoOfGqlUcphjuRvfb
	 PZnF/74txNfFqBw4zLWmoGcMQ647t5NNGfJ/t27KE851yJK2gbvL/uiijuTv7mDu2C
	 nOvPIockE304vr68ei7y/A6BMofXxDFf2apCOEHUYaqBCtaxZ9JYpTgZvtHhLc1C0G
	 kcwMVyp/+YiWb/73jViAtjk/XdntO6H2RSrjphjkC9xe+gHaxWn3lfAmAXiUnKmhdg
	 WXXHjt6T0H7vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E57CCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176177459358.16955.18385850875072422568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdb6d1262ad7297fb7e29fe6186688cd373fa6ba6606a8adefc18cc70dd0d9df
Date: Wed, 29 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761774593
