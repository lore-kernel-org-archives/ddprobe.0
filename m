Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230822D8798
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773713694; cv=none; b=kY4izCPgsZ1oR9Y+y3Y/NLFbxJ2tRhv3uMhvGo0L1Y5ibeSuILthp4UaYDthCbahDCjYVs295t5Uwmmgjh7hJICnGgVNz18Dye71atGeME1mw1bwBWGn7Xudgk/u+Femg/T3b7Qvant3o+7yIzCjSLXqebFeI93UvqzltsXeycs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773713694; c=relaxed/simple;
	bh=+GF0J9LipcCn1xauVrMEMRP9wTZ8mK3woqRy3ak57Ho=;
	h=To:Subject:From:Message-Id:Date; b=XK+X+LwoBLHSkiTmphk4ym3XU9WMvS8A2wQTt8QxrH4/uxB5KgDWb8gajSaPILBUPjnVbP+nSlYmCM/r+i4LhBWVdbmuw+ZlQdNV4pxs372l2u7xA7sU8pL7inhK9FdtF7R7rBSvnmIqNDLBb4I7KJHekNU9g0avLCH4yk5oGB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ww3qlgrt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ww3qlgrt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FACC19421
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773713693;
	bh=+GF0J9LipcCn1xauVrMEMRP9wTZ8mK3woqRy3ak57Ho=;
	h=To:Subject:From:Date:From;
	b=Ww3qlgrtrRotjKOCyTqk+PTMBttekV9az3+Am3B8XdSxbvZ3rosrSXFEfoqHAAlgV
	 UjPyrMIz5XVh0LZQMAC+dpRaiwtM+8Kp90MuuRUyeKVyLtrAbn16Mlr2GNv4BSN5Or
	 NB1yJHSYbICNWW+cvhjALtOkGa5gwelLysf5DiQmhoWCZiDk/dG/K3enb3OWk8jRp+
	 nnSvQ6IzZgda4yfGPNXHIRrDQyYgVwwrvxk0RnCksZH1iEhyJWeKCIIPlsSII1jPFs
	 1311LWKzOHeCrN0fDnZjiixNkxVcyhPyAmXgabrMFCYbWrcSjmi0cViwZOzMHtOYYz
	 ZohQYB4paHPLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF81FB5EA6
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177371369362.880.10029848961221488183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd0ca525a8d5cba88a909890821d4297e64188f7e3cae4eec72cc4080ad844d5
Date: Tue, 17 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773713693
