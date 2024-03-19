Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAE721804A
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710868697; cv=none; b=UGbkY8bRdND22OY/SDfhiQQTQKoYIoWIzUwPO8ochZOadLE+wkA+rWZGcKtqnkxLGuiya9LNE6sEYGBj9ggLOsTQjKae89IwIwFAGw9F+d+dNw7ui1+4cAcZrzHJsVPuH6MYhM9AUA06KQfL5vkorhb6W8DFxK3kIpFgBV+RjTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710868697; c=relaxed/simple;
	bh=YdU/+DqIL+GXkmoh49u207h23Yuvyu/0TYMLqF70M2Y=;
	h=To:Subject:From:Message-Id:Date; b=E4j+O+qsIU5kCeXhW6++AhdsA/7bD4NVsKJk07AVv5OjJ+dVa/eOa+knIwoiUBiY89saE2/CqMoPr5XQNT0v0ZL/+pkEUA9PfpcxyCXTaWOFg80o+wRmZ0WtaA3OpK91qymWDDwZUoiR61rjO8H+OtOanPUbGirhopYcsAz1d/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bg98m5z+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bg98m5z+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 724E8C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710868696;
	bh=YdU/+DqIL+GXkmoh49u207h23Yuvyu/0TYMLqF70M2Y=;
	h=To:Subject:From:Date:From;
	b=bg98m5z+zEQrUib5xia8IDcmmJLDzyb5BhHw6X8N3QkIXpVel9lmQi6q4C6OGoXhx
	 l9hPYoaGT3Sm+Q12OtYJg7IU6qvWpzAOkIUwOJWIsDy8iv7a76E1/4AP8JgSrsG61B
	 w7g1nhyEl+8EDOoQ4bCS54a8r3aw6xiyikhWcv83lcunihcBy3PUO4SGTXdoRCuZnK
	 9H3pZNdUOsaXEaQk4XFhJoyVKL24hFwDXnKUrpt4SAE4PUpa0hIFk6eolubHKxVM6D
	 Xxz/mU9/iYoV+xiI2z0RWA3CRAata6+gYtSgM3H24gnqxrpMBYxbGgCvu4+7mjdS+Q
	 JV2FI7QaXBvLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60DEFC54E71
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171086869639.5886.9058928745830537236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2fcaa9a185db9a56c1aea8f8099003c30db496363ea5dd835a32d165c7c7d2d
Date: Tue, 19 Mar 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710868696
