Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C29DD268C40
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762863593; cv=none; b=VCGo+FNksAcSEUBsJMTSvHVTSZ9EjIoaeBRzOTROGWAhBTSx51RZtleGvKIv+/am/SX8+3WDCBWZ6lwnJLJsEakO3Et53W130e/OtvZj9SckmZzkYJeesezVjMe2+6x/g9VVjFO94c+v600TCKkKfE8NB6kKEBH46F/4yi5R86U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762863593; c=relaxed/simple;
	bh=VkLdYVsNeTsjihEa12qxxv6Ltf3tIYz2s3dbVWm1kTA=;
	h=To:Subject:From:Message-Id:Date; b=rAUFRlQP6+V9sHum2wZOjTH4ks1VD3ikoooL0mgqIKcfoEJq3WcZoE2lsbzoBZK017UNM4VCQrlywR1OSb4rGu52zw8IOj6ygmPi4p1blbzcGHWoSr1ywiJxrnFpqg0wPUk2u53Bkva61vNKlEEbx7mEeBXEAv0Z0+bwT8lps24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWMRH1GT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWMRH1GT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A65C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762863593;
	bh=VkLdYVsNeTsjihEa12qxxv6Ltf3tIYz2s3dbVWm1kTA=;
	h=To:Subject:From:Date:From;
	b=pWMRH1GTx3SzVJusCnIFnPP666E+g6jUcQs9A3tcBNgzCuExnzNRn8bN/gDDOXEyF
	 92XgdJHAB8Rbinr+IWZKrTbbT7MTnY8b7KoLVItp2lIeRJs6l9XEkt+fBF/iAXfmHw
	 UEzDuJ+4EFhRp//vrRmBgwlNhxJjyKsOrOxjVQWUG7e2BXi38yrNNcxd6+1O/i+KHW
	 ocQmgoiaXO2DUgDR57Yb0OjkMaEjqJ/jnGWEgLJNRW/BZPwJ5VEq4DHD5Gx1dLegQG
	 qX6Z8G5KyG9gayRFyqjFgcwXWX99rKwHVsCQz3uIidUtJ8AUrQAH+GnDlJWMGjqds0
	 pumpk8xUOPW2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A75CCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176286359358.11392.13272518195002327826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 870a70f53ceaf1ba2ad84c9d757516b1b11e2c34ac20d89cd668b3affb3ff9c4
Date: Tue, 11 Nov 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762863593
