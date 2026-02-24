Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2356E22D7B0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771961694; cv=none; b=FDdIn2a+m9U1PxMwwJkG/3+lq0nsTGCf8854ceRSNVrua/OBb4QLiobqbRXw3C8pS5IgQcmQIxOV08AfE9FWc0lDd/OQ3abyrKOv5yk9VkhaxqITCP/G5P9B+kgzPYkg2xBDjt9EAbjXpQrZg9FEMU0CurTqToIfEQN2ZgMah6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771961694; c=relaxed/simple;
	bh=lylVEwqmONP11gKGTysL8JpnGmI5adz84C7rVis8QSQ=;
	h=To:Subject:From:Message-Id:Date; b=AXjfWBZmAFMQbbpB74k8wV9ttcB8ZIOx8lvf6M8/U2jL+dGApQvZ2MNrvKiKHR6PTNknqzmTdZL77oBRitFO5/NH4o4k322VHMqu2lpPJOMLHXF9kq4I1AQLqZvvTSOQ45O+FyoOX+Ien1VWhha0/5iVPp+vgWKYivQfqEDpPeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6IA7A4x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6IA7A4x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC581C19422
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771961693;
	bh=lylVEwqmONP11gKGTysL8JpnGmI5adz84C7rVis8QSQ=;
	h=To:Subject:From:Date:From;
	b=V6IA7A4xyv+5vOKX+kQp48wEMdVAYE3NE/6V4DMFIERgXn2CN5TT8BPyLNN6T20wV
	 8/jQFC8evxyz8czA51RU8f9ge+g4dCqFAZeqeAxs32NGZz6DgX5s1EEBsjZBwhtgxk
	 +bMSq9+DmHVDY5v1wQ3XIeP7BJCyBpiXq9z6ZyGKTlJ5h0jySBg06WC/Eb3sRR7Wij
	 wr1XUpbv/o209b8DzSW/N/PMtsKtOU5AlK7UrZ86ml0jLoEaIGMrS2ubUpUqqK1fd5
	 ap6jah5qglgrbhfhsURl2c+1drBFcq+dTekMK7RlW7fB9AieNDNn8WSXc02RYlPrfR
	 8NSKP5Ee/29WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903FBF4BB7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177196169358.9066.9764686124337550532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ebe49f87c24d351fd6c187d97e406a9fe1ab7e332e97963f00ca08083ffa4a8
Date: Tue, 24 Feb 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771961693
