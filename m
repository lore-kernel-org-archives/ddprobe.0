Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B1A1B78F3
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750279794; cv=none; b=ipNIaZm1ipoDt9bXMPV++GkAz8fQdGzeK8C7yZpRj5+d94k0yPhUffb7QSVwKZ39mnGYNhMQLi8M22GPDD/7JyuPY8vXAqDnbfYZKgTWoOVVl6NC/fnpZE+sLzLPNzCP4sgUc6p/6O3J4olydBULrk7BIe5ee757MrTZa6kSJnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750279794; c=relaxed/simple;
	bh=vI0phzUz/BRxQdGJK6QDiH1ojURs5cc/8VdfRFkhRlc=;
	h=To:Subject:From:Message-Id:Date; b=f9mf+bCpO77WwKV9GKvyK/+LLTBEzNeB04SqvOey1YiZFf0fwoyIx/x65F3ZUoYK/XpXqR4oBr/AkcCU9sef9Nvw6BHhLoGZ6hRguUS+ZJRse70j7/El4scormo0UvXAPktHHkswIS9K5p9YyOw3zFihPcrhAnZh90X6P3FrPeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nyt9wTro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nyt9wTro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B84C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750279793;
	bh=vI0phzUz/BRxQdGJK6QDiH1ojURs5cc/8VdfRFkhRlc=;
	h=To:Subject:From:Date:From;
	b=nyt9wTroxDmUGcVXCDZ1/oAvxpM/JqC4L8rorIfNdbGoJMXy+3izIqxvcQDAuOuNT
	 tPzro5gACq107yZZINY0/GjcA1qjgcWq8DLS93QR44NxJS8lTKobNWzuxW/bjrbhKc
	 Bj5BmMkRfGa+Knfq07bqK1uxYAV+QygMtnG+A6XPWoNfHfyY0lAObH0mK0hhYoK+Sw
	 XFuIA2Gv21iBM4uxMEYBSZpnyHv7EFopAUsapQLc0UEyhgQsB7IB3h5eeuqzXqWsNw
	 S/1ACb//sX8RtIhvGxHMm2W+Sc1Zl8/A9PIB4s4mtMvu5aF5O+FiMnDY3WJOqdEEsp
	 WidUJDDaWt0kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9660EC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175027979357.15215.6558455215561007000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8f01676681560b90f12c605abcb46c73eba04fe3653c0f01ee980b87093000e
Date: Wed, 18 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750279793
