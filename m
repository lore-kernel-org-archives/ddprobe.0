Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE87C8F0
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744919394; cv=none; b=AgLZJGcayuSbZsTU/0FO9gLhApeLrkbwvjoT1tn/Em52pk+g8WBLds6d35Sz3viWLN8VHHj29uDvTyTwbaAzAOJmW9kVee9j7YkLQxTwpKj9XfXoeqsbSK8AVt7SJ49YtchkubXU8Qx7cyagGUIxZdcBUjkRXyV400pENiSs2UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744919394; c=relaxed/simple;
	bh=ADEPZ3E2BeuytaPHijxx0yv6MsacvkKOLP2qFZlKEZY=;
	h=To:Subject:From:Message-Id:Date; b=YnObRgQvPBv0nTPMN+UaPxW/dQOqToJ1u1ejdekkcFVEPE5gh8n+zWkLH7aeSfzSe2omsBtbATvKVCZ6Ut99V08zpIx80jFHcIg4UZ0Ne2HUa8alY4C7XaitDPvO55CMcK1I/1W2WK8d3UvqrWMrxkxrzAgbfbP3xTsqbsMsRvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBuOdxsk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBuOdxsk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E27C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744919393;
	bh=ADEPZ3E2BeuytaPHijxx0yv6MsacvkKOLP2qFZlKEZY=;
	h=To:Subject:From:Date:From;
	b=BBuOdxskt6AIcFPydhA6MxooWQE3VrrI5/oIla5Mo1aljP+vw+2OlspbqAshJnnin
	 O0HT8Y1B499CcW52ngrCWK3ftSdv3UvLnZHgk5OxYO/SMZkjyHb3SPjmmNY9XXpfeF
	 nYlnIWVSTsnmSw/HNH7iFlRiaugtGzcYE7g6W9ypwkDG3FTqlnBuEZ1azKM57UEdB2
	 Sg1Cr1Yruz+cgLf8lmSDhzRFOGualTY2fAMJadDPUnUYVkIikeVwomGnIke89RJ15K
	 vrQnukihmJgcc1kuAmwAcJK+LvbU5EHX3DaRnBHrWRnf7P8b0c7uzKVS05DVFvHvEk
	 qO7u3bHrN9c/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD49C369CA
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174491939362.1987.18234450559366053897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c89a6f389111f5d5b7f3203d4a36871b4e5a24c9f531961ec271086405facd30
Date: Thu, 17 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744919393
