Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F18718BBA8
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743286194; cv=none; b=ALVcZcVbReeV/attXXwUzrNn9ybzEqqpA1E5Yu629Yj9M9Fr8cbi2mr5MPqaiJ+qMFajEIXcW9KgPhgVzWMkulFPoNGOVOTUSf6rlvX9eJ5ewLP1XKy32yIS4lFIKvhiUBgH43MUfvVuZ55iPrKQYuExUrz+u2qJEoUOwiPB3tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743286194; c=relaxed/simple;
	bh=BgZvhYgJiwwomkY5KRbrWjU13YXTEZVtDGDe7Yfc7mo=;
	h=To:Subject:From:Message-Id:Date; b=JLeOBCWyQnsu9mgm6lh5ieJL2s5TlXQKWtpmT0kiml5ozbEoJB3RLGsSAVSQFJjv+RRTR0HgNXuVs3OIfHEp+pIfFtvC446kNX8mmpQdgKBTHeQ/1rcLxgq4In/BIFLcd1dPlFfCTbP/8Nhty+th57GX3F9OwZokUHVownL2ZVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krs87Ptl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krs87Ptl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C89A9C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743286193;
	bh=BgZvhYgJiwwomkY5KRbrWjU13YXTEZVtDGDe7Yfc7mo=;
	h=To:Subject:From:Date:From;
	b=krs87Ptl+ClqjEUVBbkKglQGRhLTKw7A4I5ToZ52pZKNYpl9+8JKYFLSv/FbYxJ9n
	 SLAdl860MvK1OjMD/ok4czmsnsaUyXV47rnrVoplcgOrgD+6pb4sZb/bzgBYdXLk3K
	 8D3D8oMTuafd/C3S1O+S0Jxy3bpqggrbiJFpdHXci3L+AhQWib58CuEJ7z61D2ljk0
	 +GrYtPcLblx88tD+e00BgdWCaD9tHoBM5X5NbmIgpNkyW8UuoWtmq8kjsxs0vCNMOa
	 G7wmthaScpJ1Dds8qCb/GLtmsVPm+MfFDTLFMTlVuFbGeEsF/UzEklv6DfyxA/uOAH
	 yWsmgAFA6hWbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE81C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174328619366.20428.12284158969677569729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a21c34b294d187fa1dad0ef7157bebf59c0997164985aed80adc49b6b75498f4
Date: Sat, 29 Mar 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743286193
