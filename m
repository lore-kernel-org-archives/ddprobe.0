Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471FF40B114
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785811834; cv=none; b=bNpzugtWljjctzCc0vtM7DagBQRVLuFTDAZezM+1hdHp8DUZ6fL+n4KH1Ji9bnMMJgcaZSE4D0RewCtlyJoia2GDsguoY7SE9hHyyWMH5aqk4UW3E+9IXYr/Niy5GDvmOr6iCUq5H4WQ0HbUedEboEze8msW+olwSrF4M3Up9vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785811834; c=relaxed/simple;
	bh=YVJnyMEjuDSbXuOGPcAgoDonfcKQhm09fnIdqVhJoP0=;
	h=To:Subject:From:Message-Id:Date; b=IKYvCiaeUID71aprHIHIJD+FV25H43ANVTEaDWTP5dxvMEjrJt1KwzpfQQwKFXfGgoo237eYbDxk/UllsM69mDjZ+oHWV4SgE5MNKr+fhPzJUhP//Rj+963teN/6Da6qIKkCmxj2jDmP53BwS9jkdwbxy2K7zH9xCiTcN9291pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJ8Ao20O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJ8Ao20O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7575C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785811833;
	bh=YVJnyMEjuDSbXuOGPcAgoDonfcKQhm09fnIdqVhJoP0=;
	h=To:Subject:From:Date:From;
	b=sJ8Ao20Ow5vkK/tu4qXE7ru+aWmo0wN8519cgzaNE9a7rQpmaXoCfuMJ/DiQ+qDPT
	 8t78Q8vP3m0P0JwBIC+q92MB25UZ68ykGS4BmW7xkYzwtXFNBJyiP9dKlhLsiHYo76
	 DlF9ZMTWWiNUGqEJDhbu1N1TMv9ycyf2xnLI6lmTuOc/2FqNw1e8hY8ilG/6HhydFV
	 YShxMSDdMqcxnumI8IwZKbF/ayHIxW5LeNNRNgtVblN/IuPgkYULMQif6a64R4bc2F
	 OvDUUl86Df/9zHT3zj0LnxeudGTFYLw7c3gQp3cXqq+LQb/WRcdRUXOIJTsanT/+eu
	 UIlH0WLcjKg4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD381C55182
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178581183370.16962.17309898387633865332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8978ad9518a8667355a18451282a44fa79ecf86effdbb4a15a6fbae40dea82b7
Date: Tue, 04 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785811833
