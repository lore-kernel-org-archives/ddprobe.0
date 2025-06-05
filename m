Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3067E1534EC
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749126594; cv=none; b=JX1GZhzpqtsdHnhlkuueSaPrrVn5g1BUo/gxYdS3pn9ftknAxcj2XiKERC+FRku4Da82Egvr/lKA5rN20OYWI9AafutuiyLeLyc0NpkkX4HqxcjfBkTe+0luryz7AMqJ1tGhVN90kL2uUli62nxwFzc63CloFcHRb20laqzvCGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749126594; c=relaxed/simple;
	bh=PRxMs7zqyHluCGY5v2oSfa5nVUSVJr3QJGP6mStBVuE=;
	h=To:Subject:From:Message-Id:Date; b=KsRnY7Vy1Zw/+SkqZ01ebWKKSGiJ6p3UZ/l2uygMzs3mDmg8tfoygYeZf0o0tTK7w3q+9h77tUfAg/KTgXchZjREGylJ5EN5khq8Sa3avEy/YEuhfuG5Yqf1b6Fw0yCXtAQytOMNuz0aPhjFQzNHjwRAzdfJjMHnK5Ej3vwNxfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQIjhfi0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQIjhfi0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC75C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749126593;
	bh=PRxMs7zqyHluCGY5v2oSfa5nVUSVJr3QJGP6mStBVuE=;
	h=To:Subject:From:Date:From;
	b=mQIjhfi0mgu8becXUzKEp1cSjw79R/X7uVg7qpuqhtqpmzeaJ7ouvgJDNefiQhzLv
	 F9KwGOnPjupcrE7cwOvqR+VoF8DbFaBQjekYSjVZ+VUNIpLiV1EPu27Uzb7VB4jF32
	 MucFUCW3r2UcSkxEuGXNFfXXbMyHF45LcsdChvUCpvDIvoCBvDbGvVJbKdIY1M8YiC
	 VBlQBJ8Uz2RD3UR7c0xNrJCc07gIMWRw8RuxoOwu1OHZhbFHtl1xxWQ7+SGAM7G6zr
	 svGJZmTe+g/2rW405/nQ/Gk8QvHKOKnjefJOZ0tc/9oktEzGDoanj7Zk4cAjWRTpdj
	 0xOrossGZe+cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5F2C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174912659357.11009.1604100459293846932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6f8a2eec369a4248e06ccd3c2c5c4e3d1b91f110411d7d119312fb325efce8d
Date: Thu, 05 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749126593
