Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F175695
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 13:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764250974; cv=none; b=rqxgertlUabHKV7aNaNudgVTzq9y1dt4wkphUqS53h+X2Cx/DbDkH5gIE2TcuBiw7Xi9GzSCpvgMGVJGMkqCx+6zEiEKV744aenpz2bikqzhQ2/KB2yWl1sRukDBgTIZ4L5dBAhk6T6hehZyUseeN6kWrL2dQVASwGUkfUIkX6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764250974; c=relaxed/simple;
	bh=U1JsqLtpcMUuOfwp4VfzRAz8YMw5EEChrvZOV+OuGWc=;
	h=To:Subject:From:Message-Id:Date; b=ukAeEBrJ6dyceSpnsnJdiJRtZuuHjhUznzdivRG8nTDc3JZxDNtKYpFhQV/igJPCWeFnJKLaTJHFb7ontqGQQzGlxl+xEcw+PfVohE4FReq9fp2bvSh7ihBWKJ6As1sa03i7Cr5aDtCB7lC+GpeDjzX4870e1GhCk6ZXeGj2w9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVjwrZnT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVjwrZnT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B31C3C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 13:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764250973;
	bh=U1JsqLtpcMUuOfwp4VfzRAz8YMw5EEChrvZOV+OuGWc=;
	h=To:Subject:From:Date:From;
	b=rVjwrZnTTcJ40FA3yAhPjzZZyEUJrq26KkbwmpXQgZvyowvy7d5nKS+9MU9P2vaYQ
	 yAP94wo/ihUrDkAiOtv+Mur+m7wRbCAD9WStY8d6IR8QefKIxkn8hTfMqcco2co/ms
	 4++EieT0FdzuWJNqgE6hru3hd8OC361aO6Z5uV3auLMjNJjhxoms9CEpCgINZzGTJ5
	 cVWGcIlvesKjaMcWlcxN93/mCe4TgoO58kvSJniYBbeVYlryggwyCgXqdHf1wCYx+a
	 tLUccho2+qN7QJvIviomz8xT8FCNXt7WOi4EZ+VToYSo/VBDuDB60XhI9BMLpl/Ddv
	 89GbaWiUUYqiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A067CCFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 13:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176425097364.26183.1069358090609260110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 692e5ccbc604bed8b67c3b7f67eba149b9dede04d55dbe33371436f541cde35e
Date: Thu, 27 Nov 2025 13:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764250973
