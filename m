Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BAE27EFFB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753205995; cv=none; b=EjnWibZW0RSLt/EaXkYgWBRx0moNZSWoZatXjX+MSew75B+LjLai112FbNkOBDakj0ILqChfi7dauLQSG6n2eXSdZN3+xrGqHkDgvyOf3O72CTT/VNfJAF88uc/WylmDvPNTk+eE9QCH+3rTWpwbauMR2hwQRbu7LHZk6qX1Cvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753205995; c=relaxed/simple;
	bh=3f41XCYM4O/sI2gGpp5HjZ7X97AqwXqnDIQ/wfJsHNM=;
	h=To:Subject:From:Message-Id:Date; b=tDvicn1qY/r3Y34Ac/q+AE5z7gq/SVTSWHZGESwQuus0PlY0JaLFFBP5S2pgdRyTwmmCcJUJdkBh2LxOmrLwp1gTSEX0LPkuJLTKCZN6ijBGA+fGAdOUOSZ093UVOIPJo06SGcD1M47PqTWk6ebFmjZA8rZ3hhU02VtWTpU2VUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShSnsPd+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShSnsPd+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3669C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753205993;
	bh=3f41XCYM4O/sI2gGpp5HjZ7X97AqwXqnDIQ/wfJsHNM=;
	h=To:Subject:From:Date:From;
	b=ShSnsPd+/M0gn/fL10pQUy+NNm9+EBsKs2ci+18/aFG7OeVA/j1CUbMtDeWPH0Tr0
	 OKzHLzZkEpt/ShDPkwyqDoYGL0s+a3VqajkLD47TWzrw5ZF00Dzy8fy1PLGxLC35f7
	 BZo0fkLP7AHcRBVc1ibcuV0J3WnZHsID132mwg4VfdBVqH51xqZX4BvawIiItOeQNF
	 ECKoMBXo878GstlF/7TA9FH5LWKuxiUAvVqZ78qqxxf11rNYVIH0f1oH9ZaKMC1ydB
	 CR5d9rGelxlrxoaIEefV0D8j17/dqjWU0RaDccI6KeCy3huEgDFqpnZbGDjbELAKfw
	 N0APm0jlWfP1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE83C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175320599358.30845.2969869263844438794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e3fa0a08ae8e56857dbc0e380b96fbecb8f1a977754a76c87d9cea4aeb0f582
Date: Tue, 22 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753205993
