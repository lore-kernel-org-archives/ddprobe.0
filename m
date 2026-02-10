Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344722F851
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770696234; cv=none; b=LQUdgGHeLW/VFFykB4tf8xA/euD9MjajRSGtL+XK2mn1kPJGPBUtrb7EARonKrT78d3iIVuMfqBdBTFfyzTk7ISCtw2/vlRpWxgkf8pWS4bVH2/fW8HUYYJOYbrJqFWDbvXyhgH1nOstbE3aXjRdAzcubqQ3iMy11sl0/VtsRUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770696234; c=relaxed/simple;
	bh=qwTvJGeI5LnF8LcvCKHfIXnPERQZ7sWk5W91SRCqNSk=;
	h=To:Subject:From:Message-Id:Date; b=X0rU5DgtTHZ7HYYS+u8S52reE8Sy8lwqD/VkmMmpSUTfVbK03H/Ky/+v8ddWtiFmm2WZj+v27PaT4ZKEZCiQYVbD33ePbZrAMCAFrpQzwsLEBUdSqzXqFtrmcoISoNsRXtwIir7sTBPu0qhvw94ibcj9z6TwVWthCox/HGIyCd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdZVtLCe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdZVtLCe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF088C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770696233;
	bh=qwTvJGeI5LnF8LcvCKHfIXnPERQZ7sWk5W91SRCqNSk=;
	h=To:Subject:From:Date:From;
	b=HdZVtLCehuSdlARBCf86R3goZLGfovAJLFm9FWgpfjGo0Uw4uOnoFulbldNZgRAaK
	 0bdNhSxsemW6eksoSoWBJ2nYDUGg4M9U/UOh1iNbckls3VpnaeYqTfKysSfs8dTrHU
	 NHqaOuQYY7GkXA68Yv3rxUkrM43RJmHAiP7v/7z56Luf125I0MtUXnRxvf+VJMwb5q
	 YUBH8Xx6mluOtZm5jd5S7Q6r+pc0IzFyn399cNf7PCMgAVQJFeQ1wcB5dFLZcZTN9x
	 AdBxpxCSvGVx+32P9HlBbDUgYlbf7SkhJqO0jvKZSysdSCycfeefq2/fiecKHpJDg6
	 AbnJwzlUqSU/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D18E9462E
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177069623364.22902.10797510677834178713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21369b886e2be20df646e36612682a654305b4f6e6b69cee8c94bd93fc4ced99
Date: Tue, 10 Feb 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770696233
