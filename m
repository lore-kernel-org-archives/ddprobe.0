Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1DC2E7BD3
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768746234; cv=none; b=pOg2EG9HlU3B7bgQ/ewkn9aLZjkqf9WIE5ZpeHVesfxhLI6E9klf1984cmhCNctlM44F9NvZeu65LRnx5yyG+gn0XHHfxTLIA3yhTDI42Q0oIbrNaMkF/xyMSuNAs5sJyYg+GRBRtD25Hd8BpewfsLVpR2uTCpcs2Rpg3FPM9QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768746234; c=relaxed/simple;
	bh=xrcjiH8GpZgBjCMYbKG2GCNIIy94M2K1VnXGVu/6b8Q=;
	h=To:Subject:From:Message-Id:Date; b=KipaVmoh4CMBtDeGUbLhACyoWOh5Sk68h5tCni5I7TWGTwEDugqjXKTlHAW9Ohb3ycO4EOYeJdbrUlE6ZyqrxHtGqRK4tF2iGn0KX+/qiHX3ko5AYwb4NGwd9urFjMXrLdVUxwJlggqpsfNsqdyh3XKXnSyIv8em44WOefdCau4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IfG/CS4f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IfG/CS4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A3BC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768746233;
	bh=xrcjiH8GpZgBjCMYbKG2GCNIIy94M2K1VnXGVu/6b8Q=;
	h=To:Subject:From:Date:From;
	b=IfG/CS4f4MNF+MHsiznmscGnJkJm81WtVDEJUC9S1mUG/ffGz41p6eVWhlDPMsb9L
	 GEzSFt2vE+9qZ3cgtj2nGsnpRhSZsRmhhR9RjZyHbfXTL8joSyR/hauVDvzfuZH+oG
	 Bgjk5XqHQv6V/fP0wm+W27bnW+wWlpSBx9yVH54N66ALaOE35RxnOxe2PEkIHoa9Xz
	 HHNaPWTMWuyF78SKXNIBuGX8ecHpYPm27GQraUYmVNZhIQKGkIR7GlZe5j+7m151oH
	 wQqUxWZByx6BJ0S/9Vk9Dz4LRIFGgEErLBd8g/uJOuaf95tTOmG30XRtyYODh5k8f2
	 w9Ve5j7P8Mb5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927B5C9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176874623357.8716.18136177810946057459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c04aa162d5bdde63a77b7ba2cb6d81c1e01fe0e0eeab8b029188596212efcc
Date: Sun, 18 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768746233
