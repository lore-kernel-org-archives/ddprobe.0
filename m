Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0575C1ADC9D
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738428354; cv=none; b=J0COA5EUmwX4o8XqDFgjtG11Avz+NB0aqOc3jbN6UBWJ3+KnM6JDSrhyjYrFUEZj7k+G29W/Rgh2G4ehru1gYp6klQEkai4eee9sqU4ulP/cpXaZU3451HGFJtExnnFM6QO2qU3rhCcOHJ7VDXCAw8MsblbclBx80FjSC41a0ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738428354; c=relaxed/simple;
	bh=e9iTe8Po74YfPsjMezjPl5AQjYysyd6glpMz+haLJl8=;
	h=To:Subject:From:Message-Id:Date; b=eLSe7Dcw1/pnZC/RdIlWR+vedZNZjlYjYLAR1nFYMTrdWxtoOn4+7rKhyGY95nmhRZlGo5jLXref8rt7UXrgEvhUQvbDQxqC/9dU350cDuFRfEt0MgWSE9WFjhzbV2ilZPDmPOo2NDfiIX8411qLlXRy924LLHTZu8K9dE+tG3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssytuHmt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssytuHmt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CABFCC4CEDF
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738428353;
	bh=e9iTe8Po74YfPsjMezjPl5AQjYysyd6glpMz+haLJl8=;
	h=To:Subject:From:Date:From;
	b=ssytuHmt2tpLwvShyXIXs3iKq6mkuCYrDhpXskv0t5P1cPZHVMFXwlLYC2u0hN0YT
	 1OC0Lp4SiyGqenm35UU8YqwOvU4FuPqyFaxvA2DxrZb7Gm877SqcZi+bhcXxPY2lD6
	 iLNxmuhxVfVbRAejwyKkFi00XdE7Ik0mkP6el+QZI/kQzOvsKkNQlVVBczLnIKdIA1
	 kG/D84BIkOgYTv0BRKeJ93zJ7sIpLjbEzvBTYhwQj7ItBSV62/LwYq4Oc8ZW++4hdV
	 9UAfK1T7F4fQGx3sv2TbmeNoZvAl6Cq/A2GFnqV8TxoUWvBxtKo47F2c8UdAJjzokX
	 pLgHpHwFNceVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC437C02194
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173842835369.32416.6663049394973627088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1986692867a8b5e39e5f4e317dbff6268ef6db271c649c446fc50316cadaf241
Date: Sat, 01 Feb 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738428353
