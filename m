Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A1E34A78E
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788405034; cv=none; b=Hl71bELgiaC0KtL/bLgJPpqDqcMpGKK2mBrKOztqYDdVj8QRfcLI2bLnUyKfj2iss5hjlLxJ4+dBlQEmt4af32cS6BEUuqnrFEHUyljLjLkFSLhMskyOoMrEWfs/O1n3OpGHZchoSsbTqXtpXDNtNoC0YvVAsZQoWCidadt/7I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788405034; c=relaxed/simple;
	bh=ljDrdaCh3pahX9655CzKU9ncrd0z55zcsuq+4T7tf5k=;
	h=To:Subject:From:Message-Id:Date; b=gIc9brP2FsoqAP5PhHCXDzp7WnxP/Hz95c+7W9qJXGclBzyTgt+UNlGk1ZCVMrO5LCunaBrGRVOLYfS5LAmEbvqV0j2WxphmjatTZCqcU0t5KJN1dFVXZlOR6/pKe+pgUzg6oYiQe2P0YtN/v8OCMYhIxwhD0CvN+6ZDQwav7bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jfn8NN3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jfn8NN3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BCAC2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788405033;
	bh=ljDrdaCh3pahX9655CzKU9ncrd0z55zcsuq+4T7tf5k=;
	h=To:Subject:From:Date:From;
	b=Jfn8NN3EGX1BZYbrF/PJ7Vl6BsTcr1wbfpxfy72fF0ZaCSQ5ZkR5kmkJoyWWU7Af8
	 w7+fTqce4Y2/UGnC20hxeTS92jDWJ///Udb1e4WG85Hs3LswKYTII29TPr2bz9LXdt
	 DEjB1/puUqAHpZey830k9b8vl84TkbP9ULlLfTgmpbDK0+XJUJChOaeGakqJ4dukmD
	 ADwX/vUd052T72fdkGQjn9AEA/+YvvaNh79XGtqJKscrmhvns2c4XwTxWPAGM7NNj/
	 W27SfCsEXedIaqX5q/Pub5Y9/Q9vAADnoRCyRb0V3r8TAJwvtVFh1ro3N3USVxvWRS
	 67zlmhIYl3bfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D8CC624DB
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178840503370.11423.15156023598417507295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a072a5cc6ec3bdbcd6d958e07954356ddc545880f3cf175547eb8473f4aa617
Date: Thu, 03 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788405033
