Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2031524CEEA
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774388094; cv=none; b=NERs9aT9bAyCubFbgj+3SqKi6tpVsZRb3CQsMo8zD1oRX5bGUTPYRNk8oEvKYKQnnzph1o48Dl/PPIAzuPIYk5ychdZq3HB8vwgOmC0pN5sopSYet/Vm+KqvywHNHn40CorUKax+8edFWJAcj2nDpByoBurEMnTKhGTksuLWDZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774388094; c=relaxed/simple;
	bh=M8wtHVFBm7MxT8i3xzR/8yAErAr7qIi7k718tJiXV+c=;
	h=To:Subject:From:Message-Id:Date; b=npzEyV+KuajS7dshXoIkk29gAl9jKRu5j2LZ9qJo1GPlphclk5lZtVt0saYDBO4Zreb6asaP1ngkGwddWoVCeXu9foaFjUzU+S/TGYmZhRfAS88ud7N1KlEZZsqFRCpspdR3LBIj77cBwW5S7euFMU6PuAAxgu0oXiXvxxeBSEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PyPZ68b5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PyPZ68b5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA49AC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774388093;
	bh=M8wtHVFBm7MxT8i3xzR/8yAErAr7qIi7k718tJiXV+c=;
	h=To:Subject:From:Date:From;
	b=PyPZ68b5lzQ30JPx5fHKIyW27CToUr2NtBSisIJvYbYyOSyPQMx48ZR1lOb00mjrf
	 T/qIJ1sXJ1qT136lK5vS7g+yICOuw6Lnj7zKI1AEOlqrFXy5Gn2+rn4uUaARcNLspO
	 AjmP2/bxroG4TptxqUXivjfs7p2eve0U6UsfIbcsLN+ELAwKJtE/1m8PVC/MNkeJjx
	 c5UpySZodICpyKlwdC4h/I/G34XLvkwMH0lcSUMvKYufHVwlBFnBtzRXLsxyQ82n/b
	 ule7pb+89UyrKCyPmISRPLgtJwaqTecvE17iP/q0We15LvlKP0s1S+LOsAYpO42QOK
	 v3dPoGUpLI81A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B3AFEC116
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177438809359.32763.11351222396462090083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eac7b0ec062ce6c3f42fa341254ecc0d828a1d93bb3d486395c7ec6bff8e9cc
Date: Tue, 24 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774388093
