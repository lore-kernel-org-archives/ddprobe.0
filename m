Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2780918FDBE
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757536795; cv=none; b=dTyp+/DDWgKp5Wfq1RI40oUQgN7/vKC7KNyn037UJw6MAx1B7sxCqjI2x5FXDLv+JdYju2+8yj3Y9aNK670TY/CN81LbfrRQDDh+gc+E5BMrFbYlbQFzD/U7iYns7HpL0PtFimazfrd5fk7VxQd9Sqln6ul3Ws1bbHlokmiD0lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757536795; c=relaxed/simple;
	bh=gdDpgJ2tCKa0XUi3ZdaprnCrP/0g8Byy3LY71tuIWjA=;
	h=To:Subject:From:Message-Id:Date; b=r2rZHB12XYfRS2uVMTOhufujSaKp2P+EzFfLAi0ecFepgFkzj0jH6A+Z+0u4gCOqiIzrcWOeIch31qgKAJ7rcsrfo+6DRcc+6RwT7rt55HdsnaqDqfDpbeO93pOOrULQ2PWuCjsje+fh5oACdSKvD89Socl+TfGlbGVkFq5AOiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulWlSJEh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulWlSJEh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1CFC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757536793;
	bh=gdDpgJ2tCKa0XUi3ZdaprnCrP/0g8Byy3LY71tuIWjA=;
	h=To:Subject:From:Date:From;
	b=ulWlSJEhF2EGC+FnYp1ureG8SwiKap36IENJPUyXUC2QsURlEiXi1nSeKitYHDfvn
	 cx36gErk/3V9HBUnb57b9YIfVdRbbkGN9x9BfIKwlRzfV46Z3k9nwdZ+hQ+LraeayY
	 XnWyqp98Q3eaZqGMIx00dS4WIFRmgayvOu9LATRaUQEjA5OtCv/2u5JrirtyW7B5Io
	 mB6PdR5akwgY2ZMSXliEz4YGPWpiJw6S7drzY7Vb8/obYP25ewdudCZVx9y5SvkzU6
	 Uu61+ZHf1XTLXvjjeeRGGzSY579UWC2rKtBLmYo4vcc6YYJoyNNKa/uDrwvumIP3fm
	 CwxoplyFmujLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F403CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175753679357.27351.3528466930324512675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 227a0a3e69cceb6f8394799412503842cc281f8e53f9078d4619656157649668
Date: Wed, 10 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757536793
