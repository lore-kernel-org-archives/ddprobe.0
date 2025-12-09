Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2074F2DF13E
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 22:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765320774; cv=none; b=FcATn8GnHh6SRfPrkO/Sxl9Gbj5Pu3Qbfj5GcLa/r6CPLeXQ+fMR5d3c2AXDe3ZP0KivwU+tSXnnyT+CMTQv5mPK4ADvp+jWQT3JbZSEUbOg+BPcufVeDhevsOlkOpu/6RUTLg5C3ddJVGM6ZIxGwG80l3HjtS3rFN6jxixawys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765320774; c=relaxed/simple;
	bh=G2fK/AIQXYkRrv1bdFGLdUZ3F+yGiIK+cvEO84pxGYQ=;
	h=To:Subject:From:Message-Id:Date; b=DZdPp1wG/E5MKoJpusBMC+t0MPuI8wdu+QtKRO7Yb/XTTiXsuzkSeQ8jsGoGn/AyS/o8Hfu554k84bgY+c2Qgd8FEixNq5zVr4ypsIJB7P9cFmNHHZnt/aycVqoDkDHS2FcTrMHI19CRqHN2BauRtVnnwT5eZGUYe+0XLa7dt78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8aK9jvJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8aK9jvJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5020C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 22:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765320773;
	bh=G2fK/AIQXYkRrv1bdFGLdUZ3F+yGiIK+cvEO84pxGYQ=;
	h=To:Subject:From:Date:From;
	b=f8aK9jvJIsGx+td8APa/4yf/uDwIyLurheRdiwGE0lI9oeBAajdKCKh3QTxTO53FE
	 EFXfihzXpFzb4b/+JpI2E5pwe9CWWCAqDnBU6pfsWI447dzivzaspzJTwcms5HGnJn
	 OsInLcVYqjTZMrFpnQaTaJgZbly6tugzpKfhStn8C+54JfAUjt6FE8ecRAQBMVs31e
	 BU33nLlqFmBjH7xvPgePkXmh4BeXQkHcUilhzRNFz08yeDaSHZnaXY8ZYv9Sn+Pyaz
	 mJQjIy/agPgXnxW/UwVL3zgYJobFwDgD0vCQ0/9YDQheBcjqLiq2jmP3CGp0AYerUz
	 jxipstpCVeQRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917A2D3B9A4
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 22:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176532077358.15918.16157873603734240321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded62d7f04965beface10ffae3af73c63192b52528f9e92e485f8594fa76a6df
Date: Tue, 09 Dec 2025 22:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765320773
