Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8B83BB48
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766813634; cv=none; b=XfOk3rAzmUD8w6kHrJqpK7/YHEyxftvY1bY44e5y69cIcia0yNjpLBwuxot6qKZK2k2Z6zjlLRLCPiS4BfTOcIV8AnLgHuzU2X8lBmyz0j0JnUWh2XAds8uUvwVMKd58PmBrjLynVHzBCuqKjFIQV88PKTvbkmgVnwQ88i5KgoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766813634; c=relaxed/simple;
	bh=7UI8C279cpYuohhJR5X3Z/BCTQn8CMqO7JXFKcKLfYI=;
	h=To:Subject:From:Message-Id:Date; b=gxmrZF89SshUpL0t/PqY8K3+8QHHf6sekJgJ6cLafjCqXzWQbMAPAaQ2wb6fsKmZ4gB16dX2EJr7nuzz32+QKPd4HhDXUEqSXijmHqtTlo2RfCjD4RvKNNMgdVwUlYdUTdA7helN06bV8AEmNaoIjEetgZxLMc4AiW5zzNc6Pn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBLa2fU1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBLa2fU1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A1AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766813633;
	bh=7UI8C279cpYuohhJR5X3Z/BCTQn8CMqO7JXFKcKLfYI=;
	h=To:Subject:From:Date:From;
	b=ZBLa2fU1tbclWQg1xqVXKZL0+YzTHIsoAY1KNOc9VZlhOOkqDwCMOT5aaDE0MB1Uw
	 mKoT2hboAmVFA3uSwL8gA4fmahgXRNssHjItHMLcoZFfMYsGVIb/BRhTSKXjaZPCaB
	 wsgh5rQbwnMaJlmJEuartL7j941btBIDEd0jbxwV3sENsiiYRMJKu1IYxO8mj+onMT
	 N7a1pEdoZkZOgcmOAH08o7ShW9WJ/dBlNyt8aFF8ao0sM9BxwymRG85t0FjwLKoAXi
	 eXORGzwooOoUJGQ0H0RNfMpYDAPdAH6FbqejabNDk7u9NzbklFWByiC0WAeOyCHBpn
	 66o9gOYEBjVMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973DEE8FDB0
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176681363359.23956.16029436969762848606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3739107025eb31e95aaa0a033dcc5d64410c612b6f0f7482987fee0f5540ec61
Date: Sat, 27 Dec 2025 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766813633
