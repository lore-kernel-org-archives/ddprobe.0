Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6561D9A66
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773797694; cv=none; b=oHqWlHVklVPTa/wH7h4hBIudCVY9asHmknq8NzVsNQ5Oghc4BHfpLqYaZEdP27bRKXp/OvEbaZ789dQu5bKLuicsWgkVAeKloqqLSO/tTtHDs++Z5fjcHDCuIBKqOgMeeWPhxRxorODAmVknTfIUSPg1TOZMhmstEbc26xX0FWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773797694; c=relaxed/simple;
	bh=5ggRNt04qfMV2mYYHL1eHKW3cBAiK+EEgTQfh4wT1yM=;
	h=To:Subject:From:Message-Id:Date; b=e4XqoUll2hPjUSFkewRRbFbm9YzJ8QApKDRK2N8ic3RWFUxu+yPP4FNgm0aSzutUkcPmpQGOjy4GPgD1B7xNQoAAVv8nlWsIufJDJWiJATU/mlVqYnVGnzJxihJ5jb/E9knXgSKeMG8psAvOMiZPbN9nQs8MzngIltw2uYNFLqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cu//ILiT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cu//ILiT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B337EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773797693;
	bh=5ggRNt04qfMV2mYYHL1eHKW3cBAiK+EEgTQfh4wT1yM=;
	h=To:Subject:From:Date:From;
	b=Cu//ILiTPXH+q0i4EkoAebDSXY6gaa5eRJfCB8b+pdYMMmVX3uNeX9yXZHaxYJ+aE
	 NYUuOqQua2ifOVNcpKlo+hQ7P6FT0YlQPmtKT8Mgai6GBrLp3CzobF6JaIUcg/78O+
	 dwYoQFTxdBehGYs+MJUCqPNmp0Q6ZhmyxQR2P9nfpLriyn+ONw8EkyT6AiFMIhgghj
	 8jx/rKt6x+BIiFUvAdEDEOgPZOwqKxAfC8RM6cfzDh44MAzG9/GXVqE/RJSFMJC0XS
	 lODoRxZAnO8OhDat0qc2Rbd7DmeVTdinhaex4NRQCLOX67tJi/Czs8/u5EHgxH+eZ0
	 F8i+23rPh6DKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0575FEDA09
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177379769364.21970.10299387944119873044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b6edc7d5cc5c7e9df96c2c2dea355d4580fb0a4447547d55955b6f772e96db0
Date: Wed, 18 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773797693
