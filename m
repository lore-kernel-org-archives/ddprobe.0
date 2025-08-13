Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1521EA7DD
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755099594; cv=none; b=Mn0btd9gmeRdNwVTf0I5Zvdvi7ASsH7RvHzZ1oYbPdGoj//CqKtTXuogNPnFeTFB/sgfF9PPJiGZxArTe9+ODYxDYdoyf5JhTTBCeZ1zkohBmVnDW694hh8PMrUnXfSnawn++2fOm+b3HjW7JIsSjLwdl7iwe6eDp/87rXk/iYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755099594; c=relaxed/simple;
	bh=R6Wi0QMHfaPAjaGGB9OKDbEGLBR8o26I9j/70D6yxmw=;
	h=To:Subject:From:Message-Id:Date; b=ZxBFVHuzgEjF4j2CykTHt2kBIqkC6TyPfaZKxypvbotfS49tI+SSwjeMIdtF2+yrkx2Ca7mhcG5DM1nTfSy4AUd2M5wEfo5eUJebPJvczDZUHyW3ZtlAMnEkx1jN0a/yGUvZRuKMEa+kCS7g88gn1jOI3UX3X+MB+LxvB/gqCfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dlNSAsid; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dlNSAsid"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C37C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755099593;
	bh=R6Wi0QMHfaPAjaGGB9OKDbEGLBR8o26I9j/70D6yxmw=;
	h=To:Subject:From:Date:From;
	b=dlNSAsidRXwVBJecxIZ9mQpe9HZ8P3JXj/KlM8e4ylxbtA3YGA+8ervx0g6fZxJaD
	 1pcr6uHe+9kQGCldiDzZVN0/SJWqSnW6gJ65QqKqM6D7mGz1goFxgnLb7k26AD4f8+
	 FcYOdr+vOupFB8EHBXZnVG661mMnNvqaY2gv1C0HxzYp+pAqrdwX2k/558C/kDPA2c
	 BTGInDMF6p9Ip5GCYH6Is8KcQ3Vb8Tkuz66CRR81RXMRGTafIg2sXbPn7y/rEzzudN
	 Vogahy+4mRFdfg4Yl9rrviD7rLRYbMsvAnS9wiAjdgSR8zxzS+/1Gg6Od5JJaggPTf
	 5fM4qgQ5YDMOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3C3C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175509959357.17592.8922197178408183836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98c3e47aa0b3529b51a2fe4bb6a47db89c7338b03894a0c3fe6ff501751adb45
Date: Wed, 13 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755099593
