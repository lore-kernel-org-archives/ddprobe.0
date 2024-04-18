Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F73E194C85
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 22:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713478163; cv=none; b=m4Izpfj679yBRtT+Cg2z7dwm9nES5DSy5aSP8n7mb7aJKXO8TL3O+oebazEjZl2oXvTebJbBmOhIeRtF9vnGyrRGhPudYYwOEq8hUxOZ6pByAMNHP0eZtO7f1p00gy9CoCGrJfHDBlScb8Y5qjPic71WT99ibTfpoppycS8T2iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713478163; c=relaxed/simple;
	bh=bm+4a0fepbgKY/k2uQYdAcI3NfHDjnAotYcUZOVlfkA=;
	h=To:Subject:From:Message-Id:Date; b=LYkpJEZAkOYXlYySMWxukJIQRSx1ZiQmMzguZ+NMMQ9Y1h7VI5wBQwQz9G0J8rZXAvQaAOnRjj0ya+okmzIq9qTLR6mARX3Bd4B1vSipvO8zJyB6uQPUtd9cUzCik/Rg7rNhCIzVDYmhC9N7h/GkLNHek3I43V/Oz8goROXPDqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QpewVy45; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QpewVy45"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E94B5C113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 22:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713478162;
	bh=bm+4a0fepbgKY/k2uQYdAcI3NfHDjnAotYcUZOVlfkA=;
	h=To:Subject:From:Date:From;
	b=QpewVy45+QQMrpgqJn66CnZUBV+lmlfDy8WcsSZ2Ii57tDTKCacF90VnO7SfkGk8E
	 uUJ/XNJ0hTAr1E5XjCk35y7d9YZejyiZSmjPGUqTjY5rRjkoYmcNjBxP/pGAGIGKJ7
	 oBBd0lia8G+75GUtZ27IOVhyYE+naM2UWWDXfa4nEpa8/CqbrHjSUg6oK0BPvpPFIr
	 PJDuhoGR47zkwDbH3rUZ5UHpn4SslBzQbheIGktPT08ZE43OyJoFMZNmnVAaNJFJsU
	 IUkPomdahxnCJt8uMSpXHHx9HJNbnqcMJY6sFyQbrcbqY+c1fx/c15yIfGuiQLRq5A
	 3k9sk86uUlRJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB921C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 22:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171347816281.10187.15591728107034713434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c85d680957dd39251cd1a4991a3b0bad4865914ebc6e6370e5264f90a2a1cce
Date: Thu, 18 Apr 2024 22:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713478162
