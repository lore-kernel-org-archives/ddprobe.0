Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CDA4C81
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 10:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783334914; cv=none; b=QtbJkCmwInUX31c7MyhJMRGZWEcEuailkMR52CKMN/Pxw/fEH9W/IvR1QAwlwYJyZSCmBtmxDgB3iHuxnwFFnI8MbwcTOM2p/Yq7It1aiikwrj5daKMFZ/7F+711/lc+5aAEBYbIMrZcb+yFJ2adMRaUsFqeLqAsqVXCBoihio4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783334914; c=relaxed/simple;
	bh=JZOXZBWIn0JqTkJewyGsp1eZzFevqRzXruFJzzOyp1c=;
	h=To:Subject:From:Message-Id:Date; b=ZPkaoJtnZMaZcHw/ESdwlvpUHNayQjhAKgczpCI7/n8THIIh38PnzdD7I9LeHbzTPJIYW6xquudCG7vnS0ld///WDhRuSp4jN+g+zSvXH3VhVYOT2Gg4C4sLyd3y9S+Nl3AOIa0pRJGpeZ/CKCArRD4rgVt0OlQILWAlBJOW3cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IlqAUsp9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IlqAUsp9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0378C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783334913;
	bh=JZOXZBWIn0JqTkJewyGsp1eZzFevqRzXruFJzzOyp1c=;
	h=To:Subject:From:Date:From;
	b=IlqAUsp99fOBRN+vn0+wHOgHqTSDNFHlUISCSZV1+hGIQwjsWljTV1mF8QXZSl2Ra
	 FhlP796heJiFsQFKZndkRJqSGEKAU5XakSjmc9dYd+zJqeAacNSRDJBOsV/OkmtSPC
	 4Hqyh6MkoeZNY4XsJLDpUy88BTlvaZHUAOTLyYHgEhfsTkZNK3DzwMh5NLIV5nULZy
	 /+BYSpypW50gshkHgbM53cwqPWchzW1hj0jpNF13ETA7trAMbjxyqsnWGJHwl5BOc5
	 PWyJGKnU7H2C8fX+Trli1tkXzHG2vj+AUVg7mzvesKpsaZmg36GL0RywfQDs55+OHT
	 8fWmNhPmn1a2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A951EC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 10:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178333491368.3944.4155329649802735475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 962404a5c456ab165f4a8c2d5c09caed75ea43a8ec3071aeab14f584a1fdb7dd
Date: Mon, 06 Jul 2026 10:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783334913
