Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23952282F1
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756412995; cv=none; b=ouG+gNOsmh7tNxqtKDSgcZlJgeTiem2m1/Jr+CY8bdWbieRNdwvmq1/S7ResiXa+l1Br0/z+Pw2tJPXXtME9ofZnKX+6C359LJqNb37wkVTCn8yqf6fDGQgeZZ/RZ+XYdD8qpsQfI36IkLRSEWGfPlQ3+7Y4OL4LerV2eTFbHq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756412995; c=relaxed/simple;
	bh=xllwKDOFINi57hB1gL7POpKUmJl++l9663D5bv/1/UE=;
	h=To:Subject:From:Message-Id:Date; b=L4TgQVtJtoodizsd8sGkTLysFRZNs2YcKfye5OzdTltw7VxN4KPHaR1y2vf3i5TWzChkJQVTs7ERonsIY27p15ZkARE69ObPPDLfQdKK1ti+7OOD+yKskFwaHxhx+BfErD0Eu7/twCDHl1L92sEBn5woksgtn0mixz4yqVVlkb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFffhTbv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFffhTbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D465C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756412993;
	bh=xllwKDOFINi57hB1gL7POpKUmJl++l9663D5bv/1/UE=;
	h=To:Subject:From:Date:From;
	b=KFffhTbvrhiE9Im5dwvDsFjHv47VwNDqgnY60fuTs3IJGNxaCpFatYtW1qrE/61UE
	 KZ/8RgsiChJ/YD1H1LMsZj3kQ1hNP+lo2hIWc6HiDOywvpF+U1vQ+k5LvPvZs9r0kN
	 ttuAjXz+ZYqX2ruht/4e32PsGx5EdcE3VYhJ3l/zZ5TYqWcgWHz4OzbyRksfrMK55E
	 HOUqroVCeePahtSaBFE/vobxGg/RJQS9TJijWogPkOHHk++IxgY86W8GVsyct+G2Mo
	 3EKoB2EtSQvZXa+EmR3eXezHty7OWgKe5105nA9XfefWqoiPLhplH6SQWxQVFyAfpr
	 alXqWYK8UatOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F141CA0FF6
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175641299357.21645.4233134581711030742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e6a1c0f10df24bb08217391579dfe4a3147af56736d458d0efcff3469ce5fa5
Date: Thu, 28 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756412993
