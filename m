Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B8828BA95
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744715394; cv=none; b=hEkFaZDPif1nOOg/16y46YVkhRS+9K4Pu5TVoAyf41L5YMP3v/3WJi0VERuNoQ60l6ncjZYawl6twc2VwENCAGAxStfMiKn9OnHgRxc0qOhY8+ip7W8Z7ribOHKHsgWEoUZo8Zjig5ebWoigcEi6/rLLL23KhrcWMoWP1sbOmbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744715394; c=relaxed/simple;
	bh=A8y7CIvOlXuGxQrAEL92V+eWW9N2WfWW+Apv4AaGo+o=;
	h=To:Subject:From:Message-Id:Date; b=NZAta5Of9pvj4em9LfWgpbFjFv9+e4Qa7KVkknW3v1pnxvkBYrBfJAKhY6kYVXa8wyITt+RThL8fUsZl28x6XDaDIo/bA6vIAl2+zk28Xd8UORScdZp6Ophw6h8yseAJwqNm/2/5NDBU6OHkfCwtUcI671/tfn7Eg6px9+Vvdfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eg+kYmh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eg+kYmh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2624C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744715393;
	bh=A8y7CIvOlXuGxQrAEL92V+eWW9N2WfWW+Apv4AaGo+o=;
	h=To:Subject:From:Date:From;
	b=eg+kYmh5bDklitPraMdO+sPojO5Bn5mzvxbWz06kUoYpWA2L+Ccw4eBSiyZi5DnO3
	 F8rAJvpJGx1QuJL/ieMRpF/dzFda0aYkxn0k90hbEecqwSBX1RZ0+6OANNbcGo1EyB
	 J4DZ7EZPKTf6OACa4N9bNyLasJqdaZcM3UA6rOhiA/x4LHU4GSFPFYi/342O8WIvN/
	 IyatUEhDEIm5IEdWlEDnNBHjtvU/PalQgJTKZ8uVhT8Hwtl3bWGXZ4zOblyWUQFKD3
	 5ehdejYCMR+smN8fMaWkB+/TIXeFv0+1nWDR7Ir84pYYo4OE+FkA/JZ7iS0qOw7jpH
	 bsiCXFBrL4J/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9B9C369B4
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174471539368.12529.9772534948178483669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9ceaaaae9acb325cd46b8e9807fc11ba30574274f76e3a371febf5c031ac63a
Date: Tue, 15 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744715393
