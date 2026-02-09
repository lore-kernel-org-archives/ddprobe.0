Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432F0366807
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 10:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770633234; cv=none; b=KRqXrMkOwCKxgmMSewNvjWkPyaG0lvop5c72nvjOWfFDAAQk0F21E3uZnSjLs4LuvFGJOY0TdejxQJj7pgI6IfqR/M2WL0yGLpfw8xqj5lLCWx8RJSnf7lxdvsINgW/wFRiDVNip04cJ4GyWFpYtpQ2lcwz0BFLsyXWLD6sMmjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770633234; c=relaxed/simple;
	bh=DLNQVaKsnSdEKSZxlbIkyx7NXuvR1WuYjY4vDFfi6DQ=;
	h=To:Subject:From:Message-Id:Date; b=KRWHGWq3TEpgR4PJDzEZEPGg8isAmSjVogiYfXza4H0lwUB3XmVAYgdbaKwnKt6ZbNNoo1RJVyNH4wP5/eQLoy3o85oE3rkUD7/FizBd2JJV/WQ19YzKixXNDlq8EBLdz0tVDz6b8SzmcBgixqsXKUFjEEmHhSj1KAi8Nj3DW4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGn53hYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGn53hYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90C9C19425
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770633233;
	bh=DLNQVaKsnSdEKSZxlbIkyx7NXuvR1WuYjY4vDFfi6DQ=;
	h=To:Subject:From:Date:From;
	b=CGn53hYHCGOeFDXL1vHe0TwQxRxB9g45VDBkzEgbWamoOmqtOa1qYjqOxtiRjbxyO
	 je1wAQPsHke1WB3MudZYlUYNWkSPmlj+EgaAyNm7EQjYXsurku78l5qSl3y8mc7Duw
	 8wdRpUrI66T408lZKOjnJA86vu+FFbWM7yyqoD8Sjc88QDlOM2lZx45muc+BjdE/Tp
	 6GumFa8p3EfrbW//z9uNMjdsvk8M1+NwLZj9dtYqzDEKX0aoEI+nCbSgwX8OVflRvv
	 8N9NU/5/T0smbPoqumAb+ENqeJasoi6fEPv9LHSbZUrBMTa+RVdoTG2Ow2DTZTzNZA
	 SH36leaxWnJfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF3FE7E0BE
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177063323376.1968.9838317358317738008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f1d784e1ec3872d7c161863dd9340f3a4ec10051dab35f59d34b3cfdf76d58d
Date: Mon, 09 Feb 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770633233
