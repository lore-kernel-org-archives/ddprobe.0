Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D64522313
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 10:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720175723; cv=none; b=Udm28tgHuedjJnKZHxwCwaeYG6E6ZzY+4qq7wuqi/X01CVIi6VZKIHCED5LjzZsmoIUaJOJJpQbtJY4Q2D4MY6izcDAMS8F4pG+4s575SRMMuBreSFrm5Z7GGPDLDChOgoVJKiMjEdSktqaq6sT+O0TBOp8XPCIRCxmeNXX/FHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720175723; c=relaxed/simple;
	bh=ZhVyeah+O/s77B25kBT980JJ9N3FmvGnv6gsRoTtldQ=;
	h=To:Subject:From:Message-Id:Date; b=jAFkjVoTRdOSnhGWq0m4RTZGmg+XIPmPpgxUq+1qOSuHY8Tec3g3J++x3MRuxB5yl9RXZPX50KHZqzginxbxdsa0GKub8+vG03Ig2m5h0Uq8hftNhc9JWDPQZ6otrTJ3ueEjf05qyBdDGSAn2UAEQ9Sxs/ynNUYQnKbBqSIQL3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6cXI1zg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6cXI1zg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2299C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 10:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720175722;
	bh=ZhVyeah+O/s77B25kBT980JJ9N3FmvGnv6gsRoTtldQ=;
	h=To:Subject:From:Date:From;
	b=U6cXI1zgoE6Oos/mhM3Gh8bA9r2egz511AuEX2JFTa6sITsS4PUx14Tj4Zrh6oe6o
	 nWhLaJ9jVQyqCFhqdmmtAjPe5cxhVX0mMQZ7n2gfbzP7LZVcu669UG10L3D7GaB4ll
	 jpbWE+EKkbkFB032vcbP9CEkh8W14cablTqtoRmpDUzBAWEcQ96vtwS7PalQDUncxE
	 m8Qtg3JhszTG/a+kdUs8mFOn3BzKUWBELhSJxqLNuhN863VM5JAMGJc6p7RIFvKRD9
	 yGbo1uD+8dUO0BBuEmp3X7cXS8HgdYDlKzHRhVkv8EBMQlzZDztR9yjRUidMKFCC6/
	 oUmoCOQg4d3EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C35CBC30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 10:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172017572279.4700.3043835363966069667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1661a61073fbf4a75a7a9c570fffdc37fbc67c37f42eba41ec0a768662544f2
Date: Fri, 05 Jul 2024 10:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720175722
