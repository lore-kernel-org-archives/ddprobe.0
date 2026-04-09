Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F15372E4257
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775767054; cv=none; b=TGvzuT43owwVa6l92tfHXKd9SamOOhMee6bsjF+rpTN119eK6AyCipMdW7QIoWp3RC6NoUAgGg0wW16hYQUFcMG41KG8fUTzjjXl3t/Qaa1215l/W3gulWr7ZvPOU5FBdoL7HvQUzvyQOQhkqLUPO3ggxr4Uu9Gj2k6LEX/PUNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775767054; c=relaxed/simple;
	bh=Wg5LPerspc96fPVULgPXQbds7GC3pqtV1ZOO8488S1Y=;
	h=To:Subject:From:Message-Id:Date; b=azSf7rJgN1FjN/pNdQav/XZ/slDOfanyFtU231CeUatAEwVMjDb+F1hgSdCcNKQFx4oSYbszEOL6/vYAwaD067FTUAWDktN8nwGEIhde036/ctcHTBJETDkVi66TAuZoaGe3dcyFTt3NTco3MK0kdvEqg3JMpqEuwBrH7P4AZ+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPH3qKZK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPH3qKZK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9808C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775767053;
	bh=Wg5LPerspc96fPVULgPXQbds7GC3pqtV1ZOO8488S1Y=;
	h=To:Subject:From:Date:From;
	b=EPH3qKZK6G/q+F5srUzjYbzdWS52+obpfAR0N+l2Nw4p46zghL0hB7WcXyFhHOZeY
	 H/jCFB8+0YmnGj1YNC6Oo32BCpulgAAeyUc+85f5mFg57alEsq2Z0gTLuXzPKHqT+E
	 mRMElJvL0R8vC2YK6MYrCkV8baMqVzIWxxffqqMNQBUj3IPSWEA4+S9D9oGx2royVt
	 ti1Q0meW4WfE8T/tcnJdrVVRmB7mwA5TnvUjHuK9mFU4zZiyYxCYsZE7i5aC3luww0
	 BaioqmdYPqKVGj/Gq0GY7BU9bwYIajQU7T8pkmlVFnnigGbXbEnrMpPE7ydFQDicOq
	 QYsJrn6u2R7JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABA2F364BC
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177576705368.14227.16331385207741104695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a21a75bffe013693860d404919330e5d45cd4439751860e8d0bd52f63bbdd79b
Date: Thu, 09 Apr 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775767053
