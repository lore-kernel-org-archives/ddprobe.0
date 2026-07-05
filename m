Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653EA26158C
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 17:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783271314; cv=none; b=m6eXYoYJ6JW7+q6YmJAtg0+nOuOAAN6xl4Rrvzdpeto6xFegUsnAvtVqH8oIvzbACB+kgXD5yet6oMragD9AOozThOQa3Wb8QSGlBBcrWHkkTAIi0/tfKPXalQR2xKug5pCB8JDQs4fWzgsn3sy+ayqZ++7nIVyWQFTKBXiiY18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783271314; c=relaxed/simple;
	bh=mUJzuJ7I3YWk/9HHX0K1ReBZEGperROY3Odux3v5sEs=;
	h=To:Subject:From:Message-Id:Date; b=SmjxuzETM/S1a8UFVzuxQ8WLeVKUbRdcvxUZ+EKLeUNqnSWdqQtkx+W06jUsa/1TqkY1VZ7XSrG5yaTvk3oPtDlTTns3wbQDjnLpouhIuTmaGwrph/k7H16MD+RJCsW4Vj7L51FKe5r2f+wxEstpHOMjzupKXxjTLceDzs4EymI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sxyel8IF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sxyel8IF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D52C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783271313;
	bh=mUJzuJ7I3YWk/9HHX0K1ReBZEGperROY3Odux3v5sEs=;
	h=To:Subject:From:Date:From;
	b=Sxyel8IFIrOtnme6kNTGidteRtcoejCkxMs9VbSKwK5HI6942QbNENp4poLaTKvfz
	 p4q7DVe8ZMYibmBT6PkQlXt7TtOOEvL2j3sQHkl5tIJeUADxfNFcA3jDzZwHdaz6lw
	 WXHAco+ZKHNrgQo2TnOR4RuANmp7vnS+tCUpZ+E+v1/d+EOkj3y25yyGKIaYyrYN6j
	 0amhmP+RNVOf6a7nlvvZ1/yA9BzaUFobYBqaTp+0MzS+hjMWP1vZfCc0G3RKYWp44A
	 kwxLr8rmkfl5tEfvzVoIKvQtp1oUDtua/oqDz1g3CTtl6DD4h4KzJXuPCCcgIRn9fI
	 oXgKdtnfgn1fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFCDC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 17:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178327131368.28596.10392606005454743442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deb666223ac6cb87f84f011521d0dff177bf533910e571e807d137ceda8c8367
Date: Sun, 05 Jul 2026 17:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783271313
