Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1135614F61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705823897; cv=none; b=Bx/rHjNOdwkbx94P2KoIFVpM0/D9/AvlzstPs62nBhS7gVXkL4bgGpFJHX5hHpyAo1koQr6CGwUvcu5/CQLHxN5PUBNirurpjKiZn1Gjq+fclrHWiirDMbE+TnpdBMPlErMe08TJIcY2VXCsWel8sayQRX8y/4OL+Xyydl3hlHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705823897; c=relaxed/simple;
	bh=8ZP5i8KmKBm2vthAQJYekRQ2uhwO0qBS7mNytTCDvD8=;
	h=To:Subject:From:Message-Id:Date; b=CSYNhfhtVVt3wYpCS5G0KwhvAcsOodAy1BNWelVe8xnPkRh4ruVGDFF/Ci1yPiym5ACPXmRY3+CFz+MaU+GkMmfUBlexBKS43+cL38OOaVqjO6DpdAZCxxRpO8kYRD6my1jQAjvQ+1ZQ4+yTHXhT4kxmdwoPb56cAb3V1ijvyCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWLIY83+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWLIY83+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82B0FC433F1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705823896;
	bh=8ZP5i8KmKBm2vthAQJYekRQ2uhwO0qBS7mNytTCDvD8=;
	h=To:Subject:From:Date:From;
	b=NWLIY83+DjDGDcj7fFbpTmujn0OAvENt/e3rbAzRqCreBF0G4wZfAL60YQg2N+UM+
	 0QnOCH1EG/FQ7WOUHawgiqnTxhU4oV6Yuzn7O2RHQIWOhb/gDUhs+QCMwktVc8SizC
	 9ENHZQ606oerSkAnTiys7X4X1dY0AYgBW8XNGipE6+C75uecw7KlK4KlYycwvwWQBD
	 oqTJOoIxl1UyXfFuAh372ddcSCNU9uDrrFCHSN9DuHyDszp0PTPYxQnz0c97xJbagt
	 I3jb5jWhT9o14+kXDV6t13e8zrf9Omb4a0kerrxJDjXQ2jUkoqnqzizgMcrrGIWK4j
	 OuRQW0L1q2ftQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A2D3C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170582389640.27269.12508839249504141138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e0d13ea07e4b04ba26d537447e40b3f00a79d2da27c4254ad8d56060f4579a8
Date: Sun, 21 Jan 2024 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705823896
