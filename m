Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143B714D29B
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768734834; cv=none; b=GUa/o+AQ4u8tDW+B0KznStHQuMHLNirh58EhKOrR7qptY/8vsBVRGRWaaA+ClV0rNOyIkY07y4kgTxkl4jzqbvf6Dt538tefxfKcbCW+e32NgazG4+mogRpfihZMJe6kRjwkD9QdqmxXjnv5ioCYET15kwIChzmFou4JVT9egg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768734834; c=relaxed/simple;
	bh=2gw/gmOlXWIresGJysDaVDbWe+6L0cqJp3Zib0Uz1dU=;
	h=To:Subject:From:Message-Id:Date; b=BCd72v3qItxT51nfDopDg6RnH7R0M/xEyEFK963BhRYtNWuITgmd87Z95zwi8bjmL8gwMfHzRUu4pMGHCu6HwCxsIfBiw+QUhxxUbUuoOiQYFzz/JO6OYAYAGb4b7dGscGZ+j22bePl1jATQXKzp98TfMzuBIlJQQoSiaeNu1Bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ch1vkMJq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ch1vkMJq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B11C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768734833;
	bh=2gw/gmOlXWIresGJysDaVDbWe+6L0cqJp3Zib0Uz1dU=;
	h=To:Subject:From:Date:From;
	b=Ch1vkMJqVzOUBtxQPBYRBgFXkkNPVivunQNxDK25ynygjeddZIcaEN3fIWlDlemab
	 pqgymX3YP45ZNcqSsIk+e0dNDEv4DV3LmBxA1d+68pcLV57lWgXLQKvsqABSLWxKSW
	 Avt7S3OQ2d7j62CruNUJXZeYhiW6zMz77EYVsyXahW2c0GE6EthDIeZis6ZMiyCyu8
	 2Yo3OgI+vg571Rd0gF4mHjLDL/Hd5qs9tY4SCkQn6b0fJc0446C1mdei90VeMZ8/jA
	 DASekY10D9TGgaI4Tp4gQhVngtQm7lHO2LHc119zNL4E8bDWAQlJoXmXEA+omxYL3F
	 6wiEDmO0IX3EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F445C9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176873483357.22364.1465155395579819588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cfdbca546009f6c458148a4369f2af5c47b7d6254015d9e8f32ccf4c2e6c11d
Date: Sun, 18 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768734833
