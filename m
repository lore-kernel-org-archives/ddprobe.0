Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F39B666B20
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706612297; cv=none; b=q3hwE9B8TgI1ouj/2WnUFj+PvviMkmnmyiyNy3/6onwpGIUOmb5iUXSO8s//tBlHAdI7zf7pPrbUYy8uuXklESJO/9KeTYbr66L7L8PX8ml2w8HiAcs2702g6KChl+QUtp2h6nzdSTWzbQ5qoUbybU/HjaPSCm0D0adxQgFqJsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706612297; c=relaxed/simple;
	bh=i2Xy53Z/XKrSiMDpAVN5qQjZHgvVNKRnAaMUGdCpnoM=;
	h=To:Subject:From:Message-Id:Date; b=JJUfB8D629C3izu1y1iy7FBFVAoocg3FyTKW/LlxAbvOmFXSXrcQpTNgiZ7IhX72+XxOes7sabd6GkJ6l90f6FRvMxTCHens33+wbnQcHxy7Hgodg32o70tlmOPX4Y46AAjADSNDBN3tCFKG1v6KXqXfqSxCJcJcRskiOPEyPOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nd6xIMcN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nd6xIMcN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 747E0C433F1
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706612296;
	bh=i2Xy53Z/XKrSiMDpAVN5qQjZHgvVNKRnAaMUGdCpnoM=;
	h=To:Subject:From:Date:From;
	b=nd6xIMcNtpWWgeYN6lUTyxHpdh2u+alorIyGXSzfmC7Dh65jHQqtT/qbjxHARomsg
	 ujsyBlGWbCGiDny/DwQj894KtnG0bJhNsAHo31YPa6YFrBxXm+nyF8fZ/M9AG2VjAI
	 CdFDPZlZtONTwldaUidH9sP4er0voml0zg6X4iD5WTsX/Q3hTYAitZPoIaZGHMyQH+
	 DVsseRbDtiVDRBzgztBEP7u1X0gy3SOjmHTInye7AaXzoap6UykJUk9Is8ZW/EOgyv
	 L0qGE2yjt50f2zNjfWkU0pCB9sjvrRpMNV14Dhn90qA6o+L2ZeUXT8oLcxnDC9rRhn
	 FVVKje+3DGKFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C537C47DDF
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170661229636.24394.8962834631244501065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 801905f9d4a996d047a5d31a5d66ce882405844a70e66559b74e0970febe462a
Date: Tue, 30 Jan 2024 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706612296
