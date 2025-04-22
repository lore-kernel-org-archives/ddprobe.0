Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464BC29292B
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745340594; cv=none; b=M+E5HFyfallFm3NRzFlVgXEfuaSbVE2kGTPctzrw/BhaZdQsfOjjODDSNe4ZEgJq/M/N9xKez1L9sUPnj9qZg4DStZJAW6xNSP4TE/KwsT8RPFXdMZ9YA+OEp8/kSi0BLhQPLTzmnwTiIcfPG2qVE1wbgQkIxkYAH8PxiQrJrh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745340594; c=relaxed/simple;
	bh=Hc61CimABVQNEj70SCegRuyAISoeOWbzQxp67eXxfzc=;
	h=To:Subject:From:Message-Id:Date; b=XzuITllEh3kHXHKxxAjppHAULo4qCRpz0zIH4uQwch9lmSYAZzphWQ2MdGvgNooMFM42dfyJdxcR3tP10wM8IqzjA/na9XfszzUdVzH9KBo0OuNz14IdXA/9XGqlRbUwz7HqnTpk3nDKeW7mlvThqNSHBTr66nimnZBnwhTcAD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LwkGGKGx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LwkGGKGx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A85C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745340593;
	bh=Hc61CimABVQNEj70SCegRuyAISoeOWbzQxp67eXxfzc=;
	h=To:Subject:From:Date:From;
	b=LwkGGKGxJkAGFBriE3G2ONk8P1/ywmF2ULNjYaPzR74K77OTiVPWwR3nnPYDvkbKb
	 hf24q0l8B3JCMISz/sfGg8fl9SrszHD1zjcGfOlisT6rCF9ZvqYxbTB1oWp2VCeW7x
	 k3PWkMXHaOxZLicqc84L/l6QEgSf6X3MDh9PmMw1OPdv+LMzECLrjBD+F/TBjDJHDt
	 Ctt40zxi5PmKSIaRY1AOemo+tfdfC7qgFuQKDg9OSWmkAeaANIhuBUS8fL9oPigyYK
	 uTNyxXLMk9oiXm2O3sJqB0MCOueHftdCN2hooBkvY6wB0GK1+wxq5peRxZQ7P5/q6W
	 QFR6GPwXRRUxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CD2C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174534059360.32112.16717375273092906570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58043f01dd8fd37f53d75d5f995acc902a29d57ac0c1b29347b63d692aa60b31
Date: Tue, 22 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745340593
