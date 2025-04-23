Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC8813C908
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745413794; cv=none; b=bs4rFnlCb2aYNK0aKu/9oWQe6WrMVnhnQPHKoseS/PEOMeb//0sKL7BO/91ahRoZzaaPBjjrApEJveCp/1CWLJ8BVofVBZ0u3Zjk7JFr3ioGfk3o2M7BeeBkpgIfBERRqsq4p2ccaCMbo9Mb0Qy9j57BxK+Uzeo/l8n16lGfA0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745413794; c=relaxed/simple;
	bh=o33QtaDVxJe4Y0R/ee0BSKQl3S4OoDvvZIaj/pl+Ets=;
	h=To:Subject:From:Message-Id:Date; b=aavDcSPzsM+rcmnuVTWoMVyGkJ7PUN/4ORxLw8akRSroWBfCDF63oIbyRN9WhMqa91PDzkVQMbVpzJO36ZMNRApDH3YeJe6q9/iIqP1GN36vpLI2ieYsCCyJ7IyQTvZFecWrr4dcG+P5SKD4aNqGypjUchcVFojas5U+BpK6Pe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S1jwr6rQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S1jwr6rQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0173C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745413793;
	bh=o33QtaDVxJe4Y0R/ee0BSKQl3S4OoDvvZIaj/pl+Ets=;
	h=To:Subject:From:Date:From;
	b=S1jwr6rQkGVO/ElHOSBhRKtCfTIqHEtuI/MN+pB8XwUqvhTfishnqIzLbOCBKBI/2
	 t3C2uZt6DDQpjJv2Sblou1QNyHy3hzMHnWnE0lwbi4Di7Cv4YMMTHqsUFuKghFBY11
	 oiKDhEd7Dpc8yAcFN2nONwjqL2+HSJpYzdqV1D9F4+6lL/rcIYs2JqcVy1n02SoEnX
	 4BBcD9mgkT4eqjRmM04JV2GbHhAw3KMr/vbgLGxXyuLYMeozVCfGFq4uoc0T0u6W86
	 3aQ937fZmmzXadvJYLhNGeeXIqns7sRSfMZ8WnSVPUfO4nPNt0Nx4riBNR32FEiGpk
	 w0vsWO81V81Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B23C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174541379358.11861.16129683286005047419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 557b00f8c2b63e6a67ac59f5547df9e854878561c704f2bee180409a9346e744
Date: Wed, 23 Apr 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745413793
