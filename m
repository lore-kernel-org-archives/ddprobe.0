Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EEE2FD694
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787556034; cv=none; b=l1uMrTub4cItOgh1vdckuFv5LEYtKcbMKIP3SDAmsnaErCXqa0d/YN2wyfx4q1yForWSQSKaMlbNfHeA9U8o3cAaLzj7KcMW0H3dVn2j6r4DkOZn1uqaTNJajs6d+yFjINjuU8kkcxZE7wxVQnoEpp82Cx34DZ2IbR88wN0eUK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787556034; c=relaxed/simple;
	bh=CecsPnWQOOn/syRfQucgodu13I6lxUTzOykYBYJbn+o=;
	h=To:Subject:From:Message-Id:Date; b=mlc5yW9iMuPi3dkP9YilAscxQqRuI+H7Y0Y9Xx2xBhnqNxRk1Jp1PwcowgThjXpKIJBkaN5TScWMM+UXKNBQW0KM/ta4p0FXozjh1LbJ3Hsl7BI9GD5Cw/DLcXih5oq0nGVnxP+7n5C/SXw7FLmbtXCOmlbfqtdl3OpSRAo+lf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qhf3bqYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qhf3bqYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE2FC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787556033;
	bh=CecsPnWQOOn/syRfQucgodu13I6lxUTzOykYBYJbn+o=;
	h=To:Subject:From:Date:From;
	b=Qhf3bqYHaj6kocs/LHrJxnenBgBpCgJdOiDxW3t6K1E26aXa9wCIN5RFTy2FsuE1/
	 wS8P8dPDjGzTkFzL5sNQFvni7muC8tQ4PglpJnhFxuuKnzMMOROZnbOCqcGjC53H1g
	 t5mggLk+fvQsJ6YtkGi6wx/BiCk+e529/T4bwpIWQjLgs4ieE8FxhmwRXDu1gtzdAc
	 fEXmokh7F/1PPdTSJqbFjXo1sTNz5DgI8DhN+Ip3HBmve8puy3n2OEDXvzqC5QEBV6
	 sNPLmHcfDPDmOVRvINfpZ69a80c0C1wxmSE1mwy05+5KN4GSs4PuO4K0yeEnwRQEF7
	 Su8g/8ThvBEUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB588C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178755603369.4118.7340479143311294007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18295773ea240c3a309b0438bacbc86c54fa8020c8127af5de9919c26233263
Date: Mon, 24 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787556033
