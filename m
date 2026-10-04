Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D0534D382
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791130234; cv=none; b=OwjKvZziTRBSv/9xnUX/RhZB8ay+pmPPd4tttelp895qf4wOt6bznpB1G0bnAbGaqUAt0adI0QcpLk2tktFMBL/9Y8dAVukYt0pkJz5QNR39V1CmyYpqVOa0AxUmUtAwBb2pU36p1hd7dxAmz+QtM7AWyq39ww8+aGETLH58rLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791130234; c=relaxed/simple;
	bh=xl0uInKwWxEjuNWCYjLFV5+/HTEXK8aYChJ5x4kDi+Y=;
	h=To:Subject:From:Message-Id:Date; b=A4db/fefURBh6L5aokrlqtDWgBHcGQaL2IPBxFLbkg4NAvVEb1pD+qKePw7layzzefAEE6VEzoG7Rx+A6vD0r7fidZFT7ZBYsD7mnCY6t1zIzGnmlKNiGq7ZdVvw7MlnTBfeRMRwD8tIaZWkE3Y6PuJjSzwIPsqJQp0I/Ls4csc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X9VuWoRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9VuWoRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D51C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791130233;
	bh=xl0uInKwWxEjuNWCYjLFV5+/HTEXK8aYChJ5x4kDi+Y=;
	h=To:Subject:From:Date:From;
	b=X9VuWoRhotKrqXLA0MahGwknPXbXeHqRGWseizkjWVvo7XUNge85jdb7ID4hHrK8/
	 c60QPY55G+s25CtUCTcoQRT+/t2S3ajd6z5hlIcS4KKSb97junUhU4gMWN6CmBdbQG
	 v9l0lg+AtdpLq01D451jr4NmzcE/M0LI8Ds9DvqX9xrSzXYaJf/FCaZ4043k4LuJc5
	 CDwy+Zv5lE/n5bUkX42sxD9cpuEYAn1MMMVxvt0/qs9BZquaH5DEFLjxz8ftcIla9T
	 J+k+RF7qDjxJjC0UswPWWwzh9kiF72W8dqQ5ayl5z3hGWhBQprQbJjzhk3IjpPOWuU
	 jV3cmWkbJkPWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9214CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179113023368.22416.4723917836569593984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc066c2588bddab72e9baa6db8394bc3974cb54104ae79630bc41a8ff1ebdde4
Date: Sun, 04 Oct 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791130233
