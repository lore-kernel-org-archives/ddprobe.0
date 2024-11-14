Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BB4198E96
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731551754; cv=none; b=Eqk2sLRGeGtj8eJs2G+3x2I5LjbtnDdIh+0+a22FEWunwGSTCrGmlKI/TlnD4OjsFtxBP5RhaPm3spOmOtuBs7R2MC1oWEJjaM8Jq+GvuCuqUTsk44p+4NH957N60JkKGru+8gzuWrSkDofazfvhaTDV0iqfjBOM1sLBKE+ayfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731551754; c=relaxed/simple;
	bh=S+d3FjS7YcEzhrpHD/CmSqrVdmJ47LGD9qgJDfdkohw=;
	h=To:Subject:From:Message-Id:Date; b=jLO5cC2PyaJSsNdsRoLVxwj5ewxBjfFdt/SjhHUytY3l34HDn/GwJ+mU2T5kqXuxl0SiMV548KIwKAAgIkHb9AQGp2b6GmqLLvznbh5ZbZsKFpSf3EuwEMudlo8WgdZJNAR4lGrUVNSeztJQIU8HLOvViM4UDUCKsFkHLaS5QwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFORq+cH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFORq+cH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C9CC4CED2
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731551753;
	bh=S+d3FjS7YcEzhrpHD/CmSqrVdmJ47LGD9qgJDfdkohw=;
	h=To:Subject:From:Date:From;
	b=gFORq+cH7TPk7bYPh7jkSrSVYSjHlmAJlD4fumnWl+M0FDOLvo/lQf5yWC7C5eWvM
	 0vzVQsNcsOCKTHoGi6SXYAii+NC0j9gJNJ+gc+Q+5Siyc/nKjBWNkWtgwLnPsfBSM1
	 AZMG48wtSdi3gqQlHCC0Oq3VKLdx0WzcxDjMew/JMtACvpqQCex/lfbiHzizjH6oOn
	 9GxUYq/kWRPwMu9nqbMCfcFiivmjVYtyHlJBbB8XQtXVaCQne8ATrzBAdsPQrxJIYu
	 /rBY6h6DFCoLS+TmZQZopD2s1DEWWp11E8a4IbJg/nb6/m2UxO1+x+Y44MaGc+ejgS
	 sgIr7nAqFMA3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BF8D637D6
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173155175360.7368.15944265518211750373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2920dd25225567c378d6737dfc3370a8253bbe026cdde0a982c832fa52e8fb2
Date: Thu, 14 Nov 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731551753
