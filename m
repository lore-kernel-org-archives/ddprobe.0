Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B7934D921
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763035794; cv=none; b=lEG6+9ScHugSpOs8F2S2MLV36yfLUC1LfTPb7GY+HqXb+ltKHSKDZ1HCE+KUSg2QjvEYUipR197UZlDecQtQMy4efKKAh713kFb1w1ekwfdJ6iH9JZiri3h1J4FoDeYGW87X7048chLdWdj6EEeNJbBr8p84PsG8LpLOODPQkn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763035794; c=relaxed/simple;
	bh=P3iyvPQZDH3erJ8lqJwUmkVnOHvKIM2b/vhFFLHaKKw=;
	h=To:Subject:From:Message-Id:Date; b=lTa+YVj87SoXv9CHmWWe7vhdcWNyANn+5zMoV1BwZKU/KC6oJiXHNjrikren6XJvssvFc6q9NfUaOYEJRmdH7m0ZuolZSPjgCOhsiab4Y14nEuCZmtreZN8Rr2a2jBnhatSR+esua133G+GEdDh41KRd1a0oOXCbwwUVGAsRaVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCnhHo8d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCnhHo8d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B377C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763035793;
	bh=P3iyvPQZDH3erJ8lqJwUmkVnOHvKIM2b/vhFFLHaKKw=;
	h=To:Subject:From:Date:From;
	b=uCnhHo8d09nbJACs8QaV1S936YQZuxIHrQDyjNncfY/O1MNbCc/pZ5pFMxTmVAP5P
	 5DIYtwWEoZzoc5SVK7TsVq3vvHS/AeHv2B/PgXqiBU+MswuhAjUblXzJqqVGWQ0KFj
	 JyTQiqiR7oKmYsnhM1wx+zE+SrZ5/RPgJhMVi3t6OD3xIydv7zsvq6xkB66wpAuvQG
	 5+lgu6MQRrPck7MZBK+gFnX13cz6qAsDPRqkLSLijPjsoG0RCJLtV5G8oHY8He0urH
	 ADf2+VTfibYb1hc4zsuWaWTm7RkX1G30RBkQmWpr4Tjn6TJSzFnG3nRpz6oQxnoaAD
	 r5f+kJjgCRPFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF2BCD5BD0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176303579358.15447.12152239982642438252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04e89501819d2ec8da1f98b7aa0a23d63d9e999970eb01aae0e9c6ea8a1a7df0
Date: Thu, 13 Nov 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763035793
