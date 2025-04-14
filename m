Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1DDAD21
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744594794; cv=none; b=cEtnGE6UIebXctzGBJ+erxOp6c7pBgOjnQ7iYaG674a94qlqUDrO8EAhTWt84aSg+U24Mhpb9gsfnTQYOWdWAAiDlq0aooR79Q7766r+/hK/VEhLI8LBfc/IOt2bVqGDhxZJRGTB+4vGQ4vOoALQ1XJEutv0Ykm+qKoIVQNE4JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744594794; c=relaxed/simple;
	bh=5jlTHcyYxeTVFIQL1ANy8rpUia6jbNiui2de4quhzKo=;
	h=To:Subject:From:Message-Id:Date; b=ieev0QlE0lBD7XJouxkI2iNybiy7D582nVd1pQdibLamzKJHqiQcBV+kfh9SUgTzyF0MGou9Txy49oZfKvH1SJ0DIuyQIaJWDxZD8o1yUrw6lJNu5tD1HIOULhF9q+8fblVxEWA9SlkaivVfAWGn4MGfUVZ198E8iVXTnSmYPRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwYqzjv3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwYqzjv3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F765C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744594793;
	bh=5jlTHcyYxeTVFIQL1ANy8rpUia6jbNiui2de4quhzKo=;
	h=To:Subject:From:Date:From;
	b=IwYqzjv3JAIdkgwPm7mDnAXIVZNAOc0/H06dx+5a+6yP6z+M4BfOmtABKX5PqhV/H
	 N8YUAADjcf/R+CHiAn64Xu3ITQsnOMOt3Smj3ow527KeqgyXxhcKrxVx0ahtKZZBAW
	 Yyo9BDKpCL466kBgrROB44aQwtavEuy1GUw3rMojNeRJV8PwXMzhfNDBt2zzbfGxdz
	 LprCWWN+Ui3yQQDTFxUP1/G7uD1+oChOWvNdjoIPvAfgy/ULcnya1WKpNwVMcH8siS
	 t6CzNQkBMpnEGAwurLEAmCER+xKXIOrPpyj0agf6d7suzdgrHXDc5EEMbA1z9858hZ
	 03IgLRus4KNDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD9CC3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174459479358.13954.12026636874945918180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28a096e2a4f903c8bb1d07a592e40f2280bdeb45470745a6be961ce16d8d2214
Date: Mon, 14 Apr 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744594793
