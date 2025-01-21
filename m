Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480AD63CF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737468954; cv=none; b=QonYSrjPvhsj3LndlysUlMnOqe+DHcvPzs6IwGw40O5SQQdRFklu44pOuS+mMZpNgUqurBv/U5c9xdRYqf42yaBsIcGeAPq9S1+UudreOJelpjMgN5mrMCAWS8712nRqWpq3RA1ouEoZMyBwgo8NNSQZSimnxdChiqv2UmthII0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737468954; c=relaxed/simple;
	bh=gofugr3o3X86QB5z17K8LMUvq2t4C9hUClKDAX8kMuU=;
	h=To:Subject:From:Message-Id:Date; b=W11vgiZpJPEnwg+SAznocl5ZfKWXD/AhuYU155guvvDyx+7CwMGYipJ8ftE5lm3qzEkNcRSohUc9WYoviz5gprVBxnSD6ZCX7PcjuaxwvhCBGmeJHbFbCK/8INU4tYlqbb3haX63arZB21W6/mUb8NWSPRTHlgti9OLaW2Pb2pE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGzFMbNG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGzFMbNG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D64C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737468953;
	bh=gofugr3o3X86QB5z17K8LMUvq2t4C9hUClKDAX8kMuU=;
	h=To:Subject:From:Date:From;
	b=XGzFMbNGzIcWN+eWr0zs3MIUnrzJUcUjCpVMJ598vlQ4md0p9sZakQKnG5VGTk+EZ
	 zA8m3G6sUZaZtxHDIFpFPevNZtJWs4NnMj+siEpTS0pgvrR8NhU2iZf8fSOrAjgati
	 z/tl/Cv06wAKQSf0DMh5AbEQkYSymV9rIHxJbgUAldZE0fLk8zzUPqXISi5ghzgzS2
	 PN5NdDx5wV5NvuVK7BF5kwSaY6pDkgGNCkL0thHRoXLz750G4CJEFrJTpqTpAYhHzh
	 Mf5oxzI+FaYGZFb5Vj6pKYMV/N5k8rtZFnJ7aOFRPpGTmv0TZnbqZQwoIjXCGLG1GI
	 8e3s+fsnRmt5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96257C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173746895360.5159.6315340693174472711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9527a669cc1f246577fbe74b32ed1054535d2ec3b0c89487bc50940933adb14
Date: Tue, 21 Jan 2025 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737468953
