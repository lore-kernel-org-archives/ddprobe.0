Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFD0278E75
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747664394; cv=none; b=iRla1uq6l+NJtEcKT31GeIZq95PzmmqFwWwyGbOgchit7cXepwo7I+aC72sl6qtBoONJFCkDma5shYpG/u+rWft4reSeDvx64bF63DWX41oDOsJjl9urA+aezpqmaZ0hphZYVZkg04Tyr563YiJIKHr76JYkxU0QEmAkXnbb/lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747664394; c=relaxed/simple;
	bh=Ji1xWY2PkUC/E4BMbkrinKsVebjdvdK3SeRkgHwfmpE=;
	h=To:Subject:From:Message-Id:Date; b=E6ElqFgve9M0xOfO7O7yefbVvTdvgzzbW1RqTDJ5iutcG7dFuEr5P8E9WdNFA9TpevwuKzP0ANAZy7A0XtnBCWgeoCE0T8gHEFureWf76xieoGRu2jWPHDDgO68/FjTU+jh5opy7eaFd3OYF8KZkj4+J7NkXZJELtyUsvZkO9Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7gOeEih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7gOeEih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E69AC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747664393;
	bh=Ji1xWY2PkUC/E4BMbkrinKsVebjdvdK3SeRkgHwfmpE=;
	h=To:Subject:From:Date:From;
	b=h7gOeEihiavk6rZHTxwk0O1lBgkgvqfRd4kfE9BtOLOMJR3icd2a+8ZNipNA1sxPh
	 X2o5HOAAYFtaD5AroI/ITGo5lUg6DQFhFPy9U8lun4jjmW+dL4Uo/OrihlrBgb08yu
	 pa1NTcpjQgVbNCZGHyQV57Z0QLN5UM9ontKDmkaGOmkAN3mGamqQJh/PyiengUZwfX
	 8Oo5HdIMpjs42rRveA1jqmoQfUcGzVOhX1ItJytMP791/oehqAuDdav7PGO8ZMTA8X
	 yFepNrEXavRa/dI/1eHsqDzXuAQsxsdhBNs8kV8SaGIuuVgMpDxlbS6BaSYiLWFaVT
	 o4dikge+XZQtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA6EC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174766439357.26902.4280610076785073619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2718ce8e96ac1c8b85ab5ec20cafd80b7876c134cc299a1d51730cef62742d02
Date: Mon, 19 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747664393
