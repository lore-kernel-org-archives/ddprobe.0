Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291FC145B16
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759106394; cv=none; b=Sl2AsrfkCH/NOfRwGl7a5iB7aZXssRqCUgOjvIhZidJsmYHc/YYq64umFKxP80AbXUwi6jQUVI4QaCIg1Y5V6aTuIcuCGCRJVdBEfPuWDoFo7f4mRm29OZohEmfCrux+/iXn6i4DlCItqujYe44lUK2EluZxvlTgbW5BpsESoIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759106394; c=relaxed/simple;
	bh=LRkQ1iyAMSZYWFvOEIYR9CqLwpLfVXA0z8d/NeZ76pc=;
	h=To:Subject:From:Message-Id:Date; b=jNmC/TFykP4hnA/ezKqkpChkwA+YM82/qRamh9kbtY0Csdnp+t2IKmgMbo/DbWnvqZwF5O/sAKdVwskiiUHfRiCSxFqnNtFko+9OfT0svuophGV1BJ3VOLjq9iY29HoGnI4BwupjMSOEmepsbj5lVZQK/GTY82fdGuIDt1F6vtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=duz3L06E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="duz3L06E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3132C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759106393;
	bh=LRkQ1iyAMSZYWFvOEIYR9CqLwpLfVXA0z8d/NeZ76pc=;
	h=To:Subject:From:Date:From;
	b=duz3L06E5tj88vqkwpo4Vv8JBdOUDJK7ItGE23QLRmGzlgW23UmA4hXirJHkvjwqe
	 JZ4FGHXhMW4esqGQhFjBXAjmgffa1jf5err9+6NI896WDKIvIp6/pIW5NQ6rWGMNoH
	 6rgJdCW4dwfHID2iNETtpVcuakH8/bdkeNVxnr4iPQibCN09yDkZzC+HPTeNW8m5iS
	 eankEbohMLbPMWV8dWAc2NlPnbn30SonNbszcU7l/tNWjotLKIzaLG2Wqmd8ac6+5w
	 qn2hRHuE8GjlTx0RannLVgN/RJIl8XwSSrgDAa0ZCOgWwNK6/U+gGooe9jGmCOit+U
	 FrpH78NbkIC5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAFECAC5BB
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175910639357.27414.7437769498449316718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c9e0e87394a3a4062378123f6033178c4ebc0234542c461c6d946b14fdaaeea
Date: Mon, 29 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759106393
