Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5463D561
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771775694; cv=none; b=GtAlDlEeSkoVOWR5kOMaDUE1Rti+lIIPbKx5vKvpqWkQFELKj2QODTWUuxcKSiIwu09ISjleRbkNPgmiKvK09Dy6+upQpf4epUUiSL0g2lWLZcI9ehB95MCD3sOXlokYfP/b0uslCxeBrJLqMtdq2pa/v24FoItPfUElR0QRsh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771775694; c=relaxed/simple;
	bh=Nyj2e9gC1BxOC8r82X4uc2X+mO7IxhuZRROeOFSjbX8=;
	h=To:Subject:From:Message-Id:Date; b=CPrl61G7xB41DdpVEaMP+BcWiUlg7BYCtpKm6+BGU4A4wb4ZUq/jyBFD6t3URLc7h+RkjMQ+XlMCp4UYcYO09aaJEF+1KwckM16+NJyr2yaLypcVfJtsAlgNHVLORWRfShSBoIfwQVZGI0yQyK0jSPfNeUKlyg0YDjipHxkYjnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atOziBj7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atOziBj7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B38C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771775693;
	bh=Nyj2e9gC1BxOC8r82X4uc2X+mO7IxhuZRROeOFSjbX8=;
	h=To:Subject:From:Date:From;
	b=atOziBj78OHtlAwiKOOcJ1VgHCnG2L0b19z33hiioZr1cZGjhwElu0QcEyr2LD4uI
	 EjKRE1E/tc4S+tAe/Qjr7+0stYNFWn3oECDeqZLUsqSI2b3+xtrEq+O+dPU4kpN4+y
	 fFRgmus91pgiIuFYdPs0bRzM38QuW312yQl2bfEgLea4iVjfrI05wN+Z/kAgLO/DJs
	 SowaX0Hn6qFBDN75oWx6NR1HxSQjuMxAbaiw0P/6sauQbXoXmi+Ixq0Zn+r0X3+E0m
	 Vn4mAqLqWQcl3wwEa52KSN//pMeEsELDXT9X9gyvDDl0PQC1/FQWdsIH9Qxr0b7/d4
	 y8DairG2VBkRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9037AC636A0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177177569358.6926.12681627155964225770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3e2122a9512af3ec2aadf6eee2cc9afa1fefb70995bda3f1aa55a24fca5f9de
Date: Sun, 22 Feb 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771775693
