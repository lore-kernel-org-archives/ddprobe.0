Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0882AF0E
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749987594; cv=none; b=gKfCXqDEKRsmd9W3gC0lUkZNoPk+5nRl5Kd6YCSo9/9Vq41vHcWT/WrkEz3I8CaeZo19VEidiF9LSQ9uvVjCPsTtXh6wGrxazSWtjQLJqVHSm0pUOP+lsK/sgB45246O+hQqcGMLnxd2H/1548PVemU+BvFkjDmqHir6CKTsyQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749987594; c=relaxed/simple;
	bh=OXjY7RyCZNaiJyC0lRUFhyeRYtZRbn9ru6HkSXlpFXw=;
	h=To:Subject:From:Message-Id:Date; b=Wb2PiQi3mAFkeJ9VCgW1CmEjpO5m/7cePdnE88qXzt3MTfyGS9qc+Bh31rjhv9v2p5y92iE7IXPWQEu9NtJhgltiEbbWNlCPI5t14RsAgSwpmaVBSvnY0Uqu3zmlMZUUHbpm1skAAHuZVV+HnI9EZpLp0qXl8lvKYeRmY9kEcNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHM6Gnkr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHM6Gnkr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC48C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749987593;
	bh=OXjY7RyCZNaiJyC0lRUFhyeRYtZRbn9ru6HkSXlpFXw=;
	h=To:Subject:From:Date:From;
	b=jHM6Gnkru/R9JHq7IHeZ3CAD3v32S3wBOcW3peL6ea8onS8+KjeNj/YEk5Dpwam2i
	 BGIFsqRXLscrlcNLGMFO73c+wJEQLyGV7mR86Qx34ZtOX/yFYZQZ1kUvzM231Bgo50
	 PGjNiHyx+Wu6V+o6/9JAJ/QbQRVFVgEnOYVLKtb8DKLnvaX1i1OjI2gBemuFUcCjHB
	 FlejcfHfD+8qRPw2Shlgv1e+U9kSZ6KQrxFaZL6jd+z88dZvrFo0g1+pWI8NESLY5g
	 +LElTNyV+bE8Be4ZiOi87iKB4dhdvxUZ3DdxNodwz5MWD2GJaLsGaw3w7SWZjWKmnO
	 gSyq1YQFx4UPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9520BC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174998759358.5023.8222298559887414051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0d5cd32b31e1817a1c6f22faf7c36833fa6fded4c70e8808cb56351427cee25
Date: Sun, 15 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749987593
