Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BEF1EA7ED
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 21:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740088734; cv=none; b=iqM24pkUi4faqclCU2rW0JBgqUAerH9BofVxBNInd0dTODyLY1MsB3PEbkCVC3gHgICNPqg9VTboxwl/NI1CAX1lzwWeEwHmjBpUGzTzDoZdOMG6kkzgwXlpnQi69G8H0FrIE9n4rGWLljhkTFEUYkpDQdWaFUT8nmWpQIkxAY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740088734; c=relaxed/simple;
	bh=Q2E7ofaWolTC9XCwODX4rfOl1GRR9AWVLJP6RXbPEdk=;
	h=To:Subject:From:Message-Id:Date; b=tXFWpuYr8oQ16/HrnpbhzEinyG66Hk0b1hxm6jkG6rVdxvUnS7C/Vv3sloEpqC6W6IMazIQTcGuyPhHodhEo6MzhX9YXJ0IMhUXSVzzOdjfbjeq7zITvVxoab+Mem3HBCUSQoXlaQASx9JN8VCEW4s+xTY8e8H2JZekiHhabLb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzQHaWM4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzQHaWM4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C4DC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 21:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740088733;
	bh=Q2E7ofaWolTC9XCwODX4rfOl1GRR9AWVLJP6RXbPEdk=;
	h=To:Subject:From:Date:From;
	b=uzQHaWM4TDRUtZBHwS0XG0bIJN/yPUZew0E7gV5coZnWpLn45+5o3b7vPpPjv7ynI
	 mIha24WJZtfd2wuBnCZKbUlMJbAJcsC/PYEY8yZ2xgsYFPP0FwcXfJh+UlmbcDkcJS
	 tt9rOPZv8GQNYiJRNespOykdZS/CJjbWXgCJ9Q09limQWVKrhsLkzMhvRKciqWik5w
	 T3pxb5rdPBSwCnODBy6sX/vaMi2EkTVBkeAREsaon/D0+BKAeCWOjJQvAl87vid5/b
	 wivTWLB1O9v507ouu1FPtELw2Q7/Z21YoxQKMe37T/9acbLnzThMpgTEl4u2NXsUWl
	 wdRa17qGO+dHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A09D8C021B2
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 21:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174008873364.24657.8980622591995332050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1a03d0cd4bd16049e54e050bebfcdfffb5ba93aacbcf040fe47d7d77d0c21e5
Date: Thu, 20 Feb 2025 21:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740088733
