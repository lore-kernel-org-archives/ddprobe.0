Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF3820E021
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742309994; cv=none; b=KSmowok1c200ziDy2stXxjbWOoN7t9nGSg9h5aC9sDLykF4kYEjWlXgeENMxql1/t64WS0Uq8zg1XOg+kq4Di89Ffi6KuTRj0ckc99QUkYzSn/XMSKyjKRUmasd01ARqnnpunlNzXG8XCfiR/jpm6LQDVAy1rqVMcrMlO6o+OM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742309994; c=relaxed/simple;
	bh=z0W5FKgBgmuRNpUcUigBQTK00tWV4/yo6f410+eAtBU=;
	h=To:Subject:From:Message-Id:Date; b=UJ+ndHO6OT0N73wokOjyyrLXjJUp43JCRivbS5KRcdGgmdX7Gf8l1DwFdLLx30349FkNmNOp/TR22QucesEt05S4nKK7DwLxr9BJ1uRGvgUztmdT9a4NQ9pf2MaTF9wFAZwa6OtXOyNWFkhBhIB6YzGJzprIeAm5+lm2PVrVYRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7TNVTkC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7TNVTkC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A34C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742309993;
	bh=z0W5FKgBgmuRNpUcUigBQTK00tWV4/yo6f410+eAtBU=;
	h=To:Subject:From:Date:From;
	b=o7TNVTkC1usmrNN3gn4DRVJSmY0RaxwXsx1qlxexk8Fi8r5Xx5WyajIzxjZcftJzh
	 Z/g88zXyd3r8sKj7KMiGjbUIRR0MeQDV+2NxvFRbviJFtgAjN8m7zp4DhrbyIgDnp5
	 pbpNbUE42M1JuHny2BFWK38R3/+/8hyCFobvkH1copYXZx4UVVRsjmp2btiIglOPWB
	 7QCUF6Iae5zENvIN/cc5DB+9Egvmy7aNQK1N8gxx/qo0lxTRRq6BZsmy2EdJLgUZfu
	 n88wOz6IVnN3kh3oZpn4XHZQG8ZcO09hjYDAqNhvuluCGZhSV6s79jaSfMHrAoboix
	 IWFFVDmAEWL4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA465C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174230999368.27809.2486842860556415459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c88b968ffb9d620e89c4c5594e5230589c852587f137920244b162fb03bc6b
Date: Tue, 18 Mar 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742309993
