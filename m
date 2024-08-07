Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3982F1C824B
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723034754; cv=none; b=bIWIYeF8dQUMPi1AuAfbKtSbOBTLQ73oWQUrYNe+Vkzq00AWNAVop/u9IY5Y+0L2wUBORTVX+AtjIODA8JW0zRJndEghHSySAlv6Es9ugzPTaUU5dIkCYwcbi1gsYFp4wwHu5qCvmeBaEjW7npmVburrBgK1Dei+OPEjwv0hskI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723034754; c=relaxed/simple;
	bh=+PSJ6uRHnFzkG/k5fcewsJB2RQ++hLHp+kL678sBI4k=;
	h=To:Subject:From:Message-Id:Date; b=WUXZfHKuPqOTWU6/fJm8XfcIk40ecMqIs48LBk9NmK5MjTVIruSXCCmcAvvUEPj8KOnhiQDB4qVAeMUwgRTxrFsHfhTCP6SuIoDZFvnwcy7ENFeZIlrqczWyWCjaRqvzEbNjc+xLN/b+VdZDvy3AJ/vzwXqILhFy/hmBYkVJNpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBoxZY0U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBoxZY0U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3638C32782
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723034753;
	bh=+PSJ6uRHnFzkG/k5fcewsJB2RQ++hLHp+kL678sBI4k=;
	h=To:Subject:From:Date:From;
	b=DBoxZY0U/08OgMPvano76f3y1336bediv6NFAtIKLidIHWAhAMeOVs2ZcJzi0qjg5
	 FzaCQn/S/4sh7tFAv4+yYrm/7IMZyKepLSppBiUmnrFkWGqvAJFF12jEdWP2EG0KGw
	 7uUTuDxJAEhkQBzx+fHPmCB1Dj7y8fEnC2umngrPd0F6r9Ny4E+HG5fnkffHlZqKTX
	 h3yOLV2wqwmzW3BWgunM+K7YY/aTbA5nenPy3GC9ljyxJpy7lIu7wK9TP/OgjhDIrZ
	 aH1UwHmvES3hgUd9J9amq/7dgN1DAZQv6kwG9vyN2rL6bTLLO7JijhXjiUSMXQfOvw
	 mfD/PpneEFEZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD45C3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172303475364.4723.12335236108706263873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7610b63201ccca5fad1742d3b8464b7dd703aaedd5816dbf8de2879d6581c461
Date: Wed, 07 Aug 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723034753
