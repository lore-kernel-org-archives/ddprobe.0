Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE1CA57C9F
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770151433; cv=none; b=ND/45N3bUQJaS84kC5erTv628uOMZ7h9GmKTVdjsvSnXX7xF6ohm+YpTsF6maeWBF/mT8PWcoz3c331XfG/6BDZ9LEGYaJZtWzK8cLZO+u9NmuparDAQQ9eRG2lGq1hyxKzWmUC4TqG11hMRcofRMT8WUflGhQbd5hA7/M2F800=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770151433; c=relaxed/simple;
	bh=CisJ+M86rk26skZAegM8JpzEFJ6np2+hsPNZ50VPXk4=;
	h=To:Subject:From:Message-Id:Date; b=gfH/CVn1u+ZS1C8MYP+QXaq53xSgqV7hEGImkHq3KW4KqzNt/i+rwHlsF9NBpE7RFoyC1cmEdohEZr9y0Pj0xO6LvVuBzwhU0+tRy2QcE8LXxv4ca1RqqD4x0dXCChhHQlUKBJ3eeNqpDZBllrPvydn6X5JU81NaymsjHl5envU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVoSIOps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVoSIOps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5E4C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770151433;
	bh=CisJ+M86rk26skZAegM8JpzEFJ6np2+hsPNZ50VPXk4=;
	h=To:Subject:From:Date:From;
	b=IVoSIOps6VgJfmYKNlWp+lFEVazZ2P9iZhi6ll5oOmsxhSvPIViEMdg2qC6aOcaMh
	 iQf1Bwp3oNbT667ddz9OrRxGg/EdnUJhWFvKM8dVmoUmbr9dymRzKV4vjFz92qr6S4
	 ATkcR1r9sQc1z6mQqWhJVk3xTtDac/NGgKFNlGr9OjV4+aShb2Hf7yvN/msCxkWLK8
	 YjZUpmaHuIUePOltdh3ejfL5EZqLr+eS3QfDmYW/8v4m9pEg/LKxjhvF5TCXn9eV/K
	 Zm8QHxXQk1pfZ+oEr08hQeBBdCqMM1SdAqeLboCETND1BvLXwIIbhjbwQ0DMbRqkfO
	 1Ut3p3PRJEApg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE67E8B361
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177015143362.16218.14224416973992939195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dab0f8bdd531e8e583d90df12c64b95521b7ed3d70a4c9563b7b1763aeb0385e
Date: Tue, 03 Feb 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770151433
