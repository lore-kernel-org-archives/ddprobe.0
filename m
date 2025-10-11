Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E942AD0D
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760215794; cv=none; b=P6cH9DFfDT+DJ69MK2HVNIDVFrR6CRUzQzyoz7D1+Kzhjr3AxP5LprSfZjnUf/TWhj87xFk23JExRS5oIa1lWZ7h2FmJQxTE26aKb8FraE/2Wp6xM8GtF9MfR+E4SkhwbFXc5UKEc5fZhIam1CtDjeDwMrHhqfIPwvP0B2U+slg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760215794; c=relaxed/simple;
	bh=pLcFhH7j7I2iu0Mki+6X4LEu5UyiMJ5yeD1nA0NwO5o=;
	h=To:Subject:From:Message-Id:Date; b=XdxCkB7CECaS/FtM3cMpJqwdL+MTFBulR4WXNVUOOr+O9vCsB+f3vfQoNaDAiSA3ADrLzpnbNPie7lzTNp3mFDvK9QpMSqSbeRazg9SI03g8mKZJwEKhNXzz+i2B2E18XhrvUvGqrrmXeHBCf5D8guPk87BZ1z6tZbPJ87QvvM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dT60IqQG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dT60IqQG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A902FC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760215793;
	bh=pLcFhH7j7I2iu0Mki+6X4LEu5UyiMJ5yeD1nA0NwO5o=;
	h=To:Subject:From:Date:From;
	b=dT60IqQG7C8Jba7BLn++/TgTuiXAhgfR5GRO7aoeE7oLG0MxwTTOGxh3p2eKStC20
	 qG7q+uF6Vm7bI3Q3vQEQmQBY+2XMWiZbYmO9gBD5yLyADzlh1Avon+29M99mOTnKrs
	 FANPlOSlTDpRkVa54DqVosu933t7R8SjCGX7SLGCj9bn9riKDq2/2PqeBVscX3v5Dd
	 NYMVHY7jdGBCyB9dBovCXozdOG4+KtHPmQ4zNaGAhVSmTxVX+6+RpW0khVqomu3cHg
	 Wk4r7z33pyDjMmMZQ6E21VRSx97qHzUJypTiseNj2oKrM3JrG2c5fWFaR7EPxD6KwI
	 KLPLyzsnCcHDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9658CCCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176021579358.27953.1596947044126940492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1135fb03da74b8d035b7103d55f4a449652b87797f33976319a0600364ef97e
Date: Sat, 11 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760215793
