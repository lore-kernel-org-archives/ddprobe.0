Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298AF239E9D
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 13:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764165174; cv=none; b=GYMdOqHrgn88YGgmw0mvcJ5VIjABvmJfUHf8LqzQPW6+llCW+pmRM/3IewRx3F5zvbMRqedc2Ht3HuGg1f8D4UgrCxH3vrRYPgg+b48x+EFT95OB+EL6LkX5nAyXTUaj+kyAlyPbq4SeIV/3+Ypaq7SFGxSdP61fyKGw+Lb3xf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764165174; c=relaxed/simple;
	bh=PvxjsiwJNbkvzCsYqWPgS2xTWFlJG69+wNL4HUigu+U=;
	h=To:Subject:From:Message-Id:Date; b=rdP5CAK1pOuCUqQg0IUKBBUd7tCtV795GykKo2OyE+bGMRsapDADx5+IGe4nnqzIBe4dVPGFth8vf43XShcGCtkq7lwmvES3mDYz4YRHr1TEROT9KLPT9VjrMLUVRTMtYlMoyMMX2LGt3zYoetmOGbBNgbEa7TnAHetRQOeQFjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmjZZrTT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmjZZrTT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E13C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 13:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764165173;
	bh=PvxjsiwJNbkvzCsYqWPgS2xTWFlJG69+wNL4HUigu+U=;
	h=To:Subject:From:Date:From;
	b=fmjZZrTTDrsPl8vqcZGeMpbzk5EVwmD6rutCNUn0zCfdtbJevqa7thY4fASdJdm+c
	 4rICrgY8T5XWH4FBJgC+JjvNIk2rJgGmDPTg1BI4xBGiLectk16JnxnUBGdbVuyN5s
	 xT53Zes8PO81uucIUtiDTmtdF6bJ6UZAOL4lpX5w32TVNYm64yqkOrMSqILzIrT3CS
	 RV7KrkbKbGCEGMJQ8+5uYKHMVZNXsuCcxf+cpdL6YndTtbLgGUd8ALKMd4g3X4Jtkr
	 XYfffGsKN/M+VpxO8UNMdYoqShK9mkiHnBzUjLBTggwq5kKN7ORi6j71jr7TSoyxys
	 kz92PBPkZ4+PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9088AD10F51
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 13:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176416517358.14071.773887661938147806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4cfda7698a84ad751d1cec49e0b1ac3420268ab3d0a6befa0cd0772f07d9d44
Date: Wed, 26 Nov 2025 13:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764165173
