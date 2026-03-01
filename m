Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118B82264BB
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772399094; cv=none; b=qE4Cv3WXSYV3McL3OiW8FZZrvsxw3dHWANjEaXf1IYZS+zudlkGOdrSz9tJ6/pRdVmuMZWLhabBZg0/Lxk4TWnMWp3L+W5+N14G7zQGzO3EzAMveQz+cs6u2Nt8i8oOgOkRML/A0nwP8fYYJ2TXRqe2k1jP1FfkCbJcQW/iuDco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772399094; c=relaxed/simple;
	bh=xjWzw7NeiiH3dxYfKzbYIZ60SyaudoMp5EI54V0pvWY=;
	h=To:Subject:From:Message-Id:Date; b=m+5gZvrQ/wEUjNMEUujK61H58grElUKAxi+6FHWwRR3hIbyGqKcmAj0HeFV7o7dzESrlXA8oKQ6+HkJhWk+NaPPFelHC/Q8juvO97IlGEBkhfii2npK0rH2ttUQ+pXJ+5BxkUqUrL6sASAIKB6dHYE+xfGlF0GQToSv8FhP/yVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohCY2HS7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohCY2HS7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5CD5C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772399093;
	bh=xjWzw7NeiiH3dxYfKzbYIZ60SyaudoMp5EI54V0pvWY=;
	h=To:Subject:From:Date:From;
	b=ohCY2HS7PH0gT2To66/XrZcXseuuuyZTAijo1MQgB3LWkPJJyE6hHcUhIckZISGAh
	 4QYNOBC4MPkKI44RuXKLGrmhOSS2tdyz6BbcJr/RTANz4u08mMlkzrF0dvfIkSmnL9
	 TGXenMXEWerLwFrNbGNE3rqmtzXapf9WHUmwfC4KjTRjk3UBGdWDIEO/b+UJiqQnmn
	 NmYor4RsME/qLolsZNZJU62Zdzx/6XIzRpCDs/kZvPm+ACRke0Y1RtD3Q/NrHKaY/p
	 Ay9ID0HIHEhlVUurw6jbzRvXGgOlLwPLkC75Dx5eR70/QK0+96K9w12vijLEBdm8Oa
	 eVZdLsmEDt/OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B1BFD0078
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177239909360.30894.13431180181650002466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df5513a28ca63d513ab2162f8983f6083336117976f11749ba7d813ffa7e006c
Date: Sun, 01 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772399093
