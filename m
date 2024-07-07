Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9AF1860
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 03:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720323983; cv=none; b=muMOz29HXc94FAn1+lH/ibo2NkqdeeLSa4XYrbhGXiuNT9FctMTbyaN+qVGoYJg8NRsSV4GbuPHJvwMwBPNW84DKA9FmtZKzrglk4fLrzemfxJTjanDYhMMVvr45gvJianjLN6vlVXInBINv4MfABiTZgNNobiS0e3MOG2JCmdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720323983; c=relaxed/simple;
	bh=JzVaEy+UPIhpyLHxZI/4APxUkKj8wDicaZoyHRqrC3g=;
	h=To:Subject:From:Message-Id:Date; b=E0b3o5je8ZDuEo0dTUSBT4Rit2/EYYMudY3Ws4CpkbniCBrmXCQ4n2BxbbG4DmMRe+yJrP8WX/HeJjiDJ3IXu84ldwAbv6QvTxHmWiMtiQCoN90KuK8UWqhYTIlxmHGhwVDfDx4zf+wYczK2JHXEwxrhGyIEma5rSN6AtJmUnLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsFLFltk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsFLFltk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2ACBC4AF0A
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 03:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720323982;
	bh=JzVaEy+UPIhpyLHxZI/4APxUkKj8wDicaZoyHRqrC3g=;
	h=To:Subject:From:Date:From;
	b=dsFLFltksN4JTlIEDyhVO0e2aAPUPtOlY9oNigKfqKbynQgTX+F7o9FmTY81dHJlZ
	 LvY4Q49U0QDWM/mXw4Lgo6LFePb30ulul9yCcDCBsKkt8kvT32PAFA19VqjAJKn8/S
	 1QsiCQ/pS+9WeoAHe+iIlu0o74NbY0oRRjNZgvspWHVpNy3A4kUmWbo5deT07HnBKx
	 0l1YOG26q/m1BjqR5TYQhOjbQTWcykaVBY/76ioaSy7Rsv3mYMbdfImdWLDtEk0Dg5
	 GAl881yEvGTFgMsX0Tg65sQ5iqdLa5a5wmJ/7ejonWKce5o3aKOTeGeDsDgRh2/AsK
	 dEHzkn0xQyQHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8A77C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 03:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172032398279.13187.18307884522464977428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d21f398eea2308dd60a383fca3c1e296824957b601489db1d3bbd3095ed94355
Date: Sun, 07 Jul 2024 03:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720323982
