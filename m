Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFF12CA6
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726451754; cv=none; b=QskTNVULrVSi/cperXHM1y4s511Cm/ZyYlxTF7dpMg+Ay7f7AK84yXMgit3hlzcy0/seNSzslEPNCMmBNfloqLE1N+SRxQMYMw1DtK9kAgMlyQW0UEfOFaJkC9+VEkGVftXph4t+oe9tJxYSUgjSXP0I7oxdXuJZ+FleLYaLOHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726451754; c=relaxed/simple;
	bh=ZJZ61UIwj8PGUqWASDMgJYcZB4YyqKVSfOx+gdiStGg=;
	h=To:Subject:From:Message-Id:Date; b=DK8VUuJcWIlq4LdYFGNGb6A3YvFBjeslaHfUx6mjyCS5NyIYGt6kZVY6tJbenKY52GtR/KB0z52WimlA+GH69kW1FtVkNMhGrYWeW12rP+Xkh4qXB7oUKI5eCqP5/oO3iaNj6t9CrqIb1lxii0jysIYloEZB3AyPtWbq353GC7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fN94YYPc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fN94YYPc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA572C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726451753;
	bh=ZJZ61UIwj8PGUqWASDMgJYcZB4YyqKVSfOx+gdiStGg=;
	h=To:Subject:From:Date:From;
	b=fN94YYPcdboilrAvYtOFEnU2nmnMO0NDBUnhKNCaDowzLkkuwgC5a7duBvk5wQzzZ
	 g7/yu8O+XniwaVsXliaB19PhX8/e/91AzALngCzRZPo3UucdWtUuo7UqV9L1qhCeFD
	 ugZ2E1P5qrMTS6Xwj3CWATQjZx9dEVdZ28c1B6bxzqx01WqfRBnBQK1wf+QdwmG5xB
	 wYC8bkSHR1h1XANk2MSa/ACSpqMB9Ho/Ul1yONNOgp7wfs/2ge6IMUC7cQP2UtWlnt
	 AGDBM+0WqSIftBouZDWfq17XdhS5kuj0I+pC33nphavwS6hykhi5Cz3d9wCidfY8h1
	 ADdGf0XvkFE/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BCDC3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172645175358.28544.14845910296782346856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 153a65d8d3c91c17653033d9132954a43535787e8b03272fd73917af9715ea38
Date: Mon, 16 Sep 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726451753
