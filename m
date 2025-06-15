Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254C08F5E
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749985194; cv=none; b=Rr6G/k5cjZa7x06j8c+qNGnyf/7mXGgZw3tmnmJYPCeUpTJk305AF+1ZifjneHr2PP1O2M6MoOsHrjQeX3gCldGblBCmemL7a8tptNGxWixnDNMXMWSrQy93SY9NbQbOc48Jq/EbiMRmwMRSRN+fCeHhuCODDCztX7IUHC28+eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749985194; c=relaxed/simple;
	bh=2OXfmGXcj6gK2UNrlKH2o8IDWZZsx3qXz7rzCjawdWk=;
	h=To:Subject:From:Message-Id:Date; b=U48kYHTXTnFe1W5SBE8UrRpqhwrh33Mjjq2mgklNLPc26q80ElCOV1gwbsP/MqS2HZ9KZ0bwWD7zEIzRiN2P5EUTUXbTh+A8jjPCsXwZGJY39fs2hbJpVZz1FSQ3icJm1s3hMUpsx9RnfAkxuqAAx3tV31sVDxvQL3kkkybx3nE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eC8XZ16m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eC8XZ16m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E993C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749985193;
	bh=2OXfmGXcj6gK2UNrlKH2o8IDWZZsx3qXz7rzCjawdWk=;
	h=To:Subject:From:Date:From;
	b=eC8XZ16mwChHqKsdJNxZY1SmzsUcVgY6qEl9XDO+j8vGYIKnm1OQNApvlXQSXKsI0
	 z/tLU7+F4p48zPfhVXuf1eOnKUcZk4OS9A3vSzvl99oKNCRcHXP4tevazkpCIKYmYd
	 AFkUZa+IBkFzOha5aMhCcuFWyr5rFtwVlxfDaC+00TFJVcWSWidPZUe7PR03en2Nki
	 NM0idf1zBlYXIRy9pbcTl/nAFHvUo3Cdy+UjZf63tCo3z/HB0oFXgK6dDAM3udATot
	 guzktBsNrdPrw7+V0GZthI2mGNmzJzTkwiktUVnuFA0FmM4S7FfSsvWNucRXvSrfnw
	 nazMckup9p61Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E663C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174998519357.9791.3555019741338462541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f45442231f4f88b17cfedd62374719f21b92b4ff18ff012d4970e4fff256b89a
Date: Sun, 15 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749985193
