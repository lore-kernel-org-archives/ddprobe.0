Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F23E25B0B3
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 06:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782024994; cv=none; b=NGiS5xUskFb2EsgjlMc1s6kIj415S5xWcxahU1iiqGXzsNc/0asRlvwbD0eGVXkW3nLvz1dJ2ylPWn0TYOOTfYZP8F8w0KGDJHdHqFjwQAjgjfX4ozDiCWRQALuywencXkx56z5wfNktJg2ZEWrsVcSQ3R84Y6iU3/PGgToxo88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782024994; c=relaxed/simple;
	bh=jszTaM1AJfWHAsJg+LukkK3gDEG9pS327rAKjhZG9MU=;
	h=To:Subject:From:Message-Id:Date; b=mxnK5Dh8q5NQVz8Xc8WxwB87KSYKNgzRyCGjZuHlC/p0ea9HwCzEZeUok3a3PhI1vgkjymC6pKhtbiZPWkBykGp+z+gfipi5996j5dH++/A1F/DA37TgV2B2WXGjPoynjRU64pm9H1bYTHDOzD3wxLyKLsCQKSfoAXOtVryELTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpxewIG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpxewIG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB200C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 06:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782024993;
	bh=jszTaM1AJfWHAsJg+LukkK3gDEG9pS327rAKjhZG9MU=;
	h=To:Subject:From:Date:From;
	b=ZpxewIG1+ySIptTWz4OikIj6cddltuno42y1+WoCqIQT18nF7Nia0iKI1gmNOaNFS
	 v0927ncdynf0eBVoRl5mhcWmMkKqH9fNPoUM9uirJ27g+8V7SFYSa78p2lyQnxBo3/
	 uCseIC61D04nj/+VdOsBl9YwQNmKhPsNuZNCqq8EK42QYsjCGyPlDlKofHukgsoOQ1
	 UQaYreJJ6UIkEaoEpvulr0BlVV8iaeeeSZ4mqbGD49yJEAkMv5UM1A+cvGoHLvZL1r
	 idlZ4ImQut1qSj6FIEl127HxpqjFs/I7XdkVL8yGtfJXBLlMLECLHbEeLnjbQbyyOy
	 AQ6nMMwH+E/Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0667CDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 06:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178202499368.30888.4503675234180234053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab4affc82b12800ee003226a9eed6586870d6675a9651d1b6773106cfab04b78
Date: Sun, 21 Jun 2026 06:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782024993
