Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 734538634A
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752646194; cv=none; b=bYCIjsx/T3fkJVw7HopE9lv+Mrj/C9dI59j9ZdxjpCksUk/S488nCzGyKyZWPAbtkBvoO2OWGFbo1YyXwJw59Fw//u39/LCc0gUfmU4OzgnATT01+Snh1IsNfApp8bFjqIU5BYrmDq2LluRajEW0DREXy/ju36EFhWAs4tIyV7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752646194; c=relaxed/simple;
	bh=MIp06BccTXlaIm+IqMz/3xeoF2k4md7dqQOfJgwlz4s=;
	h=To:Subject:From:Message-Id:Date; b=Lebe+hLR8x4tOHwDoDjBhzPXWXrZvaoroUao4L3VwbFbu4t2cQVaHNjXlZgSM74caorrudDdEkBsS1yXCiPQKdPk64bpsMlNHZZdCTsBEnGiBcMfwvgt6emY7BH8M9tD7bJ46wbCpWnwR1Sjh/w6n4WMHkgqSJyw7Om6JqvmN8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gw08NjH7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gw08NjH7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C00C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752646193;
	bh=MIp06BccTXlaIm+IqMz/3xeoF2k4md7dqQOfJgwlz4s=;
	h=To:Subject:From:Date:From;
	b=gw08NjH7ClTievRVkSx0ksA1xXFr1QLU0N9asM8O731ifH+aO/iILPOxI6mgx0sxp
	 jRx0fD1Mi3AwH37bmjnLg6FJ0F5W8dENr80SutIjil9Wim9iPl1XfNXGWS194Ul8BL
	 9Lh9SzQfH/YoRm1ghIk5g3WzTT8kvZQsLOzOnOJpKPqvUczBgDtooLhBL11wz7CDvb
	 38b4Sk1nFp+BpLPY05kcFfJL5lRCYrtcd1ZAzogondskzzQDjY1HMg65FKEwUldVYL
	 k6gCZm6+F3zQloFA3vgDL2nkj/8jpftWSe8xE/fxajLKm7FEgZ9YPWExlxp/X2u01c
	 oaqROkn5CPDDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DE8C83F27
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175264619357.10299.15517712378328234040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b60e71c584dbdc858d25bad86976560995d18a113d81a42cc03e2ec1d1f1e97b
Date: Wed, 16 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752646193
