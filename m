Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7FB2E1720
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756120194; cv=none; b=agN3H0hkny5KAWx4EC+GBId02OllCwj/+O4QNDKG82RGTTHD6b2F8oTkV/jgbxPfnABEyTRWxXZY6RnkcsxgGWxrFvbXtOGLhmRrwMbc1/8AdnXFXl61WVSVCZbNkyJZGKIt689Fmd8NWqr1gA/P6GjfS4ZtssUKdZ5uAxRyrXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756120194; c=relaxed/simple;
	bh=QV6mfdbdm7kqyz6DPMjpWzpQje55U8XGdrKAeQ2dHYQ=;
	h=To:Subject:From:Message-Id:Date; b=ZJLJdAqL0Z7VH0n5TpvL7IP2lACz/0AamFjyWTkyc1vT2uL0Di5pdhugEPdRbfP1kpCb7K/fiODh2ZSkZmoC7dxeP5Qu/J7ROebLgEg0TIhQg7qAjW+6HzuWWVYI0rmAhlJxMDDocHtGEl1FLPMDNHQB2xicHirSnC9+MIh3Tj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YmX5WsR0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YmX5WsR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13A1C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756120193;
	bh=QV6mfdbdm7kqyz6DPMjpWzpQje55U8XGdrKAeQ2dHYQ=;
	h=To:Subject:From:Date:From;
	b=YmX5WsR0jF9+v+xPoVPP7X5417upBnYJ5uKkC70ZUTLOILn/qX+UEQVuhSClu7fLS
	 VxklTCnKCBn6YqxLbvPVOkgyQnnbEfDHJu0u9r91ogufdZZ2nKeQGSJpPiJ7OvI4AZ
	 awScjCYD9ExISUVdlpPsENsFUgRbFY3INnbe3lD1NwmTgf2TRCMDuwcLlOC5neTFFJ
	 GgjKk12qJB6rk+uJifXWykSYJq/ymALb9crm946eJ6YUTDvQCR0PqjKDvTfosBAdYT
	 UNI0hoTQ5Aic3w5YER2XTS04Jbhlf8FpGtB9IJX2U0NSnYCJ2NUF9Gi4CAs+ID3zej
	 90Eq8YHCjzBJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA1BCA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175612019357.31634.2172332368132548463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c304f3e0c838799f6f36f031205d8ff142edbd16bae88582e486de234ebd27a
Date: Mon, 25 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756120193
