Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE5E12FF69
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784997634; cv=none; b=psV1QQkqvs543iya/03rXZ2JbQpIgwuuwqguQ/BDKnth+TMhnpIhwWGRfmHzckjGFurgcjB//hHcHGsfsGKfxAC7yFk7y/+yanCq0SfolB3bCF41ec3n4j/rfTPmI3iCnCXPlqr7nUJU0rS4/+tdbBNpVyo10idAU/VXk4h7OgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784997634; c=relaxed/simple;
	bh=OoWrbH5S3UNNpyDNEFZ3BVKH129wALckSntNuB9wTuQ=;
	h=To:Subject:From:Message-Id:Date; b=O8nT9RlTPhVfmvyX7Vj9NUCaQ5qLJlUviQrfEliprGAFYQKGccfw8VuQX9e8HUVXoQvBSL8PUt7jGIgRESDtnC/Rv76BLE5pkrqgnEz0RucqcohY+RhHZAj7OlRHtyLSJ2xtm9OUQ223l4EOwt1+ydVFWC4NtBumLYQRJ9jJc+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bga1DSp8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bga1DSp8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D832CC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784997633;
	bh=OoWrbH5S3UNNpyDNEFZ3BVKH129wALckSntNuB9wTuQ=;
	h=To:Subject:From:Date:From;
	b=bga1DSp8Lm9Z6pxs/ugPzG1JCcMhdGiqbGIkZPY6xtzZTfECrOfnFd4jsxxkONv7D
	 TSl/PBnqYdcXhaG4EValVsNIbtATGWW+F4Mz6KxUpkWWE8Kl5hiv+iMTsclxQCwPh4
	 /Y1LJZuc7YFmLzmBOGKSBcJ73sykvr34pbzVYKZPDQxCStGSdLOMzptCFd8YXvX6TY
	 FrpMxsx9p8DQhklEfyLoq4M2uuXc0IR0KKhf/MvceB7YhwvUpLgHTC/TEwLslPUS1Q
	 MMQ1wLkkcK5QW76TFmaosIHZOcX6AI+bDoPI2buwHcOHTxmWDu7tMpt/pHw9/SwnCO
	 6GbUMT43OgLRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38F7C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178499763369.30243.615673645651617464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68228fa3fe34c0b6d98ebe74512a04d2497fe6672252ec936b10bb2e0bc6d2ee
Date: Sat, 25 Jul 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784997633
