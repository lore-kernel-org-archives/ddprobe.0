Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8D1225776
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745489394; cv=none; b=WXiPgtH+N8pKDx9sFKpF4l25ZdayfZW0niKBhRxNSZv+aDbjfsLb8Hhk42yNhUaMRpH5dlaMq1XKb42cTkac63LgBMMKfzcKNOA5kzvMxUt5RHECoq4gdw9t7OPKnzNwgL5lo/hACI5QxbBQ61Hmi9i0wWEh73E/SOM49xuCGE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745489394; c=relaxed/simple;
	bh=D0ZTGMQPj3Ooha+GTejtGqpbmjWbdwOi512yUucnVms=;
	h=To:Subject:From:Message-Id:Date; b=ObuN87ySsUSAi1wgIeRE3LFIfkcJz2Z454lBVk/IjBTxa3phLmhUspc3sl8lwGpPbiGWNrjt3HPY1C+ukiBI5ImKu+sjOYJhwVh+xJ1DZvvUHDsvIJFYHDVbDhYxKu8Ns3RvEXykA/EqJP5Wdbq0YCIe8U3FuHm9gm/FtBJPWfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXWs7bGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXWs7bGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDA0C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745489393;
	bh=D0ZTGMQPj3Ooha+GTejtGqpbmjWbdwOi512yUucnVms=;
	h=To:Subject:From:Date:From;
	b=rXWs7bGgZIkVNEM8ouzNjfWoeq6p1hSLJ745PftB83X2Zlwkidp4YYN4K7ZQIWdq0
	 Sjm137fdYoQQQ8XhuLTThmVwxju5KfXCuxWpDUJvbZKK6nmtpTh7sDik/bVFLbFaUN
	 9C1ZVeujpfQfykRIQUtQc/9onEmWcBxQjodZ9r4j4xvfrYGZ666o76sAEwWBjCfbIO
	 9MC77coKGoUwkUijiDHCx9JBRvmrjaORr92b8Yg/q7ydX2NnsA7Iv2jG/NnqF6hKXj
	 uUTgIN8avnrR0JlnLdUqgd6g5757p52POx1W7wv7k4MK6K29/MNrakFj+Wbqj8u3Ij
	 ALlceNYodPpNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5D5C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174548939357.2999.17310853592827730481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e9d0879404d0c02990e9609affb236bc3d3510859b99eca0711d59da81258cf
Date: Thu, 24 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745489393
