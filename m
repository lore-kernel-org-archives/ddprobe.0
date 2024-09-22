Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4767979CF
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727046954; cv=none; b=jMocBQ6kCsg0KpKUqXtbpoh43J2F3VwBAIpBdPWzZJ/6qoKuEuNrHNBM55NhBhtDR9eu06mAcjksRYbzRstndQkBlMUaPPzEYS97Y6ej4vLtk3Bkdn8B4RGQdi4SrTvI9EbOzGLYUFixgZNyWPhEFIyz0/+0mo3ry6m24MsXT6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727046954; c=relaxed/simple;
	bh=tI1C2lCFxfRhYmHzmeX3V2NCPlNtdz683UHUzRJwgFc=;
	h=To:Subject:From:Message-Id:Date; b=NywLo4E43Mpzgsun6Ix6DkVP46dN7NSoVQmutKxDkjhyTTju1f4KJCt0IHopSTQczeUXXdUuCuAsLiAWednuvPAp/2dG0Xs+QwRQS3oH9B3q6a07jqyS/JyQ7/+GmNOf7AZXMaxXqoLxXx4wk3djCQtQgtjAIU1p8U0UdhxaUpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ua5i/u5F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ua5i/u5F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9ED8C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727046953;
	bh=tI1C2lCFxfRhYmHzmeX3V2NCPlNtdz683UHUzRJwgFc=;
	h=To:Subject:From:Date:From;
	b=ua5i/u5FgsH+yyuHw+hVGKa6NfhVfCdo38m+9lipgLJk44w+hIVjEoMSN4kDIGvZU
	 bkFKKydNE8sE31Mn1Hj5c/mP2KMuoTVzb7baz/MI8wREvPCF4EgAWa9OeCK5R2llnZ
	 UcMK2PKhXIqHCKSUrZkgE8Evt3kpUwTQjyvoODizDGXgCkDde7+5U+9TGLVl6STtmd
	 /FWoFr6ThR0m9QitPvcqtdD0LdMZQfzDoABQfNAgeW6xpMYx+jjWk4E94rEsEbQngV
	 5ITb/z341hOI4A+zL8IvKcG1S0OnGPZ81oMUcB0Q/l1tbGqMaYANJ0On4KPs7Zy0mp
	 fmOeQM5dOKrrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDB7CF9C68
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172704695360.3482.8625277729414339613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7430613831f698d166c75f7aa5c01f03683d91a13ecd81ff15e686d8d490d845
Date: Sun, 22 Sep 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727046953
