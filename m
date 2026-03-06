Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE7D36C0AA
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772816094; cv=none; b=gh8b6xz3lX91LoQ1khGnCECeZ5HkFlbQwASRVWCvN1tlCfzpQ0mMQTYAel7Ll3UuDR7HYcWjddxAtkaaFjOd3wzyJUCAEFCpHNOunvgvAiFOZqEzYZLuKZFrn1AWxAjI5QE2AkQodOtz2qzRL6w2qJSvQzztF1akm+453YeBzbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772816094; c=relaxed/simple;
	bh=lA1LbMeFeYhwn0c4COj6/PXiEG/mabug6k3BtOgq6J0=;
	h=To:Subject:From:Message-Id:Date; b=GdMD34HbEfOQyXREtc/EewsNkNh33b22weWtykJne6n0BedZqBDZvfzwPhclIe3qXtozi8HeXsgae4RqnSGEwmEwY6MPXhPp4LOAfocz1xwk44XhYpQScuNiRuBMgcWhAQptHmIWPn/Q3NZvTaxLgCVxXqZtNAr7vPHC2CfgfA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OIHcHR1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OIHcHR1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AECC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772816093;
	bh=lA1LbMeFeYhwn0c4COj6/PXiEG/mabug6k3BtOgq6J0=;
	h=To:Subject:From:Date:From;
	b=OIHcHR1+EJaYckUr8Yc+u8cr88DoySwmvqEg67fEGJUjRGK8LLcu4+YYPNxK4MDDC
	 luP1INp15V5wWDFfofNeKJASNg3toDJtQgySn6k8n8At9COS0Te3TVkQNotndYoEJn
	 2lYUGjru9y6rWXxMjiDTncwLy7rXg/AbzdH8LK5iq30Xin/Pct8JjeSbPYrvHUlodp
	 jgHzd0VIyMoTZAKARadJyv6lar/VedQnUtFAnvPLsnwt03OR3C53WY78FmWlNw5TIR
	 wSUouTvX5C85FHRkwiTWryLSQj2S36i4JT7EvEKFOK0UbdAmbO97wJF1YqAy+MwObw
	 xXj2aF+UFyYow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F969FCB625
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177281609357.16327.10364753893559303782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f3f856c4a9f85896ba75cccca639c7d37095aa76b2454d9896e52aa6c4e9b83
Date: Fri, 06 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772816093
