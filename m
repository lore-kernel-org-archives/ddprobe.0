Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDF426F291
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768457034; cv=none; b=W8RSqHRwT7McuKecYVJGdlyvm0XUAM8C+5oYQnNoZKNy1ZrrRfQfMwrsYXfBFyATh+8DKRFrFC0Cy4Fy6WdVQThXk6n8vLAridqzwVDGLAI0FnRKs1Q6fllDptYlFUUez2DxVUfNn0mOL4Vf4Cn/ayGmly2FzTgNwhdulsxaoS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768457034; c=relaxed/simple;
	bh=Np+3jv9ZSa7EuNQPnTkRYJi9Xq6f3LjpFEiMd2nXQA0=;
	h=To:Subject:From:Message-Id:Date; b=cBusze08NIbDOCfV+fjDuh2+rUmZUct25Vzt0luQW/r1CO6CULvxQUloxUUAnPp8j+puPkQpekBwXzYKxPfFD87kV0GkAtfz51/QG9sJILjKpCtj/qyzcG19qptdkMkBRa3COYFTfcmb8WpNGnRZ3mx325k3GaNIwSKbn/sq/jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfrzrIDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfrzrIDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BFAC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768457033;
	bh=Np+3jv9ZSa7EuNQPnTkRYJi9Xq6f3LjpFEiMd2nXQA0=;
	h=To:Subject:From:Date:From;
	b=gfrzrIDLXiGaRLm2dgol8LZAL6jCAi+dPwfPaTs3ogd0qbTec9K7WyQuzqZeuIm7T
	 auZtZDj4Tg6tvvyBM7qvSBhlsaCnl9TdWtX7YqAUlEvH8mPrBAXkV3ly0/DfIRzqQE
	 7e4VyGj8UuicpF4g/KTaQO0TH8xAEJuzblncilPQAfsYoEzcA+cBZ+ar6gpycQpkTr
	 52Rhd838/+qAIfVhaUqw09CKYVTC7v5PGvSG9CrUMl5+gPD2xy+upCZPu/MonAx31E
	 H6VF2AYFCaAhQDHC8VTgx88L2ZF/P+u32CoknzaLZgtEer5DNZ+4sfKuP6O8CbTAmq
	 5lPt/z8UecjaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E43D3CCB2
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176845703359.13860.9857164695903230775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37c9415a9b67579057de9c4db513e9150eaf6dd00266cdc97cc1349ae9cd4f35
Date: Thu, 15 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768457033
