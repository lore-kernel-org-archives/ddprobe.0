Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0441DB124
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738581354; cv=none; b=d6GAtMyu0SOCmA5ZnYE08XKuB4mEnHTCbe0q2+JbTPeWWF9IpByaw0Apgl7dVdbW7GHHGQ3oR3XQFImpWjO/teun/9lQ5A4Eu67lR2GgTT44Ihirg0qgNpyXtm+bOaOLksXAnomE5Fy7zWt53QTP5H6O7wi8fJsf3lb07D+fomo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738581354; c=relaxed/simple;
	bh=98knAkzorgXeo0mtLgSZXZPeW1GfzUv7esXsoDUa528=;
	h=To:Subject:From:Message-Id:Date; b=lwQl3LgbUvQ8JTNuOqrKXQDiGdNNGvsZS8rwUJLCbWW90npggipUteP74inAXeH9fhdeo69JpCaHIwbaZmemwpSR+tber16AzoOvKvWl2y3T0WER+uCaGe3pKO6kE1tq4xr+Nq8vVHcG4UDzNxedmvQ0MLWZ7Vr6tXKwMj7ZdOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOQMXn1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOQMXn1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA049C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738581353;
	bh=98knAkzorgXeo0mtLgSZXZPeW1GfzUv7esXsoDUa528=;
	h=To:Subject:From:Date:From;
	b=DOQMXn1AbL3sC40NSB0LU8wIQ1rRdtjnGlwwA7KZzPDgL5BSRsNvLFQhG+Ysx5Stw
	 4HFGe9dYhUxzAYWh4Css5zvZwHn5s0G1ebRc0nXNmOYtN293RJmPFo4x01vGdWotTl
	 RxKItVB66V26dRrSBjXwZsaf6BOfiHgccHdPCVxm2/F8/mRXMhU+e5J2wu4F6+IklJ
	 aHevj8G37N7dlLoQaqxwH0ejJEK0RNfIi6+WRj8mjlBE7qBxAenRjUIiaUH51/y+Mg
	 2/mg0+D067yxp6ShBfDI5Lq8SzLPZycX4bppfS2exoOKMeShwRe3M5ibDbvekEPiCP
	 0E+8A3KL69+Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92585C02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173858135359.21762.10419628989356038554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea8bb1402d4a3ed7a388e888ac3710f8d9e17918215c30885ac382721b17ae7c
Date: Mon, 03 Feb 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738581353
