Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEDC24677A
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772124294; cv=none; b=KO/4pbtUcDHprPAyLgA8s9J0bIoJ7E4N9afs6SXHNbTEM25rwqa0K1Llsn2s4NEO6w+qrRSvHCzPOcL7Qkg4tG3HC6C9BHemiYEpnC0r5zFtp2mPryndodtqOGMzujTCAShLUADmoTvg4gZP74NCedyCpX/66v1KHHXeS2lw7Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772124294; c=relaxed/simple;
	bh=yWtyZJlJ0LE9JEAWhfWoXuLFRcovxaHSpj5jf+uoWxk=;
	h=To:Subject:From:Message-Id:Date; b=nD93JucdqMWYj1R4F4YdiwkgsQx+YE/XKkp/J4qrofzQN+/DJXXz6QaDsP5SxHQYzFZAz3jxkUW8Pslumfr9APQs7DlGYBXGv6AozFJIxtje1IG7VJNdI7lhiZ+UuaYF2G/8TJX5WOFNCAzEMwar24DV+8ITLjq6CoS47E5iuNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SC79xrbA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SC79xrbA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A99C19424
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772124293;
	bh=yWtyZJlJ0LE9JEAWhfWoXuLFRcovxaHSpj5jf+uoWxk=;
	h=To:Subject:From:Date:From;
	b=SC79xrbAiFgNEYJfD71PLoooZfXeFQfs0w0MO2gl8rTm8Qt0LsXZeiZRdqAX/CE2y
	 3kmD4JgmlOot9P/3hJj1uOtEdWgveVVuRbC0XuL8Nu14qG9L3hlW2JgEKFgISicOZ2
	 J+iYHWHXlFW85lvgsZES6Iv+JjNdnt9m0gMWdMVP5FEAB4DtdlA2WtcuT8DNCFv6Q4
	 Lxh6f+G1TY86Sh541yXlqcxMtcIP7gXpJ576YPZKVHO6AotGHVN7++hfXmqntblwko
	 Cxfxsat6J6EFiO61ff4rP0I4qRk5A2HMYe29kaA4nJau+Pvp7+6uQcufgAoBMG0+UA
	 MTeMq4hXnsvVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE45FD8FD7
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177212429367.1635.6496449749801344351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 632c7369b91cdda4872407afab459236b3a156dee9b58b9c934672608e52ca41
Date: Thu, 26 Feb 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772124293
