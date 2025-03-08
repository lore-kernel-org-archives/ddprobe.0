Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B68C79CF
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 23:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741477135; cv=none; b=FgtAb/aI55fi0Fk2L60eR5faY1/kIYJT94M6b3HStnk9G7ak1RQ6nVUrcflk+0a5FYRyjc3Z4+SDzLmkaepkgeRw/TDLpxRXzB+dVrKP+b+ynwktilg0mWCJExBpS9GFMBk9kOBmz0XfzAF7xLrtK5wrzaDydYmeP+b9ltpgZlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741477135; c=relaxed/simple;
	bh=+beSWcA6TgSO3y7gLJh4LHMGlh7s7t3IlRtQ/2ZcDz0=;
	h=To:Subject:From:Message-Id:Date; b=q5HH3sXfG+ShclliW0LDSXuHn/xBloBD+tlGuHcKUj+V9y1tKN1aizRKExHRHhU682ZJGuzBY813cXHwvn0rPPb2NQvh0ETujP6jp/sLEQrqwWoqXNeWO7W3sRczG/MUlTbq14VltjgT7IsTrhjNOm+JscfCROXPYVaoCU0k0A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVd+oxoI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVd+oxoI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0A9C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 23:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741477133;
	bh=+beSWcA6TgSO3y7gLJh4LHMGlh7s7t3IlRtQ/2ZcDz0=;
	h=To:Subject:From:Date:From;
	b=RVd+oxoI8znckfSvuBsnOxYkQdQ/zw4uJdybPb6FLqGAgDoCgmmqNBkFXjpvq6qTu
	 JQp/HQ27mqXtAsD4IA58/38S8ct89EFPC7PjbBE44km89XSafY8Kv/8fdeSIrQtpAO
	 zS7ereFZiHc2eI+lYKmbPMQURkyHdE3hyzt8nX7QhEFaFA1byqAynFZP4M8Z3sHyxv
	 kszd+3LfLujrHysXVJtIE8vUMzPgsXbvWtLtkye45EnobUkwkmQIfnrEEMK7N4Q6Ei
	 cQK7MaU7hpxu5DGTGMCbkqXV8Vh8U3Cv9HuSW4Mrn5gznp/ydX68Jz1tIGnAf/Eql/
	 svCJgxIWXW0fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A870C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 23:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174147713361.16624.5545491259522843429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 487b32f6f6cd3681402809e17cd1488b764a54c010b4e3f51409fee74734e73d
Date: Sat, 08 Mar 2025 23:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741477133
