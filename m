Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F0D21CA02
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 13:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763905314; cv=none; b=jYfl2kr8ZjBgsaBAWF2QNQFV5dhCbZD0RZZlTxKbsH6GWqB4DB07K+vPSEUsTxuOldMPM3Nb9IvWoR2hvefAkyhocMVg/7+6zhaZtlcogc1xs00a4LK2FQqy0VI31DIamQaDOXgItBKl8D7ZxyzqLZ/JfDFVIhII5bQPpfQwKwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763905314; c=relaxed/simple;
	bh=H6LmHmRay7HcdMKMxeA/HThyS5vytEsCpZvkWNgED4A=;
	h=To:Subject:From:Message-Id:Date; b=XBhF7ix+sEUqY1XgIDSFNBOq4Ttj+zYQaAy38emiJU4m37sT2GmOel6EZhMM4v9LW6hSKkrVixVpDF3qcBkPsbTJFNMjFN/4LZzRtUDiSX5FYP1QyY9UuoA2sa23Sf6fjAqsToccrnPXucuB+Vg+Cuo2m52X1yyw7+ECJsPPIMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EjpMgEO0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EjpMgEO0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A993AC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 13:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763905313;
	bh=H6LmHmRay7HcdMKMxeA/HThyS5vytEsCpZvkWNgED4A=;
	h=To:Subject:From:Date:From;
	b=EjpMgEO0lJ3n0H6eGSrb4wJ2Xua9d675VTBNNqGoT0E83KAFmyC4O0fkip3QT4Jv2
	 7h0hQqoWqqlxjeORwtffsz7GUfM9Ro69Qy/m8X30CuM3ZvIj7rME9KXWNZ/dk/hSZt
	 pbyfPQArL801dd2/zIG3k+Cwl9xq4vTIWpgn622k993+zIglc+6XFywqhNm4GNfWoA
	 xv+loyfEksdvrn5F2Tk5sOGPQvhOrIO4vasp4rAXKdGNYDF3K796rNU2Q7HjyQ8CsD
	 ORbvU47KbVFRXx1FqTiVclFUMX78+vrewLu076fZvOslTklUdI+Wa0UlDryBQX61wT
	 2DR8/5hFtsOow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97302CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 13:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176390531358.2089.1323433325145429995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0a03a4d26c1d1e96d6e20d646a3e681cb6aaf820315c757bfd7d48849f52e45
Date: Sun, 23 Nov 2025 13:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763905313
