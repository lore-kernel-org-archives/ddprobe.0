Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648923C0C
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 01:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717205063; cv=none; b=U6nWjg4APHJc+tGZ75WSjho7emxroKfvu4iix+WzApguoZbniFl5xD+4YVvl+HR0HjUKvqvt/3zEABx526/7OMqSv9Xf0Z8XcuIwrZ90GbR9rFtqD5R/vzrbZ66SdbSr7i2MU/lFZZIRuZRa6S4njqK5oVqJGizpvToAT4uvDHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717205063; c=relaxed/simple;
	bh=cVQT5WfxVwcfXaNhvhFqRcXcq+i+GQZY+3W7rNeoGyE=;
	h=To:Subject:From:Message-Id:Date; b=L7mStuq3DRicoxIL/7XBsopoUhb3+nh46CGdShiR/nr5Tmh/QAZb3dnx1L06YzJoE5iG1m9i8xqdQ1fezNKGPqVglHy4/0+T5LvQx6acFNjmwqaNDp8/2nc/y90pfc2EljFBl7cioiuviLjnxEltihr7HdPEKZ4vmfyc2lom4h8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tg76p4hW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tg76p4hW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA397C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 01:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717205063;
	bh=cVQT5WfxVwcfXaNhvhFqRcXcq+i+GQZY+3W7rNeoGyE=;
	h=To:Subject:From:Date:From;
	b=tg76p4hWiCpdMsaRcxEYBh0DRZQEO/tTUkXR7qRN6KafZjR8rFoxA1zFtaltU4VZh
	 +6YeTVImpesiIaW3+6ueJsfeIwgmqOVrjYJIgsmdsYsBEZOKtR/V9KP8jeGegJfJPG
	 SlSaIao1JjIezSyykvCUf+6i0tU0Zanf8LXFHj1qVE7W/UURCeuvrqV481+O/ETl+u
	 k8aG3dVcDs1cBR0KfodVmi/6HjyqrE3ALTlng2XKUYPMrc9KJb7Lk50QAjYsWqieMf
	 kcxkJHyNRog7URAY6P2GFMrl6D+72cn4SmYlzIePQ1Reys4A5UZooRQbd7DQPeque5
	 8CKV6+rRCpF/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C34C9C25B75
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 01:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171720506276.29297.4755054216508817203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f17ba80a29390aa7adf65332d1a55914021af7e3daf788ecdc54d45b2a02cdba
Date: Sat, 01 Jun 2024 01:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717205062
