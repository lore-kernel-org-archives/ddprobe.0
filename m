Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C132F6187
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766675634; cv=none; b=FPUK5g10r4mwe3qu9qs8yUqMTTITF/Sf7SQUvj24Uo0igGBOR14R2yHX7N+VeY6LdZicdRfoTqO90n5DgUzN/jacdZMIbdyaRo304Gd2TBqwnYaTdgXruXCrYnT/DW8z9QFy44Vv6IcW2ruex1MPZ0iAjZkjkm9nN0UNz0+btXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766675634; c=relaxed/simple;
	bh=6F9JbWfLnfQ3tzIoEIVDCSFtrWO/QPPGcIn6jfl18XI=;
	h=To:Subject:From:Message-Id:Date; b=eM89rNOa8+M3E+mXlJ2tYRrgLYLq4dvD2gqiY/zWzfGU8SbBYaKM7IznbDr3uGgmucySkzoSDs0InL50sLTWGuGip2iPdbPo/n2kCx45ZzPYtTGxBB5kQN81q9nS+X8hRb6JKKhmpZefRdNE83VHej+p7Ld0EvneJltYbhG/uAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VgKYRqkn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VgKYRqkn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2801C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766675633;
	bh=6F9JbWfLnfQ3tzIoEIVDCSFtrWO/QPPGcIn6jfl18XI=;
	h=To:Subject:From:Date:From;
	b=VgKYRqknCU33++UPyGqNkJ7U8huVENg3jpQ/aJFB0KjgNoIWffXY2ncnitapgTt2J
	 IPYIB9QfEBtL6ID9Pc/sW8a1G1kYOxOTud6QS3LjsiT71KFtaoPQvqpOjdypRvhWUg
	 8zHsGrs28k9J84cjCC7Hei0UBPGC0BC3BJj5DGryvRaOi1PtFR3jCq3YQ2TXy03m3g
	 sUCJKaiIqZBG+dXphKU+HFz5OrFinYFo+jQwV6HIAm/H9qGWUUTW/orfag/ZK/ydm2
	 Ki2eZJZ61qr0ZoEeJlKVT+uQ10ItSZ7+5LxM2WDYffwi0x1Z6dj1yt85ymmoG5wTRv
	 3eUWgip0DybGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B4EE7AD60
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176667563358.32050.7405433950219446655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27d98bf03d60a98d1f1d7a0eff2b521e269a259eeb094f787e03a4b5db87dff
Date: Thu, 25 Dec 2025 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766675633
