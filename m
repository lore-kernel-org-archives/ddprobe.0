Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1362A3C818B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 08:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780562674; cv=none; b=NZBZOP2zUPYMRy5O7cXpeO+wcrZI8qI8H17e3lNIoMrACipIbEzkarF5CeXqgsvOV5dOVpt33vox3Ag/eUZHqFZpd3NEQArdueQqLx7YbD4dXD314gXNX2Ecd5wfGhOrvVfsBrKSbLMgCUio7/RGHxnHSDgqFdqxhrEnyETfptg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780562674; c=relaxed/simple;
	bh=6DCVOmPpu/o2Yet8BE9OVusLbP7Dt2Q8935Mnq0lxVk=;
	h=To:Subject:From:Message-Id:Date; b=JuPB4bfh05v92lGzWiDaCttGEYnAYD7pxSa6wW1A9c7KMmy/yfG9noCwbOq/SZRqbdGtuV3K5m6WLk8tZcWennRsSEdzqllDtFumf10fWZ2cgw56UcbwzSrfZjW+sYw43CbL38Y7sweGyt3dc4QGm3L9vM2/eYcRDx9GAibzXQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PVx1vXj3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PVx1vXj3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0719C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 08:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780562673;
	bh=6DCVOmPpu/o2Yet8BE9OVusLbP7Dt2Q8935Mnq0lxVk=;
	h=To:Subject:From:Date:From;
	b=PVx1vXj3qrLS7tPXgeg05bmn9nvsSRGyO10TulcTfuRIA4FzRYIbl/vukX+6ki1V1
	 zMRouzzFziejDLWXPjH+YQBWgyFf8XtogFpBPKszZmmoY/3nKPKyOwOvLYuJrbNtqv
	 DHLDU5Hgbvkw9opdhMBC6JCxK90ZUnks/DOVptfIVICWTtHLEY7U7TunHgEb1vZmo1
	 W7V7hQftzTRx5UqKcw88MsRXnw6JfJ7fg3ifcRmbUyiplo4KQ9s41z40M0oxsil3uT
	 qI0ZHVL6PhJyTyca4f8VIAW9ubSaI5jMqd+NGBVQZOg99MvZXxKtUXAZCDApMHfcrD
	 QsnyimsU8Dl/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F1DCD6E57
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 08:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178056267372.3006.16274147657128191398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 918a26839f05a48f86b430a2b191b53ff130a3324c110f6e2acb147c08be12e7
Date: Thu, 04 Jun 2026 08:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780562673
