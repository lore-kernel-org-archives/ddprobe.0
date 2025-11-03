Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F6D283CB1
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762137594; cv=none; b=LssriW1E9s2eGx/qZBOGonvTyZlQKQRpp82DG43MCqwWkPsDMCNnjLXUDZPAtObeR2F7RSExpXtKd4ONXkXhEXlxwo74aOViVEHj9eF8qATMvERPAjd4s4hrwVInLpFiboQuHGtjcuDdiPG6PslwWcq7R/5b+9+tSpDSQpduVmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762137594; c=relaxed/simple;
	bh=vOF/Yl0Qit4R03xvTHa81XqLM03jkA5q/IXmjuw+v30=;
	h=To:Subject:From:Message-Id:Date; b=TC7hanndl3dORkFZAxA4Q1bYzf0jxXmZVMjKQZfRE0Z9vVOemp/tgAgubuMj1EYDVz/28agQnfEOwAh5UjZ2Kl2cbwYYkMLBsBx8BZwnPLU2CeX8MEFOxoTehC7tn4Zl+uR5zvFCmCW5bSz3xTiVTiko1SftiYlKV+LdlIYHJnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lp8UWYbA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lp8UWYbA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC97CC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762137593;
	bh=vOF/Yl0Qit4R03xvTHa81XqLM03jkA5q/IXmjuw+v30=;
	h=To:Subject:From:Date:From;
	b=lp8UWYbAoeAdzAA/Rvx1OA0H7CoiZsxrHbu4YfFJcmJ5MadqsoqPYAE+59rAAIj9V
	 uDnH7+nu/UfbgB9LT9kbI4fqjNKogDxFwBnfX5AKGyuXKJv+A/njA9ZnFlfcPXnahM
	 ey6SuLlz0kzKi1tIGYVAaecUQl+xxjcSzre8gqil3LbJWQ6Cq63SPJBAiiB1mRM0VN
	 ckrgudVURadEn/0gG4V7jWDdeBrger/fANVIrOQjloI+fbHAb/lQJa1PqTt+006C0f
	 R5GyBAqDvUtWqf0ao+U51vtv8lx21g9Ji5NEHpzUK8uoSGVaSX8Wh5LFYb/ejoCtL/
	 R8hlSv4i1SHdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974A7CCF9E3
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176213759359.6030.3479453653815969815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 009f6a67830b00154d75e79fb0eaa2d218358a53ecb582d7069fe8ceec4dc74b
Date: Mon, 03 Nov 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762137593
