Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1219134A3C9
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773641094; cv=none; b=lmoaCA4aFSKd/qOWIJ9QRFifYA+KdulQtsoTeWw40rV/Dspspgzu+MJs1U1GACCR0xeUhJ/vP4p0TuxqCo822UwlSoM+Ujyfmpay5eSdBBReIHAZRr5oPAYiMyc+H08eWQ4Sg8/57An7f3iIkr9GgRiSzC6gZWgXnAcSaIg9wck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773641094; c=relaxed/simple;
	bh=9TTk6NwMJC10thm7HKN5OFSgmgIalx9RKptOOgToIUo=;
	h=To:Subject:From:Message-Id:Date; b=cx0ZLvHdtBKUe80agiD8poNHEtNY45SasJ3agPAGrorv8w1xMGC28OgxFEKQHWgeXW1FvRbv5ylXuCyeC8A40rAtxqPxYw9oerlTnzQUpjytiJ3z3VZR3zto64lLbjXmOtiOhmAj3lo3FwLS8A8r20c13Y5ihIWlCQ/vXv/OBvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALtO3iJc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALtO3iJc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8BDC19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773641093;
	bh=9TTk6NwMJC10thm7HKN5OFSgmgIalx9RKptOOgToIUo=;
	h=To:Subject:From:Date:From;
	b=ALtO3iJcG9nt1WjjtzkrizKq0cxjVo3O/t2HTO1qqlw18JZq6rvYuSY0Wuh3BF7sC
	 JB4PpEW3wYF76TrRgpJBoZLoXNkyz+WnTGOKql42Brt6rSWHUfUJXzVQgcSOXn9nAB
	 niQWgvNNXRgBXFYgLpUTR317UhcBTuyYuoOltMVtBc78Ay365VTqB2Y1jzOG+7kYPM
	 DmU75Yls5XRtYCgtuwIbsvglMeVTU6xHWxoJHHRiZIW+3U2U5jtDjzvskCa6V/A1HW
	 bxbZDMdSFk3xs/S5TjbpFa9ch01CSG2XuOchsr5S6TZMyQEpSYI/VHpoAv18xH7RGM
	 5G0KuMWIjdwbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F48EF30273
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177364109357.10892.10118966288392601284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 961b68a6bc1f10f0df364c8aceb9eb6dc8f8d17b1552205b9794b1513cb4a1bb
Date: Mon, 16 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773641093
