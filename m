Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3202F22D4F9
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742662194; cv=none; b=kWqL6/0nExj/DcMth8ZOdj2XsIsOyYE5Bw6g7cPQyvS56biZ1oMMpwOW9ZDccqLZNAqE2YQO3fHyDwgqZmFpx3j3vwO0ACvf9JA1DXGXMnYnr51sTJJcWQ15y6hQABHwbczQCmYKaUmRZea3TjLJpu7Q7hvNGkz+TE+Impmt1cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742662194; c=relaxed/simple;
	bh=BJV1EnywnZwI4u3GaQdrCrBDRv3bM9e3HkjnYFD6iIo=;
	h=To:Subject:From:Message-Id:Date; b=sniTG2+n/W2Lz2gDlqJLKxx2cj+KPXkWyNFq81D+r4ZLou23yX5VjDkZsCvqDh+aMKS3R5v1kjSYtTUakGLFC9hOV8uSHnO8WNc+6joN9FPKZI3gbuOS/vES+B5Bx6oKHKdblYl1v5DRiPwSj1rPoI0Xqc94GCE+gaRr/s8+kRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uwD4aN0G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uwD4aN0G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3C8C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742662193;
	bh=BJV1EnywnZwI4u3GaQdrCrBDRv3bM9e3HkjnYFD6iIo=;
	h=To:Subject:From:Date:From;
	b=uwD4aN0GZ1CLVnqfShKnZhe+nu0zKs+dkS9EsvxA0OM/SHRnzIi7+Ltq6AfFA3uBQ
	 JWCTehpcko8AqoK8xFuhpXH5FGaR8ykdFLzzx4Kctyn13WU5HLE6w/fz1qVaNQN5kM
	 w3u6dzJLVMHnXO7lepAWt8Fg8pjx0tJc22ZIOLDRd3a3JvFwNJuoKu5FBRRcRiizWl
	 pAF4FhSqIVWpeAlOS26J+xyfluXhX/Ho+PBtP5WGmDNbI5mnlPwCtNag4IKRicUquo
	 5e3oSnBL4IrvhXPR1aZfHp/ml0OjY948z7XYZGYAqRsscakl1G0ui8Xe4/CKlCwKbu
	 9tKY8gnJdcwow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99055C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174266219361.6474.3335306509330805221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e234c57ef06fb207c9419ea920b4f0ffedabc1b9b1904a83120a5abc7a11c809
Date: Sat, 22 Mar 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742662193
