Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F6E3288DB
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728872754; cv=none; b=kZCpysTJ3BObgn+MtWkzflU8XLdYwM1xituW9mePfOAp4s+PMX07fypkFoyoTnsYQ0uuuaghXEnLSKYAs420Ep5VAsLA2s+8DfGYjWzq0Q4Gc/2uhS3gb5FVskCpY2xaGgRHGUFfXask/QN+g1+TLPDmUq6JavP+iDTP8VzhKbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728872754; c=relaxed/simple;
	bh=HI72ycG8clFOYIHQfMJd+WAVdlKH9uf7UJkAyl9AYeo=;
	h=To:Subject:From:Message-Id:Date; b=YCitb2jG3PXruCjHh6evK2aI1CSeVZ6JRIQC25joipfscieVgXUIVQPFDmtGML+e3+qQ0EHw/7B0nr6oi70mMifbL4MYS+j1udTlzI/9L4FRSQKT8V4wcLSXKoc5Pet+s/FesgwgR9GISiOuQpPH1RMgBfEYTjbp9HQJZxqWw90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6Mn1QPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6Mn1QPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DDDC4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728872753;
	bh=HI72ycG8clFOYIHQfMJd+WAVdlKH9uf7UJkAyl9AYeo=;
	h=To:Subject:From:Date:From;
	b=i6Mn1QPPIAU7bE/YLl15VLc7owTQhHjYKd9nqK0gJHk9YpZHguIHUdgQadZqe6UJ2
	 bzWtJ600k9WlgF4g4hBSP05jvo78Wk9vH1yebF83g5jX5OhlrQnZI9AHwWPo/u9xGl
	 g7iFRZ9ZGnFO4W2CEIUdVSX8XFn26KgfTrjQS+ayVnKB8E0g4PTw/hh/aIN9ahYtt+
	 NnrgLgs9TgUaQZIyNngusnfxtLlUtluYTnSCTGGMB3OQoe/haSIG3p0uX7Ua6aKhIf
	 8WZmRTWcFS0BPgXlxBy8KYnNKipIByAdY993rPE8UCqs6EoMI4k4akw5TuM+AVQmR+
	 OEa9jx7J7Ju6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8A9CF259B
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172887275362.28508.8762848637870569223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e1882e75bcece1f83863c6498e03ca52eab26bf0ba77b1923394f32f2ee74f8
Date: Mon, 14 Oct 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728872753
