Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11EE311CBA
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710599297; cv=none; b=BPyF48oAwI8a4movZN6LQwJRTpecOhwg//411f5wB1WQxUNNv/Ze3r/YFgzbUvWf0cZ/8Dnc6AHqrzu8NMbw+E8ADWBDdMfawKO7O59JBYi2h1Yq+Tu1k7uprEld4k3O6/wPI5nAPV5G2liOaYBfAbyDtZA4vhOomOrMpxlsOWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710599297; c=relaxed/simple;
	bh=Q+tWJ77QqUG6GzkupKWmIjMNbk5dkrMxlEHQW/8Kpio=;
	h=To:Subject:From:Message-Id:Date; b=VxIe1bqRifx2xc8Oqs/TE3l2xhgVWqMpBDnsULsfqD/Gn8jq8N6kDotC2PKP6/yZVc7BqXRXHvbS3H0EhFLsvCcqAbLsZyQQ05zoP2ByaslBo1hlN4UZEs+fUiMznv9Sei5HHAVCr0vEr//mQp5KrU57JawpQhyAMMbKPT/Prqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMuzcsAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMuzcsAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82400C433F1
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710599296;
	bh=Q+tWJ77QqUG6GzkupKWmIjMNbk5dkrMxlEHQW/8Kpio=;
	h=To:Subject:From:Date:From;
	b=dMuzcsAsDkiWNoNha8s5kGP3E0wTT/W1IewLRhCMj2cK1c/wL9MpTj9S7ugF1cCnA
	 H45XetSUmnYg5vF2QU46CDIaC0gikU/xGMlwizlRP8L4zoZi3UmTf/y19BL+pY/jcG
	 ZPmbPeVJwbSRE83sIGw96ctanAqoKDs1KwYv4Vev4xO2QRQg2z2AvIn/9poKFnlqOT
	 ezckio/PhEuKEj6eTqxxIm3dTUU4ZGz9ilfh4/U0y9h2+xnJE/ImJeTYq+mbGz6911
	 oColA+uZyP6QOCFp6FqUChJQeV1+qRz/pkZADYyNyEwcpNG0NMZp+lSadutsVmOx87
	 OcNaeUM0bzrrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 684BDC54E60
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171059929640.1194.8585731544713276862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 896c41c648e4ce255f7400d93719489041d7ac250fe409a66dd334c514a172bd
Date: Sat, 16 Mar 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710599296
