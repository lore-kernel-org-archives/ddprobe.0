Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6BA13D518
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735335354; cv=none; b=Zh0AZNOVw0XLTG02yMtRA0bh88/iuHeo/uXM4mxyNaXfoh92Xl/+YhUZC2Xgp9XJyJhXQpQnetGErNaPV8uXye23DW/H7W1DJvZWOYgm3puMMxk5McxRowO63c8EMqbKtuoy11I4dt/E5GE6fsK0Wy7gJXlAbE75wxJ4QYVVBZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735335354; c=relaxed/simple;
	bh=HuWUxyoTt+JZqese99LxP/fx3OTpJzow1gUTY/XNMAw=;
	h=To:Subject:From:Message-Id:Date; b=W1zgHJgQihDFJ2A9gcQ56sJP7KKSJmHIJWQNCSPHc24mVwlswYNP7IBR1ONQuKSeOiHVn6DS0DPCgsLLX+Oe49EPfSIJTWooehFWKbTUH5E3La+qxAmTIczqBecM2Jnl5IVYPOjRNeqanmHUXDxsJyZ32tCQgVb/DA/7m5Y+TU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rfjmNhe/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfjmNhe/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B76EFC4CED4
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735335353;
	bh=HuWUxyoTt+JZqese99LxP/fx3OTpJzow1gUTY/XNMAw=;
	h=To:Subject:From:Date:From;
	b=rfjmNhe/K0lF+zlYeGT8lsc+ypQJSBQbVQX/8RfUYnIVI8HhAG48ZHSE2hDdEN+/U
	 ZDd17yRinvEbzUvALskG/HKWXENhfg1CraKqL0Yc0lF64bucC9iQklV5SL83oYfpqy
	 X6UjDIefFKCTbs0D+5A+Xi8OpMZHG2vNbV0z7rw9/tmwaSqvXHmZlGaH0ZVwfEuMHu
	 THskyyTAHJUCzSO3qvkUbqdKLAaXseUNxl+LMQ2+7wkeH++1B0H/PpuH3sHK7uQscj
	 KhFbdqV7E/ECA+zTNRRnyFZkfydHx87mLiux/NN3h3PQcdg0PCDoWoium0VikLNTiV
	 ijFPtEFsaqsNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98616E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173533535359.1421.3336002841918980931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d05c7bf00273ff69d24476f8014bbdb650f36c4e4e658f89997bfc6b8440d861
Date: Fri, 27 Dec 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735335353
