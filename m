Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79F2B43CEEC
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 22:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784674114; cv=none; b=u7JJuGnbPBL9/BEl8qM078URj1ICNyVKpuppj3HCzxIJCcsAJwPumvYKH8dlAkoq1keQnmYwqxGI+oJg+zNHoL5ZTIeFxpZcd180eUk9tuoAtyhDpmAnZfHbpnDk7uVOkd+IN1KSQ0IPmSWvj6ZZaP12YMRvMpToOJgAy3NQuuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784674114; c=relaxed/simple;
	bh=OOkbdeZQWvmlZyWvuJUpf/d0qys7jKEnEo2YJNqhY08=;
	h=To:Subject:From:Message-Id:Date; b=na1e8ifG1l1UmQD3ce1C8o7tmPVkvmEKRuLwEGTBHXc37n2ckG7PT8qy1IOrOetx6+JtUpoEXevMwFBdEVwE2svLK3Eln85m7afZ5C57Rl1xhzqU2RIrota+eaUCBBjtdZhmjoh68egleBZ9Fq2QVHEN3x0T6rQk7sjCmh9YY+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5OHgFCX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5OHgFCX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D069EC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784674113;
	bh=OOkbdeZQWvmlZyWvuJUpf/d0qys7jKEnEo2YJNqhY08=;
	h=To:Subject:From:Date:From;
	b=T5OHgFCXkxdKzcFvn3mQgFJHv2eJQLEMwbCJ7yH7IME4lQb1PB7kdh/JZojOS75g8
	 DstZQHwyXl/5vXvOIvlWFKsbG+I938Pbv9B/mHK1w4tfzV47ZSNPKRfS7gVsLJ0T5b
	 XeYZiysIaAMU8bgGc6Jbe89VRqIPQ+lWiqZT/qCj1MR47bO4DZlLpF8eui/J5fyiYf
	 bq5NOPRywRsNrsuLKG/ylpJnoCc0/8xZ0/ZEBaw8YDKjfBOuCHq1PHO9O6dLn7/g/K
	 74vRENfnBAYwGmHLr6grfu+RvXgGZUVOJ2GyZfyNOYDub/lbEn+UhJS/+KYCRTWECl
	 tJnGVDGxvkVRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB658C4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178467411369.315.7304873523987274299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92b800365970c76c36b137d5a0cbebf1cc8ede7101cf6c6c5ae94110ec10112a
Date: Tue, 21 Jul 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784674113
