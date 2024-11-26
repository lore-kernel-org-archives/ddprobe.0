Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A72A1A28D
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732592754; cv=none; b=dqXuFB/W0svH1CwFnwR2thNhWcnNut09MpHG/CccSRMkS1eXKTOH8L7PG9KhCkiT+mtfEpkHyOAubbkq9MxY5z6rS20B7TVQYRjh4qa+sZmBRKNuh4kFWaEtPXY+etuYZB5onAewUNr2YkNOQNfKCNXUohyGMjZF75tEmShA4OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732592754; c=relaxed/simple;
	bh=PqDC5rSZd+7VGVDs3px1NsfjudafuaRh/AK4+u+KKzE=;
	h=To:Subject:From:Message-Id:Date; b=PTSEcc12GopZjdAL6+KIr0AQ+NwwGqxSJ+7CpKj/ZVi8Zkga/GmEC3S036sNDRI2LVTRjnXXhrEdSgDCxoQsB04a2hwGAhZqN/dWEGIly2d4sFJlsf4rOPQZvaVcOliXz05u82Aq7J8fzMZWxLdiAOe0LudYqs1yGHHDi4iODdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnTEJ0IZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnTEJ0IZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17AFC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732592753;
	bh=PqDC5rSZd+7VGVDs3px1NsfjudafuaRh/AK4+u+KKzE=;
	h=To:Subject:From:Date:From;
	b=cnTEJ0IZrz3/BbphpNOxUAJfHDqrgtelYrxab0fMFUTR3Z331PPQtlSisRc526we3
	 x3E2tZ8u9M41/sRA8Vzs4QGy/7rHgEY42x6f4ouFXjJx2n4C8T+kz/nI4cDq7thmIf
	 Y2IcIgLpLev++e0xGngrXmNRqFB49TOu0fUIAnhetYpjooLseK/E7NsU506aR9p6Ws
	 oFcA0EqIFaGfBUR4u+5T6spJQu74aH4E4WurE0yRxDtkHy4P5GaZUIBUZV04JBExKX
	 PHLuK5X3pakTZ3yyijvIaWcrZq8yA6ygfTarTdi3VrSXoZIiEJH9cXQwaB2djh2jvx
	 IVm/cXhtQXQcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9156CD5A6D9
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173259275358.1093.14592994084283403810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 669b95e2e0a78d980d75d4cf47cba7eaa34c8f290d942055f262c4b78617956c
Date: Tue, 26 Nov 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732592753
