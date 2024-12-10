Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE4F22ACC6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733810154; cv=none; b=fDOBGEwTQEr4t26/SAo3iVX3tJPAUtAFDPPkzOteVqQv7hSVZ7Lhjgrippx7zKrQj2OK2hUbN3bmJry8OE3Y8RxzGsyVaqajcm5jmaNQAnl2UnxI4dh3Jfet+bXqVllJR64wm4FUs7eXXoTPihQoJ3jn81qftDMh1i0KzHAazVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733810154; c=relaxed/simple;
	bh=Jt4Z62FZWGsz06BdCZnikp7ZL0RjEeYiOxgEi5Tgj8M=;
	h=To:Subject:From:Message-Id:Date; b=B1cosVyiuiduC3E6TtjPsvH0rXrSKJSc3a39U2sUSCfjsJYV1jJ3GBCBZk/coFC1VaC6xXLvdClyksHcdTYJCGkKN/evSfVXXmAh7OzvHFy/4Mpawwya4dj+QHHxw32RCXJV2B/hxZDo4IloPMU07PW7RwS16Ii7LNdnBcn0pUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJvuFrbz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJvuFrbz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB20DC4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733810153;
	bh=Jt4Z62FZWGsz06BdCZnikp7ZL0RjEeYiOxgEi5Tgj8M=;
	h=To:Subject:From:Date:From;
	b=WJvuFrbzayTo1EI7nztlyfW5qnJja7fFdeHI1aETXslFfEgoXGXtdbuU7U3U9Wty7
	 +YF5qpDhMauinxX57ACVpNfyoseo0ET0aTlcQ/JcCXi6/tmTVieIrTqJAOGh2snnWd
	 +qwJs03r5+DRl7Se0kTk8bCtUWacZswnL1lpwdwXOvXObkiRJcoUQFD2eyoMVjfG3W
	 kKheUMTYaHY5wuQZDOms61viqJIi9XnB0H8FtOLGzQI8doLQ5ETmdd0pHLGPj/CGyw
	 ErNIozC0J9IhVpvKkVJ6Vvo3r2+YrfFtnaGYuqp56XJBM9wCcg6hNHnyVqvwg74yJ0
	 M+ABBybearGMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967E8E7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173381015360.25813.4164830068256508440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc8d04dc187800f88ac0f9b3a21c52ad23626f7c1bbcbb881b6e5ea272b6c248
Date: Tue, 10 Dec 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733810153
