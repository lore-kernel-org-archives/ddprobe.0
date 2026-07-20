Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72A13449999
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 17:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784570314; cv=none; b=Dhji/FSGkYZhhlzbdnrCt6PKRNjZYt24FEv+MiTfhm1twczQUvb3JneRzEFDvC9hdUnY46AaX+zR8MbI3chbOVuIAW8g9VMJHxjWiYicecqEzSwlQ0e9/6uZx3bidHmmR0Ih2+Rpg5kmKmygn+XUdSor80ZUs3SqTEAajkjdm+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784570314; c=relaxed/simple;
	bh=tPxwrybp0At/OJc/k/rUUhJipChY6bUywWyo7xRYwTQ=;
	h=To:Subject:From:Message-Id:Date; b=XZapyptgz/42RhmQPFdS3VygMKBExMw72bA7h+xo6Y23cA6sK4O5COkEolZVqAHuMjdQcZ28sS8tb1O8YbdNvhcRJGKj2kEGOrbPZf4yqNdYPlc5te1LUPfFVS/dXVRfIHdkIb5KTTa2FTmP5AavGmyz2GXfzwtRwrgMNbE1OWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2nND22U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2nND22U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6452C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 17:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784570313;
	bh=tPxwrybp0At/OJc/k/rUUhJipChY6bUywWyo7xRYwTQ=;
	h=To:Subject:From:Date:From;
	b=Z2nND22Uukb1m/tGjYWy+zyWXLS4PzOL9v4dtzjXoJg7Cc6RqbnI4B/qArs7hWRhc
	 0Nu0VzkxeDjg/YfuH3VZYXYC26ghuc5xg0f8dElKJUeoqhR2DuKh/sg21RC0+lEemZ
	 qBdJ10NZw3C85vtvGrr6ueC6wUS/C1L+PVb1LehGIXZB1viI/9zJBT1eZDMrL8UiBC
	 sb1OcWKZKeXfV4nUfBIgHCahuOLblrdwt2zl91mam2BCm+H8mfA3Q0NwXm7OiDvMdM
	 JD5fabiSnKb81rFmUyfQoSQVEiwKSxNmxI2FSOJ25x6QEQwEy3KapFbdstwgz6q++4
	 dTVVHTYFnyB1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B78C44529
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 17:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178457031372.19060.12261773848942948545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ed73ca098234e0b6d999838fd7fcf105a0cd8acfd23061ea1a8f5feceb6590e
Date: Mon, 20 Jul 2026 17:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784570313
