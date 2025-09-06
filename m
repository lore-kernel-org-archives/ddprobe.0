Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A6721255E
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757147995; cv=none; b=jAhwZnkFio1sJZk8Q76jUc2RCPCp60KQKQR4CCeIHnJiOyKsQGqnhxQZPjEL3LRBtj7sDbH/+uhKw4ir8kToFZkZmkZjvlz6OAxi9qHK48+7ZfEuneMcO3WFFmjxd9DEVDPUxVg5q1h7R4deJ+BwQi1kbMPrLZCPXlue9J+8eYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757147995; c=relaxed/simple;
	bh=aQoxbl/DUlsWbovRcv5LHkoX8yIFQ5hDP+PjBTs+E28=;
	h=To:Subject:From:Message-Id:Date; b=kyTWcqHt9Qua7l3emjcAUaPfhMUIHUnAfvfKp8KxxVkpk9XnyMZ6PDUg0k2KPzQBn4j/W5D6doXimduw3dhLMUtUqW3iJk1CAxQyOs8r7G8jrtE2JXcHBTbSy6nctQL2S9AqDbniYhFaoIUMdEqL5jfnWmAiAQiSP+hOtBq+oWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4JKAl+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4JKAl+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66BAC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757147993;
	bh=aQoxbl/DUlsWbovRcv5LHkoX8yIFQ5hDP+PjBTs+E28=;
	h=To:Subject:From:Date:From;
	b=R4JKAl+4HcmBB85DBkW1A/gGJDtanmeOkqreHgUShf3ABjguGQDOLCGki2vB1784c
	 ULiCWDmQAzd8/M9M5mE5ZjZiY+UPqpnDEnDWrKqNMELpQV8a8IT/lgHUoSWgxUxoj2
	 nXWON/gMyXCi6XXjxU8KiyntpQe2qpFeCeiuttqXlGlW7ZYQQI78PBtuLNJqU65zHC
	 Lo0DbfhnCS76PX9s5TG6ufnt+8pMcu5ANicay/DKmCoGoFjTBFFiyEvE5gQv/FrAWe
	 TKiP0G43WS0V5iuELPahzqu3KmhVQSnhaPCT5BiLTFizc2bjpQIzXek7wvsmYF7zbL
	 3MYx2wHjVkyPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931D5CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175714799358.19431.17441323678743861308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17e58d969ddebe5edb9a190a8a1ab2398f9d46a13ac59ac35b63c395c3a07570
Date: Sat, 06 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757147993
