Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9DF1DA30E
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 22:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719959723; cv=none; b=AB0pQXRthDgGQUQtALYAPs3yKrsoXKWze34mrmoj5hfRheYLxUfPGm7Po/gWm9O7Rxa07ZWqNivJFtldOn41jbOGQVJ8ZxDPCiqWqdt/CsoSDfNdJKaImG2BwwqqNn8Utf18tBHiFsSeo5HBN1ALfJYYrgx653gJR8eFfeem34Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719959723; c=relaxed/simple;
	bh=meWul1i6ABnvDTp3qow+5krFL17CIu3xUgG2qTi0U+w=;
	h=To:Subject:From:Message-Id:Date; b=eUNEIxiZMntaIIGfTYAseI/mJQjZaGwGRexQxBNcD1gLWN8h3g+KtDigS5FsvPq/QpnsVx+zPJoLjmQafTkWnuNsu762qRXWwfvj/aAcJUWMQ1G+MJSfCt5J3bYKkebubrwauMCP/wIZVoXFJ8ayNgrx2fXdm4henWElFP7d5lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBCSzn7d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBCSzn7d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4C66C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 22:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719959722;
	bh=meWul1i6ABnvDTp3qow+5krFL17CIu3xUgG2qTi0U+w=;
	h=To:Subject:From:Date:From;
	b=oBCSzn7dEYEo6sad+Ii8mwAmwzCMbkMMZc0s8hyxn1u1qwsipj2Nfc7ClXDAl4V00
	 joi0S92wNJG4E9m1Y/fsTg6Y09+w6dQ9pl+YaXW1dIJd89spOI6nVJLZLpwYSruTur
	 nVd4F7vW+LCp6nB9jqXd7B1y7zBF9c2OIT4Pet1Yvm+bS0/y9wRG1W1nEHzfNrremY
	 iiujpFWdODWLHFhI2QIJtwaJzFI9eqLxM1DNfYwwxTdYljFrg7T1Gh7Tfl+gikIVH2
	 LsZXtFv13L5RdrIvQgSCBmnpubP/wl4eqNowS82+oOTkK7cHwllcr1WsnWCScrBjPT
	 V5Lh7CmnBbClw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE207C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 22:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171995972279.32367.10038886515311895596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76a406419309bc924b2adcff114a05e755d40d711aba98fc3ebf443f731a602e
Date: Tue, 02 Jul 2024 22:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719959722
