Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D36E383328
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 17:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782925714; cv=none; b=Lalb6CPqrfCpShJSvbE7uaG4sIZ8imppFaAHqiyUclswk+5/R2fTkXB8m+ZQpTgitcOIsWGTY5AJimANdW1PnMiGTfY+6bhSoaxei3THCe5h1hXQdimL3dumcoeFnEDH89qY1iXnXmTs0ITULqeA0nsYokt5tlcxzSziWlf+9Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782925714; c=relaxed/simple;
	bh=PYlFEJwu+WZtJNHmteNynZfbidU2cmh3hzGY4fdrgGI=;
	h=To:Subject:From:Message-Id:Date; b=n1oiWXkXAMG3OOyicMTOaUcde0zUC/oRzLalie8ESeCiCuaVBPfjULrSgoI9K0H7qttadxJAm3OEhHz0/URrBt01oWU8w+XAEJpeDiWU/k0Kmt/yUAOe2rJrblX5pnrY+T7Cu9s92XSZgvpFwRDoG64OjSTWc/5scvNjKsYpW7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nv/LeHay; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nv/LeHay"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D1BC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782925713;
	bh=PYlFEJwu+WZtJNHmteNynZfbidU2cmh3hzGY4fdrgGI=;
	h=To:Subject:From:Date:From;
	b=Nv/LeHaylwzobPJ37tw0fByQIn7RimORlpqlg9ek0gJstOlyVAaRcDM7dm4OQvzQ2
	 oLtQJzQd+5OR2tHGQcPWCiVqK5BxdUdBM/ViE9sjq/XKidBRkr+jA2rcdrL2uj9Ljw
	 kyqtLhZoXFEjDOBmZoLgp8CzlkD/7N5JTTL4LGKBYPFJQzeGPYaTvuk1pj2M+V2cX8
	 iffmT4/PksJPcq05KqoW8XVufV3dU+B5PcTvfDYfxwJmOk2Mqpn55qRZ5dnlGzxVsb
	 j3hYm+hNakmbVLZ2buwiw3RFAMfZOR2exYpICmCdE7DJBv6XpsWLrASGrlCnE6JSN0
	 HWGxJiDCNTY7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9960C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 17:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178292571368.844.7284386984584131650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fefff75da0b720a1f0b6ceb9c9d02566119dd65bf3ee542038556ae317f01d90
Date: Wed, 01 Jul 2026 17:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782925713
