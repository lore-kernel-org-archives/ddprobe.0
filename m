Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81F9418BC3D
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791850234; cv=none; b=jpUL09pS2BOehbu0o8K7+jMWt/iww0RAvj0MbF1FMUP9qr9bPIIQ6MOLM9Tw0DLeYKCsMXcYZPbebj3aAZDOxufmZf2q5cfP5B9jrUGa2F6EU5xaiBpZtpdvHXxXE+L54muB8+dpFc1uSxMSsbT/XtGvilvl4AZUhGznqMtI7fY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791850234; c=relaxed/simple;
	bh=OfC8WGtUU/fq9dXYIyr5kJeWtkLz0S3V/c7POOlwelE=;
	h=To:Subject:From:Message-Id:Date; b=RotU/pKdGhv4tyn25YNqZayHf5tcbp7aff6Ej+NLISPEHRHv1ZNhVWwRy+XJsWuv71vCzSYIS/RsUn35N/yQKNtxj2cb0B+LHaPVlMK55xTPgBdE5x/ToQ5kJc7/os2t3P55x+p44FRFAJvSBd2GlN/VB7sSonJPhMkWI2urfTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8kWqiKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8kWqiKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBCCC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791850233;
	bh=OfC8WGtUU/fq9dXYIyr5kJeWtkLz0S3V/c7POOlwelE=;
	h=To:Subject:From:Date:From;
	b=O8kWqiKZnItYPoz1RlkTDeX1+G6Md1CHUGFhZs4DnjsZbF0Dw1oWqab1P8FFw2DgS
	 5BG2CEAGXL6HKxtu3GrIRn6PyokI7MJjki4whXsl/uy7g2G+imG5CvZyxXcL2hN76u
	 gOyS+ZSICYF2GnRgFkZxLqgPkiRlC/LmL5bllouH63uevJth5yAaZ+VKuDi65H3D1v
	 6bA0fhhPUMNOEjkDWqnCGB410IItof6fiugvKE9nEl8dOdhVNcB8VmnEyUAOVmf3aG
	 yyaSSkNXLXnM043LxIQLVSwmukJ5TY3hLp72kImN8WbKDTOehiEbcbmQpQQ2c3AhhU
	 K5ai5YIYmh3Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA41CA9EC5
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179185023368.4393.12978489421401733524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e349a39193cbe24dd6c3313fd7c77e32d6f9701877d42ab215461fa2a561fe
Date: Tue, 13 Oct 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791850233
