Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA5F367288
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 10:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782382654; cv=none; b=uyfaLGqrJGvpb+4QjPsyG1WnZCoIUX0ga607a8yOLjE6Dt0vzzKtdpWbLIUCgMFa+tKM+oHqc3wdeR36hdwnM3oY8LWd9IlD7aTdQzGK/08ZpyXvHbAAg0HrHYpKnVrWC3elFnbj+O2KPFwYQHBTSo1SUEEXDnAS7FfqgozvEp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782382654; c=relaxed/simple;
	bh=uvTUKCyu641SUD0Sq3HYvMKQyvYF2+0m4Z5QMMcMHkI=;
	h=To:Subject:From:Message-Id:Date; b=kAY82tDqRGLgXeQxBLR0G9PqJOo0B7SvyfHQncbPDgsWWSp/6iQbpzDSu60rIAPWl68Ln6Rc+q7tnCukDRb8GAe0fF+0SBd3nBPfhl03w6rTM0eUP9OEl6MknJWEOHX1sXOilKiYFqJRcTH2nYyQ57XfgfYA7rl9HzftoDNPDsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFcC+4t9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFcC+4t9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E683EC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782382653;
	bh=uvTUKCyu641SUD0Sq3HYvMKQyvYF2+0m4Z5QMMcMHkI=;
	h=To:Subject:From:Date:From;
	b=GFcC+4t9e2yrvwFV9VQPA8Hs1eESZTNfauW3v8eMfJ0ksu498/8sO9V4NpvyzNids
	 H2G6Ka/lqYMnxONdRVJ+61u64uvlP+Qoe/0LgdYrY6Rb8hDD8ZDpLSxoK0sv+zQs0u
	 keuWL/VaG9oLS0YfXU1hpje/k1bA+irMhi6Fu57nc8dgV4BA1rjyVKkCKuJibZxVuW
	 TaEdPkTsZzaUOIjIMwcVM7Tlhj896ByFLkpcLbPaCuk4QOr9X+YtNtzje3Gtgj8I52
	 UFCym/vOsAeJ6sIwG7TqrkQfghAsjGz0sMFvz1yUpY5YtK7Dg1lwcHv5vSgT6zDETS
	 /ixqY+l8dfoLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9473CDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178238265374.2622.13398983704807623292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7362c7e9b99ce9aa9f34d6b06187ae57c546c83ab326a2d8b8e118cb99f25c3e
Date: Thu, 25 Jun 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782382653
