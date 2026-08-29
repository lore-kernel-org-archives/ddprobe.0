Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A30232395
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788027634; cv=none; b=n8enRf1+XoDXGbhr1WILHZdxVLISGgzjdJf2E/Evltbk+iWERLYB457gYqup67yCtnn8buDpuvnij/Dxuuw2B9uG+KUV1HZaR55Hk+tG+fRgE7jmecvRJGuoPshQwIqxBsno6k27QhiJuI1AEfpN5owgLyN74/p8QyThbePwidM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788027634; c=relaxed/simple;
	bh=lMP3QLfuiPExVQ5sVRKwf6WA/ZBOiEcrDv1CblMj/FY=;
	h=To:Subject:From:Message-Id:Date; b=UmgzYVgiRABwV5s3pm1RFhtFd8fi0mrs4bbIa8c9rf9pFGE0KAxKbkEpOUGJXFVsyrQ0q5L4T2ZsBgmougNCDufIYDuubYgHJYOzXjzigotmb5VW9syAN6Ypn0T1O8tTbbC3krYzrGzeKRSt/sLWvRKRn5CXrHXKpxvKHNN4FNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ak6gdofh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ak6gdofh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF190C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788027633;
	bh=lMP3QLfuiPExVQ5sVRKwf6WA/ZBOiEcrDv1CblMj/FY=;
	h=To:Subject:From:Date:From;
	b=Ak6gdofhzz1rkldK/xk1JLZjFiE64EDMLHLREbZp7jZFZFr77xyTQaoGX2A8NhF2F
	 EmYLu62uvM5xeS3CbgeogyVnZKEt0b2fhN387+js+iBCxjn9H2WFRlryieR7uLt7zT
	 xdF2XJHc5gM4Ej4h/wqzTmHDpEhLQmXPARAY5/95WEU0XDhPfc5C7hCf8jaDE/qv8/
	 aHc/pf6qnxs5k1wmcd+4JDudnoq7JAQ3l0BbiLBAyLxx7/b2MczN7XTWuKYKw4VgfV
	 n7sQgbNZgqwdNDu65Vi2sYooS046WgqAfbKsZek/WoS+tav3nHRMZyihi48EC+Pot8
	 RQNDD09jUIEjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCCBC61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178802763369.5600.10761639972964355977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82c0a88f429fed87b7ebe57df990f69e43e39eae703fb9f71896e40225242846
Date: Sat, 29 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788027633
