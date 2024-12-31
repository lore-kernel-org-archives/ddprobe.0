Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1AD1DA3D
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735607754; cv=none; b=M4QryIuHh0Lf3Rp8wa02ngY4p0Pee+Dqza7IIDUcVTJP+5drmADuBP0Meyd3Or3mw8mUR1wUCUEif3/xKEEQMRzOERQrbx9VCAkaVGb88xnvwG4ac5RoInl8IeH4zfymt0W6e0UEnrZC1Sxz9y5G8PkfpKjzdZ+CLjWaKKTTJwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735607754; c=relaxed/simple;
	bh=hkcMc78zJmGXZ0lUeBcATt2BW8qZPl7jvy7VddoySPw=;
	h=To:Subject:From:Message-Id:Date; b=k5zweeKB/5ZYRy0h6c2fYgz3n9CVuLQwSo9BaK4Ja85GWZgG3OYH8OljLWPWvfiKj63cgOmWXS8oQEb5JWCQOI/OEzhdGXr4VorCgq8UJClvOuEzwVTLPWa5QSYVd+GwCV6MeduGAaYEUAvicB+8Oil3InWpSsxUzz63VnrAdOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oExHyQ0z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oExHyQ0z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3CDC4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735607753;
	bh=hkcMc78zJmGXZ0lUeBcATt2BW8qZPl7jvy7VddoySPw=;
	h=To:Subject:From:Date:From;
	b=oExHyQ0zOIQwirG0CcWxUDluqOXRGy6QsjM8gYr8YXGr3WCAGjUUGkwD85aGqk8Pe
	 LU6IA+Sa6xAHmtHFb5CGQ2S1pQ52FC4+xzSQctjx12rP57V+DyNAwscZlMOX83M+jP
	 qNvSZkOZsTtfBuzuPyrnAuRt0AWRcSkyo05kMy1F6ksJTwV4JhEDfWIFGQumSZ4ADk
	 HJNPp5lHtbBDGDAGqaL6RPgE97FAY9znps2x7hGCVVWPZqizWYP5oK4v/s3bJ1Fyxk
	 OrLP2IfYVGOAfiGK0ri08eYHhjFfrc5nMH4SRC6z+K/2Rk1Q0pIx7YJd0I4udk7erv
	 sn2ODcikpWDTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958E0E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173560775360.32609.12256665841909296987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d17c1dbcd545ee63acf98975edae376a4fb15d9d0136f7eecbc0e094a2c7a1
Date: Tue, 31 Dec 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735607753
