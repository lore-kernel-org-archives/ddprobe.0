Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149273594B
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758586795; cv=none; b=MNeAaVhYY8yTFygSj7j5W+V/3bu4JdeAnqEypXf18Ts165ZKBl1yfdqhmH4s5xMKpbQ7lvrHp6dkPYJO33KfEYkQ931Mdj73dah5jcpa6NoB64wjHmWzgMkNtDvpc3/fOXnBdIxE6lE5GYDXTrooGOn6j8SghmO0eNuINH/9zH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758586795; c=relaxed/simple;
	bh=zzAw8YS0i3UUJaPZJuGdZvMOhwZUE3aHWSM8F7eV1lc=;
	h=To:Subject:From:Message-Id:Date; b=CRdJ3okpI5GxW7RL+p+ZGowkqX9tRHf7Y6SB+PhcBFDIlDXKAT7iiRONekcNZs1h6cwx95cbnrutaV1Tk2Z+AKmzfb38+7EppSEPGpDYiDygOXPraTMHxkntlsSWfIuzJF2/cqJupI9dEnKuRRzJynC9hQeOy0PrRHxu71Tg64o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCazQc7+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCazQc7+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE0EC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758586793;
	bh=zzAw8YS0i3UUJaPZJuGdZvMOhwZUE3aHWSM8F7eV1lc=;
	h=To:Subject:From:Date:From;
	b=vCazQc7+3X2tv/WZxsQnM9lahzua8BhnrmrJjHSwsn00Wa+0sJ6hrzzPxkdC5PEmB
	 MKL0YARKra5QQgcUGQqx6URHUwO//b5GIwwxoU2FFmldgQwFgBa+HO7J3QwAhs8X0Q
	 HpEsIWMex3jaU4aUFbiYIedp0sod8AzfmDp28rhvATdr/ISmtqf+tGQqCWEaD4uwAP
	 1jCKIIRVrVTDOHKrk7CtOz288g70gzh+OhV7Yza+otYSzHtBW3eVdreVw4ATdh9ZTN
	 i+RXw12EL09G+ySOw58oHnH06cvkxTEKyoyCMV750+WidfaeQa/LDd/oqeOz/kGsac
	 WvVbvGRsj6Prg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7B6CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175858679362.23265.4879883208500826512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 787845bf5322e658c1e849eb67cab121fba88049d7ec30761ef97cb8ce8c7aa3
Date: Tue, 23 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758586793
