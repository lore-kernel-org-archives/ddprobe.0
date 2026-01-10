Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3E72AEE1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768017234; cv=none; b=GOdLGQcbF/ZluPRoOFtj7yxw8dU45VuCT8vB/vUTlBpECRjIzHp24pZsZG4jdGkOjWOPAUl+lAKBf+gYSKVmxfIH/yjvFr2IRAno6d4jfhMxMdHnelVuVk43SjIYh/XkrTi0nAGH++ydf+k4OZm3DxY/5sHeEmbpu7HaY/ICwzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768017234; c=relaxed/simple;
	bh=+cU/+U+KAg+yK2vdZ4PLTvdVecQ5kRvI66Ld6dMdn4o=;
	h=To:Subject:From:Message-Id:Date; b=RMpWqQ2u1Ku+AGDU1OCL1oDK7k2d5EfrsuqCwzTkb0qojfho6jz0OGxq4zAM/NpyxHntxfkOkMM+qjDcFlGrs0bJxU5NrHZIcinpiZUVk8CXZlHW54BtoPLnvFJed/Y4bGKM8C2flvKiCLV6CofG7CEoG5JaMVijy3E2fcH/fCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hOE79dL5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hOE79dL5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A673EC116C6
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768017233;
	bh=+cU/+U+KAg+yK2vdZ4PLTvdVecQ5kRvI66Ld6dMdn4o=;
	h=To:Subject:From:Date:From;
	b=hOE79dL58Pi2sdCrYlycSRGcdD8YoORvafIFtxPwqhbsAzKFcG5ztVJaMqD2SsdZB
	 kMUfhr2ufrcIgzgDKm7xDiCfPXUEsP58FDemUl3V+0I5jWzmAfibVYpr9KphpPROYk
	 +rYI0jv8yJKgIx9RD7bOBmkB4OOSwXABMUmfIsE+5kmB6YzxA5X9AIInzh7Wb3Zx7X
	 1JnyHhe8rx8m+f/9sxhf6RCxoCpE2dcScSu3MMF+0eou3F4MxMNG6BDzP88//Vqg/f
	 Qxtj5o8iKySLCK4fnS4Brjwtpf2IlXZvSF4ugCITKFAmt0EQBCwf3T9dNsGzBmF77v
	 ZvyrldX0VYgAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95881D277CE
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176801723358.13050.8123469326477976984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbdb7c58730a8b7f282e63f7d324264f0df2eb5ab60823c811a9e470bebab263
Date: Sat, 10 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768017233
