Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098A537CD46
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773282894; cv=none; b=SfF+au3a/fbNlB1qvVYt1OXkomQJqPgZiek+X9lcipWbrwisHteb80/J+cKLNPOe+5hn2TV7a7zVfXcaBaI2KV+LZIG9wH0jERmk7SdFBJcKGrFg/ZPpaR5shyWTAXwSWsCd0yMCchrqf7NJqfWPTGILrwDXPa9fmp1MwGO9KvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773282894; c=relaxed/simple;
	bh=WSn3rp6W3aJCxCmwv79TKll/r/4TPFGxczUgfauqkRw=;
	h=To:Subject:From:Message-Id:Date; b=m918EzJOg8a7UwWT8VzKHasuOmxDhkNzpbOhiFdGdiWXPVFRUrlsdaZ7r8N9AtcNURND+IQ0QigxiHk+VlzhySH62MRCakXy6JnKGDHNm5yZF61/vAg9j/TNIcCV7KbJDY1MjkJ+E67AJJfUZevAwlOI5CCbo62v6SGucnqRyVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPf11MMc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPf11MMc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3397C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773282893;
	bh=WSn3rp6W3aJCxCmwv79TKll/r/4TPFGxczUgfauqkRw=;
	h=To:Subject:From:Date:From;
	b=IPf11MMcVWHbIQUne52YGYrRULO3rIUXkiNK+WVmazh64FIewKFaVWJ7T05A/V1M3
	 m/e3LPTYj6o/exowISo+IxGo6aEOiV1BxGK8eorIUe80k70MSTQXwt/Hgzkz3NanXe
	 fi2xANgp36uBVUwxbIcKLPV92NHUc+efuEgXn69hPVkG53S/6gEjYW3MPblW+Eok9T
	 CMBf9FDORvXlMU/dbtG4XvguBioB/EdFy3e5WPW4E7ayp1kocYbZ+aGG5EZREJqk6Y
	 dAlvaXvj5OmpL3Au3VM5PQ7Q34KRlY0GP4Ijb4lMABH6ChhtstSJXY2ws1NbJsPccD
	 bdxamZjuOhbMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD4A103E304
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177328289358.22180.2751468626727475144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec0d9ddca1c49b9c04ba2b913f4fcb083af61fe81cd1b9f335a44c919db98fb0
Date: Thu, 12 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773282893
