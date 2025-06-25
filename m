Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EEE72D4B66
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750874394; cv=none; b=gkIUjNL68KqIU0Zsg5wqT+l+fhxCGuvh3kFvt7lIWv6m2CwG6Et/Rb79uS6QSKq2Hq50O2Rc3FnotCyGKKduOvJ/4jfbDlxEbklG7d/CsI9nQG+7xLhqiNYvUZMM/wVFSfNosCoOSnLE91zNEb9oE4qFYzLJyu7mpE8zmFm3Caw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750874394; c=relaxed/simple;
	bh=QEjHQ17tKIzDwq2uq3l6fV0Uraz0Spdpmc5Oi3AzUz0=;
	h=To:Subject:From:Message-Id:Date; b=khS+6Sc7crqX880G6w1JP0IvGoFHEvPPb983Ax0LpZx+KxBvzwjhGyTtbQ4RqDAvo6ntcG7IzHK+iKYZNgVAZBFzUiO7IkXRVIqIZxho3lpL3PpCnmc2GpeSYW3hTLg41AIUtMJFrYGN+IcsP0hYDDKkD8EAD1txETbN4cO8h3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7KBwL+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7KBwL+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99E67C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750874393;
	bh=QEjHQ17tKIzDwq2uq3l6fV0Uraz0Spdpmc5Oi3AzUz0=;
	h=To:Subject:From:Date:From;
	b=k7KBwL+qEDLeBnqchcQDYE4uZEzmgWjF48tHY15UyD7AKtqh4Oho3fCGCZb3IQNWz
	 NAyH9NdyuQQuhCCUBfg1aqaqHqpDthEp+6XF5HumyDjFeECn6ZggvKlvgJtVOtxKww
	 lXICGmkzPw+PwxqlJV+a3HDc8sikHy8XK57LqtBzbU2x5+tLpfHh3eKhLkoUP/WZRM
	 sWlK1NSUddMgVBPW6GrzA/fRN9CYvc7meTZuj1oVo/FhuomB61g55UvZfcJi3Kz+X+
	 m2jlsIZDzQmaoentmVjok+lmpXsSVa5ub+YfhJ8MksGGeN8ZfsHigTMUINAwq+MVIk
	 eGqax2+VJn31Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E950C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175087439357.16171.5280600331708985027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50132b89c242a12d7ecae05830f879e1110318eac2563277ac0a0263ca1970c6
Date: Wed, 25 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750874393
