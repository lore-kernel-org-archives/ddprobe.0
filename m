Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A8444C94
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738808756; cv=none; b=WdwaxcIqPfWC5/tEkHLOOGiesknGA/PYSD30Gqk7QaeXaDW8beioOU+f+HFfC8XPkhY69FJZKVuUi61KuRv7sM6gTsj//WpuxThczh3v0hdWFTzoqzf4qba2QaapCvk0o5wTTvKWwYb9BrqRq0CHfikUt3B8Y4zNF98yEN5kTeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738808756; c=relaxed/simple;
	bh=5h6hJ36RG8DF1owBP2Pw/By8lV52QZ9PCbupFVCGJEk=;
	h=To:Subject:From:Message-Id:Date; b=C177jPEMrFTF4eCazJSeXjwSwNu4IO6J6ZhfBlDE90GUiDHjlRIVmPZTiNhKpOJ+RR1+RQWRJ1faZ7S7v2bVTZFBAsWXUAtR5HE9wUC+ZK/uXBLkmLawXsYFOus/uniXgz/8QneOK87EQzSsirXLyB3bfxjG1uE8H2rlbzhAgc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nreLqrl1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nreLqrl1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA25BC4CED1
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738808753;
	bh=5h6hJ36RG8DF1owBP2Pw/By8lV52QZ9PCbupFVCGJEk=;
	h=To:Subject:From:Date:From;
	b=nreLqrl1Me22WWK22QraEg2TXHQrOj9ZvxEp0bAJDvzhs2IhtFMuTjBX6gs1bX3sp
	 QSUhGkyvqnb2nYvUt3k4t9DGNwYTlM4HDqurY8LwO3VQeYLOPD9BO9a4iuXPzSjvR6
	 SWLHrg8RnpZJw4kSTMrYk7fRu/ainsLP2mwAYRBC1koJT9pjk3i3u77u9q47mH61eR
	 hQ4RAPd9WvlzlTMf5z7xv/WJa5CasOG4uzi8W74rZFLo9tKhYQwcaXViGR0mNC7Dgr
	 2a1VOiI5JaC5bW0134+t+shofqR6PLj5RPO/SC/qIi0k+p9b3E0Uqc1AnUuAQeiB1g
	 7zBzGwLeMNHfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A078CC02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173880875364.23668.11312483998545033629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15330a560f019365c929e18bd04cc0339dfb86bf86ee94beb66ae41be172b81f
Date: Thu, 06 Feb 2025 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738808753
