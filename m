Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9223806C2
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777156054; cv=none; b=DqO6viLh+bM3+mJMHcGaT+ypDU3g3XH6KTALVIUPceReP0zIFsr9DDUf3GXMy9AvIaE5K3KhTyl8EiBWdWs/Fqg+iJqP400/ye7vaFW88YyflKusG/4+ZipZveylPxf0WBBOUqNewqjoZ67y02cUizJmMKEYoY23FdTcvXvesaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777156054; c=relaxed/simple;
	bh=UOSOR/5kFaKNpI3zq/KElG0on0XNROZDfooRUOGAzuY=;
	h=To:Subject:From:Message-Id:Date; b=aL9AYMz0GQTJsCKrKAQe5g/jFI/ZP+ei+GKjL90h0XMLpgmS7VayIQpQ3JOSN5QxmP7QTCNUhPllX+Rjsi9QKgJoloJT/4fO+PCdyZtLl71c4mKoQvOXJ6PRIhEc+ohgkJi3liIVK57n5AFoFf1nr3nrmrTJG+X++n3Wm2pgcss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PmjeKxrg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmjeKxrg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0CAC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777156053;
	bh=UOSOR/5kFaKNpI3zq/KElG0on0XNROZDfooRUOGAzuY=;
	h=To:Subject:From:Date:From;
	b=PmjeKxrg3jscYVap9CeLGK49KfAXDG//sE77z3rrFAj9ZB7nqGshjMAGz9t0blGOr
	 PfP/oZzcH7bR7Al1SOkpkXW7GHTXWTlpfzPirOxp92umjEu3jLCEGyiBV4OGnLmZME
	 eOL56aa+UaTUwdeTQMUvhNgSE65ifEu7q2t/sZU7FwO2/G6JvmpuOkDOeEf3yU7ENi
	 xvJw+jS1oPVPfnK88f8HkBThKF0oq9U3cGxuXcH6SNwrGf918FEx+uR5JQ7DffrMk6
	 Pafl16WpK33pLEATwlnKgqShJSJHQbBR4ErVs0gJnY9E44oYAzYVAI6grNOySmrnh2
	 rJQrg0Ggpv1fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99D6FF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177715605368.30667.7379428023305473251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45ab0e11fc0aaa8f68ce944452efe0ecb019062e4fdf2adc0e8c76a366431212
Date: Sat, 25 Apr 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777156053
