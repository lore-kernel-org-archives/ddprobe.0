Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2408D3D954F
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790923834; cv=none; b=qtEpQgtp7rhgkQpGUckutwnnqWkOadCDJP4ltpb3TVTaQZhPqbmHXJEhIQ5ssY6ySwawoT8YN3rkZe6an5ZakMx9ASNxjVtX8zfi7TeL8y1oQ+3GR8/HdPHq2VQY0TWxLw8cLCKpY69V5qWSomwAMaYxF0sc7pe1vU/cWvpi4N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790923834; c=relaxed/simple;
	bh=P6d5ndDW0l/cznlMnB6/QygI7k25K1b4CHyXeXFImEc=;
	h=To:Subject:From:Message-Id:Date; b=EY8wOVDccByQ/93i0sN5K/h87hwdn1BPLCpPqpheV105P3niHYQBvg03wyKmEjvNKC+gEEe6dWeZKBKr8rDmb+7KLIN35Dd2UcmdyQLYV20ItGHwZAFqr0hxnPlY91RsLWFFqOhOi6L3fNyiAqzQSXAqqOtGOogx9tlfqFrenV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUkauOG5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUkauOG5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBBDC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790923833;
	bh=P6d5ndDW0l/cznlMnB6/QygI7k25K1b4CHyXeXFImEc=;
	h=To:Subject:From:Date:From;
	b=cUkauOG5Epbpfbs1pu4gF6jfdj/RplHSDzE9cWW2C9iya9M19vwKze7hE8gXuRvS3
	 Dt0UDxf+g0NMXOC3PnDQyth9X2yoZnn5CxpQdw6jRYsTOtFAMcPkebUeSs/gf96VBd
	 pjc6dVEL8eUEgzhsgT4pv6NpgVJG6cmc7IjN+ScdgqaN0popf52jJIScMLnSIhGSlN
	 5OIBKbLeIU6G8iMOj1+Y+qcsnWYdaIoM4nPCzwb9sLDxrgnaydvzOxBQcORRqZtY0S
	 jyNe6llakyh5WdfBshqbN7lBxxjfmonLaY/5FbS1+Ud/AQTtSOczv29bijiJGzWFgM
	 KXyOWOwCO1PkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1ACCA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179092383369.20769.3996720764345180378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a95fb84d33ca4f7a0a2368a8a57f02e20ba50038ea34a4661baee66259ff4729
Date: Fri, 02 Oct 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790923833
