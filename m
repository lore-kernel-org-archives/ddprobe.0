Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CE41DDC1D
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745074794; cv=none; b=GYOZa9jbwQRZ2OyCWaMuvjBhfdLNxyIObuZ2Kk7Ja7cznym0yDP3FADg2EpLDR7LbynL5XcysizW94ssInoy9Gw58o2AW9a3U4OTr23uQjK7O7kqToGHpNIKib752uMw/272+XzGxlUC7TWCqPendvsNeJU3jCY64ILzubohrf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745074794; c=relaxed/simple;
	bh=/ZEVE3xCciCF7O5galLrbQIUuWUnRni0qTC1NF41/2U=;
	h=To:Subject:From:Message-Id:Date; b=TIh6Be+csL7CsNBtOg2MavCkL/2KfjPDGInlTkCZg/gfkl1wpNyMyau3riYnqw0/CS4w5pLfJODs93C98V6J84mQeIy45dGZe/sG6WeLyIaZB8UYaKwyPNmfYDaFIWDvY8D2/ITsHZaWxpvbb8MYHEXHzTP9qrhtV2Wm5dxgxNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UP3XZbRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UP3XZbRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07D3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745074793;
	bh=/ZEVE3xCciCF7O5galLrbQIUuWUnRni0qTC1NF41/2U=;
	h=To:Subject:From:Date:From;
	b=UP3XZbRkvqwVAjLh72CRQjwdqw0MRf6tLr6ZeXaMguTwB3S9vUdo46HYSbNjJtBYe
	 bHgR0M3kJahdWiLo8OZCgnoaYzfHnHmYonhmf9J494KeQqLk7FeuzOtqt2k21bwpfb
	 fltEM4JBYO5qmmSVXZFDxmlZnp+zxPRzDPfZHy8zL2T0vd+TPBeTurJex4Ruv+T3Ui
	 NxOpA5/z7+lZwNO2L8ZBXnGm0ajlKCrASbpuB+XOejtZot17Jcrel+mMb4MJI9qzP3
	 /ZITlBwiMfZnNC3ily7gWCDmjwnnmRMIIbdcWi61RRaHzfBI26fdB6UDefoXgLtz25
	 AYZ1R9e2p8JuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B75AC369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174507479360.818.12937231842652496280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 715352f79731b191e5fd3cd9fd65074699612453e9101b3b1e032de0c15afc32
Date: Sat, 19 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745074793
