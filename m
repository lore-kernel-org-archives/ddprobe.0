Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60558367B77
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785048634; cv=none; b=SwFUk7qWhPluRSY1T4JIAzo3nzsHO1lflegI8g4vHTQdyBAOEtWhkrpFUmZjU1ka874HLxXVUj5lP8pMcyu688PL6YlqSWAEPjm0YqQ7/uG22WH7RH2gJ7RfvxZt0H5G7WjmuMOrQOxD9n2B8fllXZ/Eyt6pzd2r/OTInwof5J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785048634; c=relaxed/simple;
	bh=rtkbwS3ybV32D+aQRlXJD8aoFiH7Ei0xORl7ISZFzvo=;
	h=To:Subject:From:Message-Id:Date; b=mcXcJuMPaMw8/f+mC3WN7EiGITAEgKL+71+nSg3RyQUTTkJluoighTSW8oj5pHmQN0BHkMd9cU5O0a33C4T2teSXmB6sopy8RhvglwUJr46OQBP6gD7OhdpPo4blzozMRW6Y/TOq0fFxMhzqfrhhNWiCvDuz5QIKV2Wm+aDUook=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ytn5z8Xi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ytn5z8Xi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC67C2BCFB
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785048633;
	bh=rtkbwS3ybV32D+aQRlXJD8aoFiH7Ei0xORl7ISZFzvo=;
	h=To:Subject:From:Date:From;
	b=Ytn5z8XilYzmyMkD8duFS4MQQS/X9Tbk8sG/GnK0hkl/4DjLVFfWOdlcMbpL/e0Ac
	 W+mQPKjKz6yB2UplVwMCYgLXl7+kKOF1Vvt886+P5QpQAcuHP6JEquaIWwoW6Ud51n
	 B1VrQLAAMmONaB1nzdeyozaGz9eQXSgmyUHYzK11QHWxkmyebKcCP0O2nCoxS/PjQV
	 5usy7+JWCCzP9DdiDlJ4LRt1xGFy6C/qjMqa6u1H1HK83mNoYNnfouuWRdz6AdidOG
	 QaNX7Y0zJ4SkQsnVvZmDgDEShRi7UEhgGqzDA9g93Qkbce1SqlOFuX9jTFHCQr/62G
	 DA2nqe1cpQRFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB715C531F9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178504863369.26493.4940424967182183107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71c7f75d96e45f7368860360bd76687290561065cb3268bfe9cad88eb1ac60ee
Date: Sun, 26 Jul 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785048633
