Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3638F1B4244
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747709994; cv=none; b=ao0EnUWAm5/Uj0OodxqWDv3B18vCZdH+GlXaDfYiobKFYYyciMixCjhiG4I4Di7cRF8Zd0d9/tUewkHArv0KYHuHz1e46n/iqbyXPqIkrogZadZI19Xozb0t/Z/bCHrR0T7UYOq52lkEDlfdXVHdL00MA10rcuCDR8DdOHpEydY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747709994; c=relaxed/simple;
	bh=ayK4xHU4duhDDYEX4AgF5RP0LakkzDyooGrDkyZJr54=;
	h=To:Subject:From:Message-Id:Date; b=BA+abTS1WKC1KyA/duDTPx79SudWhSrBCD3ZALFuq6EGqrO81ipam6SzA529SXM9X1X/gg5/3abghJfeosRFbO+j5luYdf8eo/ri7IQFLxExCXwRLLCj++vPYgrEr267uhOmMDbcOcN7gHW7L/wDmbZxuIkVLEVOjB4lYw9vtlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFe8QycX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFe8QycX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13E0C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747709993;
	bh=ayK4xHU4duhDDYEX4AgF5RP0LakkzDyooGrDkyZJr54=;
	h=To:Subject:From:Date:From;
	b=hFe8QycXKzSg/oXjTI6Xn7NXcHfHaDY+Zzfl/NUe3BexSCYHURq5KCePVqvc4jdSR
	 /5HYYrojFsP5/8tDTTAgSGjP4NuvzgsI4quoMmRGRAdVhslBR0Z/tbkzpBTAgh7jqv
	 XEM/TXTcM8czdlebxXB6Mb/JmSo/4D9aBEqZDJJ0Qv0nYUTtnBQbWpVN3VMFxAXB6L
	 9p50kckZGspxvnru/y+ePlMwMloR4QEiGWr5upqczo+irkmfaRy231FzbcOR3L7jjV
	 iei9lICsOsyykcruW3SSfUqBDa44oWrb4Q3m6L3JUQhzVdgRLXYAUhCkVuQUCOdxhX
	 h2H7zQWPObeFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E72FC2D0CD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174770999357.26782.8394045267450242888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f402a38e51db5e07acdc2da7779b79579a4e80d9844241bbbd61396ba3e347f
Date: Tue, 20 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747709993
