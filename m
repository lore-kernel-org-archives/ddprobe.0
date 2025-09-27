Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1802227380A
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758974394; cv=none; b=W5VA2EC6QjrEGl6n3uhDvTz8T6nrNAPXN4v/EX0dgq0JoQ0mcAtedeMueoYGy8EsedLFT400eCqAUg1nsCMfcb3FbM7DH+FTN1kH5BWhfzHpR+JFtmVbVLDRiNVRufIy4SpzS709wV9uueTuuM5VlM1i6pwMAvTVgYeZN/MZHVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758974394; c=relaxed/simple;
	bh=iohBuRt6xbPeWR6TY0WTX9jFVXluybqX6im3U006cLU=;
	h=To:Subject:From:Message-Id:Date; b=IesTt5KmjozQElvB+eZNfMmyVDJHt+a0XsD/Q1arQZ8ejrz/FQCc98enw+VygwbKoLSBV2IJKp3lzB4qjVRp06aoOaUupDekQ8vo94fM0L5BLBYaeIkx4v3Waa0Qa3uaWHbPGGqIwDlVoM3g27EH+8qGB581FGO5AmooPkvKFm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPk47AKi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPk47AKi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25A6C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758974393;
	bh=iohBuRt6xbPeWR6TY0WTX9jFVXluybqX6im3U006cLU=;
	h=To:Subject:From:Date:From;
	b=HPk47AKiI9yYDwa/HFRBzNePEioKGmZnSQdlvUQ2KSOE3Zpn5hBCdpG+XgHEjyZq+
	 YsarkWx8vI/ulkcJSyqs2/Sa1nSiJB/mzU99mxuJHYa+iwmnQHEIEOkPE0yWi9Fbyz
	 RaKsQO3aX3Ci8DieH15BS3l3g9MeL4J/qYgznji6QVh3sx1gEbWi3hV6ClMF81GBDu
	 K7rsHQtg29xEvcCLUn8VYf47Yp+zXDxiH5t03OeLIBsejxAYzC7UOIbH6/2+DxQUQr
	 ELobiQtEEocxiYQA2HozfOjT7N2GLUcAmsbKSal0ILjbUdBQR3HCEt26OmBV7y6YGs
	 KU994CH41lWpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916AACAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175897439358.21159.2734237880015523620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c5291678d2a58748323992e173ad57f83cf940f3ba53ced4c5ae8f8373485d
Date: Sat, 27 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758974393
