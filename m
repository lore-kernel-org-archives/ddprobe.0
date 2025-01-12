Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2157D24B254
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736682354; cv=none; b=e2ymxwcKIBBLMEW6mL/40R7cygBLZPhUxPL9I+Qt4wSX3tCjCxKAhB1FliVZAwC7eyX+6qRz9ciio78GC1svg6kP7r+VfCc3ckCYLajTd6tguQeuX4Om7ewPZ9iFixU4HmQCvXQ89rP2gFkMX+GR6h4FTvVs+vE8LW+gb0hqofM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736682354; c=relaxed/simple;
	bh=9jIIVKJVbGz8JspjkUCZ6XbTpwmYGPV29zz+cZVbisI=;
	h=To:Subject:From:Message-Id:Date; b=eawws7G4ajTZNjcHkvMMoiv3gup/GUCeRtrxPr7vxBFo5Vdu2vdaqylK+osniiindmZriMx7wa/yylBFyHD1Mxv/enVU7KlNT/6b9rV8jfvPgplV9fnfBtFkwViDk/wQYn1V3Th8bnWAi4DVz808y4qjmc6jy6y61v2nuDhx3Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eIBrLrPA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eIBrLrPA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8FAC4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736682353;
	bh=9jIIVKJVbGz8JspjkUCZ6XbTpwmYGPV29zz+cZVbisI=;
	h=To:Subject:From:Date:From;
	b=eIBrLrPA4dzdWTL6+R/cHfDnxX1T8ojhFeHv/87/HKbOgeZzWgoJLe8l2kqMzQja9
	 nWtn6z0WfbOkZAHkEW08WvVAk/x9zFDlO4PHae1RZYIhQgeDWxrH+94E4XGfGfKeLl
	 Rv2g/4FDCWNHo7b2tsaMmgt0IAurK6R301LP64M50MEh5uqqsc3n00UVhaPn7MEJo1
	 gl7L3oObP7nXgbp5Ux0I03CeR/i0XAk63c3oKTR13JSdjRtvBAL/lKtCQcczYapGRt
	 9wVjHIQ6j81MCbk0MVE/1dj31Hx+girhdt1gHYSHey0NudGHCbmsaFlimcKyqp9jb6
	 vrNM/iHveRz1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EED6E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173668235360.30199.3910571890690754659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 186058345ebc04194f3c6bf27662c8cce0395250b6893d41f097d1af19dbf34b
Date: Sun, 12 Jan 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736682353
