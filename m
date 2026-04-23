Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA392DC77F
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776953854; cv=none; b=WhX65g+ybK2Kh8VfdBTpr7KMZSfQyQR4qrWH0vc/jL+kXm74ugRCCN5a78vtHOMy7tnfFwtMPagwZTDkLlMCDlq7nWDp5/KqSkc7RYSaX+p0D5/bePAv7nfkx+7C6QtsEpmTDKMCMSWD218f1BqREyahNXbd4aremPXKZLw9GNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776953854; c=relaxed/simple;
	bh=u3QP0wnoXEe/Lh4N1vHlI0R7QM61f6YG3cfUt84XINQ=;
	h=To:Subject:From:Message-Id:Date; b=goyxFI3A4o/do1nqjOnql5P0wuxPuIprPr30hiU/hfKSRetMKxmgBl4fCQ3REw2iL5EG2Bqz0jT1v2RyDc3sLlJYeXImxGeWqaA7g8tMjxgC9bRl1HOSPeoul/fCAD7gaPcLLql5z7+tarvk09c1uVdbUT0S/urvGalwmG5DEVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fijdDu5n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fijdDu5n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B728DC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776953853;
	bh=u3QP0wnoXEe/Lh4N1vHlI0R7QM61f6YG3cfUt84XINQ=;
	h=To:Subject:From:Date:From;
	b=fijdDu5n9CzZIZOlLoeJcuHfquKAyY4wBdE3FyBOp44LwVyHf5uJ1LP7A/nmds/qz
	 +1sIphQHjanvCjY7z08FFhyKIbiyPpw0wkFQuOJDgfA6SNP/WAeL+qud7B72BzRBxF
	 BpRPO/pFG+uqruRYj3a24QYzVssVJaE8LtsjImcP1Gs5sJP+z5wc97qEFTa1dgkPv9
	 lvMxq7NFaDFvqmYLmFsTe9ghe2Hf+rMWaQOJGmMhIknz3QN2598wjTuBakcRq25vuJ
	 Wtth2MK+rz7wLK7juwtRqq+EpD05xtFFEQOe7ZcSonSUj60evIdsk+r1ENpwsGxR4E
	 T0WvJda+FfzIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A970AF589DB
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177695385368.30445.405025353048380540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de18514c30c1a3c1e502fd379250c7930c3ad04d0902bfd984e0b5894a8e6bc0
Date: Thu, 23 Apr 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776953853
