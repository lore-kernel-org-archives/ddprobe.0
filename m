Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29862182D2
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 14:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763820114; cv=none; b=PVOXDY+kA1ChAuwJ55hEvPPlmK/YJxx73sMUTGytRctLpniVegR2uRB5u3MliHY1UFrGVyA0rg6SmO6nESLJOo6tWuXHQmKI11E0TPmk8WXeBGmjOtZwtMogolhGvI7Bh94NVn2vXrlI+8qFzLkEvS6jD/QYICCMf7tm2lXFSf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763820114; c=relaxed/simple;
	bh=0rDw8VXE3o5sLOXYc1xsloEGGAjI7u+DHZAOmFhbl1s=;
	h=To:Subject:From:Message-Id:Date; b=eOVbd35ZYgA6dlRPtjY55L9FyaKOltbWop48kFZWd6uoW987xXoiNQAW7r0zKKdGwuePK2PnaHJHJraZl8TmDkogu1m6qQ25eDicfND5UOedNdTrLVzSEese/Bo06QwgmSy894o2OhLB5nOs++EZPb6f63bYfmvn1s2bfZZn6Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yik1xEr0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yik1xEr0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE79C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 14:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763820113;
	bh=0rDw8VXE3o5sLOXYc1xsloEGGAjI7u+DHZAOmFhbl1s=;
	h=To:Subject:From:Date:From;
	b=Yik1xEr0zIlYoEgZU3QSdRMZfvY4pPJShDsWUSF5B7rYyP9Lxd3mYa7hoWhHwqB/T
	 1sBK9TdRamst1L9z8nNoJM+N9j8VqmvylYLT7qtmyb4zr6SvC63VWDg6DXrouPrJBL
	 WohukC8ywrFYlTC5uka5n7gN26vRyRN9Jw7JdT3NqlJ15Da5OXyOZLqJw9wu2LfSd1
	 1MrgUS2YHo272nd5TnMzhLhmBLHzKRCMyY2HgQcyVwiMJ0duD+d66dX3G5sPeVtFIu
	 VpgfGcxj8Y1TwDvq27DUTEHUmDdBjkIp3ONsgorQi5zNOPqNcGQ3EUe1FG6kqqrr/e
	 MTtevISoGlypg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC7ACFC539
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 14:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176382011358.29342.11965082665900646737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64a64934586a8f0b1f12491e06c4714af8b52753c7b8a33046d7f44dbf2c959b
Date: Sat, 22 Nov 2025 14:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763820113
