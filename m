Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CABBB126C17
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759160993; cv=none; b=V4CZmix59so5ykYEXVY4M1nx3Sw9aUet3azbGkVcz+PDnk7AoQW9bdskkJPbIr+OZ9FJHs90GhhrNnE0jFvSn6bvhJ8m55GZgBv3AWHdAqy6M26YjINLthzwkERSpbB+PLEjEPOBqgpdZXgl37MFsvogm3bF97DGXpdmbc7dulk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759160993; c=relaxed/simple;
	bh=+I8hxTJFAo1tVVi1idxutGvhj3Q4G3Gasp45vIMSQxo=;
	h=To:Subject:From:Message-Id:Date; b=OeGz0XyCcxqOTYb+pXSXVkb8dni4wHrCG/l1jI5O9m4+zVyNUkmLdhi412RIZZh5jgHudvEmCH56O9qsVj+/jCOdNRZAhb0aFG8anKPrxj0/j34ojwk35Ue3aOYdvRIMTmJgK3sg1hP5j6AD8QXnSUc4EjBBU0QRsqKXZKAtXLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFss+POU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFss+POU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3956C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759160993;
	bh=+I8hxTJFAo1tVVi1idxutGvhj3Q4G3Gasp45vIMSQxo=;
	h=To:Subject:From:Date:From;
	b=dFss+POUVllBJjlkffDQ+UHxGHif8kvB72ge/7AF6siyQ34NTI9UicM4pK/uY/sgB
	 OvCj6k5T0/9KPqnXgZ2f6288fZD2XfqTw1dlPWpuAqR00jz6fXJF1Fh6sCGLY9xdUW
	 zCGlOz3Tk5YWiRvuf/VsEpCH9s2+Z09dUgCfDvTH1J5V5hDuJEzN5KbgLHSkdkj3bZ
	 H9rewHWlHLrzFY4HYS7vXNRf4Sc8St/xgk8CqLyFD8H8zTaugebfeEek3VXzH2q/iL
	 xr24NSC8LbgjAknhdiAbfraO7IiYnSJJo0eA2Pn49Mc/l12xJFdM9rC8xjmo3LfVCM
	 16gKdtlXLxnmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924C3CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175916099358.14062.2228774012764067787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b81186ce56ef7775b9b11ff12cde74e8521b62292975e203a5d3b1bde38e275
Date: Mon, 29 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759160993
