Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F41C91482F5
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726335354; cv=none; b=Cx8KnnTXgUrVQ4aUnx4A4KNHx1Nvb5A7tdhGe75Qibv9xQohi+P3uy0FhONFbT3zvJb9Yom9RYy7fqUsM6euganWE2MNL23o9yvlBcYmQRg5Qc1MQRjvlmFTmCaJsIHrvnzYQxt6IrllfJppxcD/ElegYVuWezf3GbNIUVB479A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726335354; c=relaxed/simple;
	bh=49OsqPwqy/OdiJJoe1jo7m8XAxCTGM6i7LbH8XpjmZw=;
	h=To:Subject:From:Message-Id:Date; b=GWoCCTZ7vlJUQeBc35BPqi8K2moL6Onlj+JOISVg+XXaz76D9NomzWzjrnamIHn6KwSGKrC9iTKj3zc4OPei+zek/VTpGp5elkTmTcdZOH2kgcMD+FEaHzH7jkDQbP7xmibb3E3VXTLyyRdDMVZ4gWbf1rDgVal5TV2OIRQi/lM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hAmHCduD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hAmHCduD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA2C9C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726335353;
	bh=49OsqPwqy/OdiJJoe1jo7m8XAxCTGM6i7LbH8XpjmZw=;
	h=To:Subject:From:Date:From;
	b=hAmHCduDDVX0aPdooFGd5R6xQRSZ5UZT/XW3Gj1a5UC97XOPnZzg3zCcU88Q8pZ/u
	 AG79pgdilslq4jhumOL8fhO9XWbLZxRT8ra5LTsWmxhM8qilaWi3crGzv6r/MoVQAy
	 VIqx959VZAv9cpjt/jY8V3COFDjctEiljYZyNFPbahkFAIzlvHD0yyrh7Z04ApDAt3
	 PpVpFiD9IB0HEL29c5yOUqeZpVKx27I6pBLShaCi6qj+SEKF/fH8VbSM7slMOyuWyK
	 pW9VLrUyXL6TQf9ROhaPDG7wjLUhu2Pf5S/iLWOCQMyEAxfhDjQVyWymBHO5ZzZvDv
	 978ndbMl5Dimw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7823C021A7
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172633535364.12147.17032120209550023261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc7dad88417c0c21588ad82a419a4656f90804763becd6e9af603039bb89b706
Date: Sat, 14 Sep 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726335353
