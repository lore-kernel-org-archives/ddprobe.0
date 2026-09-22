Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50ED732C8B
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790043034; cv=none; b=SeAWylFGNwo7OADxGyc/kCY3eDq4M+SiIZek8Mp5Hrc6o+2QjtAgtmodMOH9T3gxVY7RAnOuQBqXKuj3U1EjH7DJMYl+KZsjGT1QlU+zE5ZYjHRjYf6eiO8GnqOGO6wI5CF7zWTt/tnLUL31sYsKn60tP46yRD45GmLMAPj99EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790043034; c=relaxed/simple;
	bh=Zcgf28xWCk96v/U5hXKAo9ih4sV6szsOik6MKi20fig=;
	h=To:Subject:From:Message-Id:Date; b=VteyPIMjEgYXdmZnLGgXioXazXUIcftYBEKn8oT2a669GcP4QGMNJQG/S2tXil/9D/EqmGn55Wa0eLuuetIEMNMp9MKUAw73OtyvOzVp8es2C0UjC6r/HGBMT9WuvYZ3NfBiGk5NQfIH/DN2hTF60zQhnxkwU/E7enxKZDrvsvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=em+c8uA+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="em+c8uA+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AF9C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790043033;
	bh=Zcgf28xWCk96v/U5hXKAo9ih4sV6szsOik6MKi20fig=;
	h=To:Subject:From:Date:From;
	b=em+c8uA+Pab0jRW1bxkQx9O7blPIAh9o5BI5yUJL4RynY/+TBATgF99cKZhJWNt8/
	 2HN1AWdxwJG3NnZlVVTsdLrPO+8N9C359tMkoeb++2S/PLhfSf+8pOV0YXwMgDn2nV
	 v/QB3fHVOwSPPxsFmD/m/Z8IXvRAaiTcHyCD0GCBL0/NQ70AKfbzdpvi4u9QXY+lsw
	 jIe1a8RNwNEUKdRDVr27/QFsBV5SeqBL6rhh47wrHcGHFNvABfnI551S5urJPvmLqz
	 M78Xxcqn6GHX86GdBgMmpFeJW5rzQcxMpbON7IJ+vT1j8ZdfLqBDCzXxGzHCpPA7pP
	 zsUr+B4RtcO5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF439C982F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179004303368.30326.13064681634558749718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c5f60e1c8883a16d65282d7f6b58f671ff5477730dc796dad26e8facab6b3f4
Date: Tue, 22 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790043033
