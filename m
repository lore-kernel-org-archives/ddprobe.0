Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1F5328611
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 19:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783108714; cv=none; b=ANJBchTUtAID1si9XAJd03J7JNlhnVJpQwVjtfpvNiMym5VRmpzBcg9fnIZ8Dlvv0tVlNl6BndvQcebz/ezyzUXImAUFNikRObZah0DAaBW1CMnqaKkoVRyDG5FHxBKeTdJXP2CL36xvVX6HquYw6vzsnm6DjQ1Itd1fZ1ZF9LA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783108714; c=relaxed/simple;
	bh=2kjqiqJJG6Sz4ydLjCZd508OIsGpW3dID3QOCYZFTDI=;
	h=To:Subject:From:Message-Id:Date; b=Gk5taWe8wiIVy5mR7lOKK8uw1EgE8eB+S4BWSYePrBZDMGfyfdeJgnHK98kEnJvP9sCA4kUbqTDxEyMOnJHQwowfkuHaU8idaabYY6CV30GjH8Ajx1vuph1JHU4jH1VvBTYUXdKn07sWQL40AzWJeDtQ5cuMdwcfD7nLbV4HfA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FKyo2puw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FKyo2puw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4E8C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783108713;
	bh=2kjqiqJJG6Sz4ydLjCZd508OIsGpW3dID3QOCYZFTDI=;
	h=To:Subject:From:Date:From;
	b=FKyo2puwNvLNtkiZHxsTeXptPEmibV0ZlKkzBh+TxwcD1NgLcyQ1XLj2DN6BQZPF4
	 faEtJ48OjnDMNqAjvjueLwMc2zd9HZosNVfsXKth8N1X3mf2zm3Zno2ftD8gAqBuWA
	 SVe53NWEyxGyGpTIv1mxdOwMqeTuXLhgAfqkjib9ckIkz+LIvDtDDnHkEsDeLdeRnc
	 PADH9D6n7WzGDE6JdKlaNuz8ETeXU9R88Bu2vE1AGRdfUB7sLylrMmzsog+HoXU6li
	 PMO3rryra/ojOq09Dh2ssIYlrhp8dfsSJRVWYBZg/QwhAbYAWo3+g7G9r6/xjvFfNM
	 QKHT58jcPnoAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92B0C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 19:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178310871368.12995.1942456537299827209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 897a67052e469c8532d15a59526308d152c38e10b3c6d8ede845cc9aca279cf0
Date: Fri, 03 Jul 2026 19:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783108713
