Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2494122D781
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 23:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763248254; cv=none; b=c8M8HvlDsZFge3mYuR3uWsZnARp1nG4VjKlEG3Wk/Qw5S8VfS+I5tPu3HnVOTLc2cZsOy7D/NRUV7xnSt/YR/Y31AGUwU2CM5BXwnowK/nSLoTNIqeoye9/4TI1ecVeUbWl3lCyQjHG254ZFZBhYyJRxfl0v+6Fu5qSmUy7Iyx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763248254; c=relaxed/simple;
	bh=Dww7wQkT3EUnngadtPD9oq+qbEElBgv4cSPt/O/qcPE=;
	h=To:Subject:From:Message-Id:Date; b=TV92VwDdlKn0Nkur3b4FLS+bA+Bj3ky/nWXtFNVJN+7LrZB9xpHoR68nxkZHd+8Sx5wET+VdhNA0jQtv2GmAD597RxscbjLQTzwWk+qj+xjJsKx7E7rTr7zuty0OjCQ69Xusw9QkwNqXzTcMvbxUyw6tQrWXJZV27MvBx0wVe48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEGhNjur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEGhNjur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6785C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763248253;
	bh=Dww7wQkT3EUnngadtPD9oq+qbEElBgv4cSPt/O/qcPE=;
	h=To:Subject:From:Date:From;
	b=sEGhNjurkM803wN7szSUBR40CL7JcUQCL4wvf+l6Vd+2pham9oWXto0HOMlQwGPp+
	 NRVnigngzdWDU9n2faf5aq4OjShQscYqzj3Zldt10gYFy8GVkPlj83VCZI4kXL8bFd
	 7Uk9iltCfbi/PUc1iKQIYWev/y1O0z6O4o/qm2Ba+h7QsKPhIrXS8U4r1ij/DImv+P
	 snDv8jYFh9YAIEo4/1LyhHRtS7Wk9z8dNr5UD5mZbvLrUguoWqjGT1kMcOC8fpkIHJ
	 wJbDpHEBg83GeuSBnHaaHvDk1MR5gflOlwhDvsklKvSn0xMiTnyguBj4FMPhR0TjiF
	 99LZvhDVgoA2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950CBCEBF86
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 23:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176324825358.8996.1390849034402931594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc04abe885f519b6d56e8eda962437eaf496fc394892de8075fd474219da6f7f
Date: Sat, 15 Nov 2025 23:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763248253
