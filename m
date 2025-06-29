Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA16E226D1F
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751207393; cv=none; b=PSkkEXEs3JhKfF6WB9MOLT2QAEnLh37mGhylscA0xJfYZy3YryEdk3NguAYgZWLLqbF59fMIlmI0l7s/k9YGp+rS+4MSYxun+eGlJq4yHBKjFtHRPUFjGiVcUJ0IMulv3KwG2w3zXSb5++Lhv6S/eqc5cBEZoq/ENuAFc3sBCdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751207393; c=relaxed/simple;
	bh=+h90Z0oxTclU1PH/pt9v5l1UxDQrmEAmvc4GKQlWO4E=;
	h=To:Subject:From:Message-Id:Date; b=YaeFvkd0gHS5V5ZMCxYuDVSlvuOBOv1iHpJj/hzKoR0NPoWslkpW1O8v8g7UkdIVTM++my6xhfKF0EN85tBTPzYNgCroesePQ6GqpzzAVjFvZ0dj4AKkKWS8bJERTsjhj+/q0uqfXR1+gaPUpi45hqVVUSFcML5yN4LgTxSRlMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFhez0BI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFhez0BI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6BEC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751207393;
	bh=+h90Z0oxTclU1PH/pt9v5l1UxDQrmEAmvc4GKQlWO4E=;
	h=To:Subject:From:Date:From;
	b=rFhez0BIp7bKjLXJyIRTZia/yJMlbFUjFInlGJOFn0AGofmDHcPtC77NpbgN5P6/M
	 8wYj8N3Rc0i0/MNkJXYyHThKZRZ+NHhFFPN3BOhzaG2U0cWVfuAY6keZ1FCbRS9hqz
	 O4bvr1kxOGbQ3mmu7bjI60Hc7NPDl+YxWZVd7s0zQHhFqXwJIKo58708gvGeK8EjdK
	 AKlDlBdHoSzORNIqsFUrWrlzpQIWLuy2CIO5WukEJN9LDXc8M5EWSXHWSFH5OEJEKB
	 XaNcg19TNE4l3697DSp2jpRh2XVS8s+fynu70sEoH+JxI5WBXjDR18iUjB61uT9pkH
	 YQojyHWEjDxzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB00C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175120739357.18455.17332971287461083903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e85a932ec73a1a9cb9398f5ddab1914db4ef59136e7ed3ebc5a559735909e0a9
Date: Sun, 29 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751207393
