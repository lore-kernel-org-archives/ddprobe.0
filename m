Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40333374A04
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 06:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781937394; cv=none; b=jW/CLtrI4clZKT4glK0TF+xQ0qvc0o1mcEzXu00cl8WPBSRJvf/Ll+UrKhOqenVgwiTnmA5yxcNMTJI1Td7VJXCkcFBnzkb6gbh76nDHthBfZXNXjVi0vHXpOP7+PtnemMSfkjh6OBC3BQ9mZArXs+czEsTNhzKzlce/UoM1W4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781937394; c=relaxed/simple;
	bh=VarhGsn5cbJHqaoBlPQ/PCVq1N8ujcd43yNJDVLHE54=;
	h=To:Subject:From:Message-Id:Date; b=Mg3sDfpBaH7LDhLgqs1g8y/762KZ6KFylvgQnRaOy6mASZb1O74Qz1tWOPzFjzYh2wQuQK7Q1oFyakL9yyI17DOrokQ6PRWgtgo1FLbPy7+aPKtH9XulV6gr9oXAdYDY7g46tjROevEM6xob3tEi4R0iTmbdsaR+8gU5zH5DKSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwtNVi1q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwtNVi1q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DDFC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 06:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781937393;
	bh=VarhGsn5cbJHqaoBlPQ/PCVq1N8ujcd43yNJDVLHE54=;
	h=To:Subject:From:Date:From;
	b=fwtNVi1qYZJNKGQW0heSZoQ2IozpMigJ/pkuWd42LqNOLF6ueEdcoNNuQSLPLeGwO
	 EawZat+Pd64RbjzE9QnqPtU29KGGwjP4SH8yu+GAHVQm+C0PlYvwiM+05In2SHX2p5
	 EZAd0FSCWFj0JEcaGm1+5y9EeVAjJuix7mEBbvKFo+kiLrlpfA31u5LIIopfWA9r1t
	 +0BmLWVulBm36fnTV22lUj444vwRIjX5rzZMB2Hua2qHxgJ4klHkTwKBvRuF0z4g3H
	 hAv+ltl9kd43DlWXrgechnjsnqxzhyyt457Vfugp9mwX5QD0aj4bjtKCrddVPQFMd6
	 C2CA5avSIlvjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5116CD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 06:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178193739370.22225.3909051229681080242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8fa3a2bcbe3fd8caa55570cf21ceb0007c985d2efd928f63ec0081429e89329
Date: Sat, 20 Jun 2026 06:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781937393
