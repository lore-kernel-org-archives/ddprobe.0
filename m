Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A2B259C9C
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758574194; cv=none; b=XyM804jXCA31Jz3bWSBG14OS5w/4x6k02tJAWT8HPI/oxZfk+VLQKNSXEia/UdPaMU51rk+pfL/S68IAJXoIFGbnmqGQlqLHpxwWC0tNF3WrqR1lhCZBklFMyLZnWL3KrmMfihakXK424DMIfwZD1slZ0UGlaPQqD2LAyiFPUKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758574194; c=relaxed/simple;
	bh=XoQIF9aHXeEG3SQvN+eSjsVWdy855IF0Q9FRzzYtwQA=;
	h=To:Subject:From:Message-Id:Date; b=hPWr+RSHY2y5in0/Iyp0Ws9BLOQ8iu+N4CKEgnjhYkLn75cG7nKNWE/9VlWUl5MfOMnZW0G7JAblp21AdbkSE/oNRSTBBcwFR0nWuIoNNhcWKaArqogqxmopQibem9ZP1nCC0ur3/sHqgEUcOPS/O+oMNO/4Ke+HXyRlk+HMhF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6RfIwzz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6RfIwzz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6003C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758574193;
	bh=XoQIF9aHXeEG3SQvN+eSjsVWdy855IF0Q9FRzzYtwQA=;
	h=To:Subject:From:Date:From;
	b=k6RfIwzzj54uiJnzt4VJv8XEsszA+pwsUbRBdABzWk9vbc0WcFRcNFphH0TJTBFGv
	 uSU10UqmHG8FL8/d4g6ZG4WXk8wY66jhz+hThC1T3RxGwn5TQaLsc66qSxujA9Fwzz
	 7V8uM8Dr6P2XIw/iogwKg5ps7dHAqsqrYY5n+l5hI3gtWVI9veVd1OV1vsS4HD8dAq
	 2Df5GqWFCZonOKqkyeMmONOgfcTjMvs2LB/JPG0C6RyJQ1VLPpweV9oMBRaDriLt44
	 K7caFQT4hzBcw1MMGGzH6o3SBx4hdcC7EAebVY6qTsO1HncU51mUV//E/9pbiJGg2X
	 SrOqbKdMMrVYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931C8CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175857419358.25748.12894985896338082683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d95661471c9dd8417ed96cbf77c482135a28fa24c4405e1cd05931afb6f3671
Date: Mon, 22 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758574193
