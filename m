Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298C627E1D7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770396234; cv=none; b=DvkyH6Xor52LrawWH1po0I/1Gckn/rgyvAGOiMgin4wj93zYXkdF2K1JyUuBrgV3MVQFQp6MAwBoFWgzrt/Qtt+QLhTjX+IO1NyrS10A7qIr0LauMAFfp+M2PgIGH1X82EcIfYXlhl2ABkGqHm5lbWSpFOgK44Qvoftn448jOho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770396234; c=relaxed/simple;
	bh=y+NC9V4Ae7RhEdAJYZO2Bn5Wij7WK1wKLoQiXvem5UU=;
	h=To:Subject:From:Message-Id:Date; b=pv+OACnWK6Awk86JHX71K2ITs1+rz5rzKjqeuImeO9xw28jV57At/T+Mavc1PMnuL11wodVPxrwg2icZ8RXa35+3SOi3EZBFOB+S3dQ2z40jGO8SAMek0DbsWQRAzty6e9+CmUl/MPkGdI+A+pqihOdFJg0ulq3eYkeJMp4MoCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOlAiybQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOlAiybQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA517C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770396233;
	bh=y+NC9V4Ae7RhEdAJYZO2Bn5Wij7WK1wKLoQiXvem5UU=;
	h=To:Subject:From:Date:From;
	b=aOlAiybQ7NV67mxIQtnxGxKiv/n3dqKRBtrwY5JgbV9GBGJyAahngBym1/aIhyyBd
	 QTKaj4RQM0K1KQ/qQa8EsIyNdAOeir8b+Y3n4dlS6nXLogfh6608j2OwtinnDJc+pD
	 i5bkD3Y4T4u7YoKDLhcoZQhDe8Av/x+dUg83Jjxm+RafEBKw2SxlKhFmE09Bv/ch/F
	 njrn7ryjj39FPSUEIZ/4bIZ4jm/9vOMuyuLaHk8nVBDuWpZ1cJd3gqqJRB+scgcouo
	 W6snGj9/lkqbnL5xPJBuxCdeZTsp3ZHqO7QheLYpA4TbLjbmKcuFki/JiTR21yU794
	 6SY9KjCaS+xdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96492EE20B6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177039623360.19945.974933470846250861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 964ab26ecca1bc73ff90191a4e0f62cfcd2ac7bddbbf5df12b0410b6bf081cf7
Date: Fri, 06 Feb 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770396233
