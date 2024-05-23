Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4224D7CF39
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 08:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716451403; cv=none; b=ksBFOhGL5AcP4AsDxHlpR5ztL4/Q+ukmNAui9DgJUXxdYpJMdZ2vlyeKwT5MLmRBMftp6JRokloN14AMTmf8zHmBdREse8egG6xzXiKsjJEQLU+kf1kI1NbBIwNYpSBPse/UtFNXZWE16CYYsBejWKiV5GRCcA1EBkW3gh6zGFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716451403; c=relaxed/simple;
	bh=/4tJkSwMBCJNaCnER9WXh0qsZUCguR5KBjH0obfH4Xs=;
	h=To:Subject:From:Message-Id:Date; b=hBlffTN1qXLWmWnyNPlBfNGTkFspEtRd+/QjeD2hEeH+LzZar41tKGvuFWwGpp+qY1fvUCtQ7zZnAyLMbf27weFEQ2JQzxs92pPeNYL+n4JC0LP07ZU0YCEXLwj6vmOLQTUGWT2y3SP2xdeSSJFpVbIqtcko4+7635PsMSghW2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxiTFi+8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxiTFi+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2228C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 08:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716451402;
	bh=/4tJkSwMBCJNaCnER9WXh0qsZUCguR5KBjH0obfH4Xs=;
	h=To:Subject:From:Date:From;
	b=IxiTFi+8Y8vjoqX1IQylhUGBypDudc52ucf0qt61UpP7p6FbxCSEoGhn1DpA6SF56
	 vWGFPp2YOM3zpT22FCo+Af/rEbEGw7XZsMnxFDXpw76Ra1iZUoV/PM3HN7lVERGmSG
	 fopl/Ap6KKqox1w/hnHDqx/LaJ0qJJCH1+hode3TKHteq3VDhtxksNcpJ95biXkl/c
	 5KCVwu+BVKdmxGyx3UbElqAGgu6mWuCqNnxE/Y7bWQGpb2bMpMUnHowfJjhtuGOSzl
	 D6MKdC0ab4OE0D0SzINCLq1oZ3lmVHUYyFlPV5fbH8KoOMmLaJW5T4AU4iJGa22x89
	 HHqwHV91xNuIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBBB8C25B7A
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 08:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171645140276.28324.17210337458941153662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af409992cfbdbde1bebe443653d4cfb3abac347f83a86906bcf0dfcdc8dc3d2d
Date: Thu, 23 May 2024 08:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716451402
