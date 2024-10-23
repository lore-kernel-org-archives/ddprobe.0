Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C301E8826
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729719954; cv=none; b=n2t8UyVy4r8RrhCV0h2IwbBYg35rIbfB5E1gQA61a+73it2/IFj3eRdDceNdqRGMVER1uQh/GdcELyE3vmRHfTwCxX9iKrUK9AoqfnQBScoekC70Nsu/L8rGv8i0KBRqp6NV9//TQh/HEJNgX8KSTSvPhV6IQ+k4rw5xMriUyQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729719954; c=relaxed/simple;
	bh=lKmZ1u8v3MRTFFBkQTJZ6nOnxuE/tevtXLTqk6SLwsU=;
	h=To:Subject:From:Message-Id:Date; b=dj/qpt57ChIZEhRiyWUqkx6vycHRW8bHuczvgW84SIifgFR8oy4P6Dc12+Uh+oVneQrpIK64JyUAGVmQOl/oYNS39H/MBY/DBb8KR6e6f+OuFqCzPBU+qNfw+k0sdWiuLgJ5CQwgDnMA9l562HoF9kj7IwEXlJSo/7R9t8OqzvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wd7lcsP1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wd7lcsP1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADEC5C4CEE5
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729719953;
	bh=lKmZ1u8v3MRTFFBkQTJZ6nOnxuE/tevtXLTqk6SLwsU=;
	h=To:Subject:From:Date:From;
	b=Wd7lcsP1voyvQZWJ0YQ+zRmXNtzDpFGGrTo6Ugj/Xh9qeyKZdOunqW+io35FLllrO
	 GQVFcgqGCxSmvf/f973+rY/A0Ekgr+VxnAjJ6Rk/TGJWdArrOebfGM9uHAcY5J+8Y0
	 spBRBaBQ5Wiu8r05USvFvq4qBrN5pyRHFZhQGPP2RP3QAWTYoFFvHkUOYsYPWvnrUo
	 rEPG96/ZImx8KYBrtaAVbKsWejXPF3m8VBjkuJVAuEEOUZ0FQX0XH4h9Sr2pcOfSNz
	 Qu/Pn1UKX5iZN+KCD+KxTVgVQOXIiSP2JJXEpL5gnh2ufZrG9GmPhu5++i+1DhoBzm
	 1Anwg9m4JrKqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C46FCFA478
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172971995363.31016.5914420722469711307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f329bd5754739097e118f295588c6aa4ec544a9072d04cc39ca1f573037ed2a8
Date: Wed, 23 Oct 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729719953
