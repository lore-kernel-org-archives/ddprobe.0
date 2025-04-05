Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585F0366
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743811794; cv=none; b=JFF9aBgfpzXQatlVOYAEk3WrWy7fQm56eXyKd/GTyp6rr/WmLgaSrmH9l3k5DaLAedzQNrMmzdcTgZiWxW14Jjcy76QOGTfQ53pJYTpezohki9nh5jSFQUthcrzMgW7QhSty1mYGT5nZFQU9uajhozvbTnQnQGWRziLDEt+tVYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743811794; c=relaxed/simple;
	bh=pmckMYYOLT+NzJII1LLsoana8VQVMZi/LiYDTT8t2zU=;
	h=To:Subject:From:Message-Id:Date; b=bgfHEHSvvDj18YtXTYEy3Z3UXlTzHnRkmT0UrpEk32G0h95bnZbxdvzRYQnv1ywjPZzeaweHLXed4gxRqrYf2CUPE+xw5pKVEjsQ5cqiVdPAbkqXydDDMhApkC2hIzi55pzBbl8jxboclcEt3HZqomvpTkgUAV3A6irOO4ZNlSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cRXQx7h0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cRXQx7h0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2976C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743811793;
	bh=pmckMYYOLT+NzJII1LLsoana8VQVMZi/LiYDTT8t2zU=;
	h=To:Subject:From:Date:From;
	b=cRXQx7h0r+a6w50qEq1CldDVyeh9lxrEy9iftRxhV3xFk5aIT/1O6MS7tPl1g1nCD
	 K+84E0DP0YLoP25NpDiBy9K5e9SnRLrzYlCHC9z4Lk4SMe24O5nUAjG8iq9BvoVg6S
	 d0MNe6yboXC5zAbIec2qa/pX5oQYYz3uzaij5EJmKWSChmqZPgY2G+kq1wzdMi0kcY
	 KNbAO4nett2X72qV8IolRI6EuafPK+1odpuqPz8C1qmzoXjfXJb27imDglbnAzpVCS
	 wKyrPx87P1K+bpwp/Uk7756Pz80DyISRQk2DoJQ9pQ0RD6+1ib8VTN5WA3p6tlnW9n
	 7WY4Ny23Z/Y6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBE4C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174381179366.30448.2180886606368896774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8166bf21d9a58d79c85a5cf3ef3a609e008c0141e23caeb58b0c187b8c0af451
Date: Sat, 05 Apr 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743811793
