Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8746F19D8BC
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790908234; cv=none; b=IMV+A1I5cZwK06yQgRMkXAz5fLiMBV9kPvjc2dDXatnqqV4Qw0jP6VTrNa0Ckg/t77fnkNajgxzKAO69zPdlFIr5W23ysLdO+BpK/tJ12PJdAqHc0boDt9hpGhj1XKw3ceUwe3MB81lKYbcZ3PYOnWNgw+6wjE7h1tS4bILQNG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790908234; c=relaxed/simple;
	bh=I0rSrGfD5dPwYnh7PSC+Z1aeWbyoK1iPQA08CAYw+xY=;
	h=To:Subject:From:Message-Id:Date; b=SV2xuMS7U/X/bGAj7ErSFZxK69FVslTbm4lEcKG/8uDmWLdx3f1Z7S9+TlYg7uB6/T/3eOa6E2eYgeMHySEq1/oaI7FjvWYMifvzy+G0QYGsAhhh1zyeAThzaREQMerCrkOgufKDFT49ivXGUx8ZokO6a7a2CRJcbOAM6YhPnj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4xOTJam; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4xOTJam"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 19FD5C4AF14
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 02:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790908234;
	bh=I0rSrGfD5dPwYnh7PSC+Z1aeWbyoK1iPQA08CAYw+xY=;
	h=To:Subject:From:Date:From;
	b=a4xOTJamGvMBboEaKhbBDsz6zd10/x1eeu4uvEaVQX6r4n++TvcKEi7YM/rY2uRIf
	 xnJWw00VQknTJU0z1pMBzGS1L2LWAa6RnQYOsRrRZs593pz3eAJfoSlmbdX+kZINbf
	 prgUnYXBC+D8AccxLgNXvoqUg1WEXRA8GfNcqGor2jcKpYdx54ddJPD/A5ExN9dcTJ
	 8YLuW9LVwkUctbQDgoclvGo1prrHQTMvXAq4Gnv4ccButTaLneNBRz2lVRZevAjP6T
	 XkkweSdNyT8Nj3iD2y+blZ0liAz1a4ZE6iidjoFF0UdjJ1ux1BSrmKTLQm43pvMrrF
	 UIbvYvgMj1wSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C615FCA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179090823379.17099.8922603734993609111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66a428a61b8b279556b0ae0a027202f6c8ae0886d393792fe8dae2e67cd38abb
Date: Fri, 02 Oct 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790908233
