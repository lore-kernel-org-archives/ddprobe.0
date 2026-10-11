Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5995B1C75F9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791712234; cv=none; b=LqRZaf7qmjeLCCV6PCdbfaWcgqXY+E/60PhjDk+Cy0jWQLe2Mrg2dfbVcFpwlus/vOkpGcxaHDz2Hh4/IGaouWPYphC22XbS54vR6f1NRMY6FOvhXOmiHWs9/7S2hlAnJGwkUL7Jhja5lAXDCR1g3xUO9VksnL4aGK0Heys0Iqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791712234; c=relaxed/simple;
	bh=vxRCpHQdEx4dPRbDkIWjhgrEfDjbHMiQMij12WQBSV4=;
	h=To:Subject:From:Message-Id:Date; b=fR71LEpCZWGCvZBqtd8sFkVT0foPq28Qq2tQL7W2DbYhp/0MBkKhSNha6kdAHrZv8/Xtmn0yHbJO96NmQ84K0ggMoTwyS53NDO4l1IKb0vhrEUGbZUHvei7X+oMikxdnd6A/2y1oF2PRu1pES5EjtPgDBtuJIzQrfwFQlQO5FYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITjjKNjd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITjjKNjd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D83A6C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791712233;
	bh=vxRCpHQdEx4dPRbDkIWjhgrEfDjbHMiQMij12WQBSV4=;
	h=To:Subject:From:Date:From;
	b=ITjjKNjdEhXDTeZCuYurYukyTm9TzbHxqJDj+0hvL6YWQY1/yKL3+tHz7BfrT6EeH
	 xWK2iCEn4MZCIJOwatA3MTUOuCrRQqgdJ9CMj6RgB7eCXm2UKaVtMLeGqiY3sNKzo5
	 O9WBoHIM9LtCzHF5clj95yh0Wi+FfHrA3cw3hMFES8XNeGnY92bZNXVbvm+nZ9oApE
	 yyoEvXN82Ap2yYYcLI6Y5uI77Le1ZqR/M6tkqfZgCghL12KljtanvJ/WenfORvhJdL
	 trjSVW8WEIdQqdhuFLksZbVfWSBvjCl86wbQRZpchTMuaKLVm1Y3XZ6gQNsZb96DcG
	 /43b7F/3gexAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12EDCA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179171223368.31109.2697104005523292330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cfd54c11c4dcb69987cac85bf289f09be67d30489d3070c9cdc4315155da6eb
Date: Sun, 11 Oct 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791712233
