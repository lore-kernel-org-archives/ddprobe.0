Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F7A2FD1B6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769483634; cv=none; b=uoQpn1gkhgdrV6e4pdUthl2T6dv2wW4NH2MeKdyvs50gU1Cp7Fk7L4up8oXRQPc/L8VAyKCROnfNDy0TlkwxKN5uL2QScXJ0RpbUAHuOqKukycqja/0bdvD8q8VKVm5m/TiKRvqvXWhAk//oghyhkv1b9/0Iha1mG/fofJZDe0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769483634; c=relaxed/simple;
	bh=9O4z/ev/i70Y3stDcDa56y6iN0KbEF6WsdhqfvDXeLw=;
	h=To:Subject:From:Message-Id:Date; b=a+dj9JW9NIdJUyASwxak1ivBmEbnWZg88fXLYtVGACkWymuNc1qKxT9SNHhMhDBYwloDqupXCKe9ggI/cVI/xkAr4d/jlAHNGK4a1n6W74WZduvM1ydObkVXpzwa34fyuUJ1AmlNktEErRC/h7q3xbXwtKcjKaJ9fKGrm6mleyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3ixfxaJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3ixfxaJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A063EC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769483633;
	bh=9O4z/ev/i70Y3stDcDa56y6iN0KbEF6WsdhqfvDXeLw=;
	h=To:Subject:From:Date:From;
	b=C3ixfxaJhuGOssvyV1ZZQe9jJa5Hm4ibxv0d9hWOPqXECOzGq9yI06OocaM9OtJkD
	 a77W4rtFKthG9bf8x/ptdit9WJic0wdSXZj2QPUvXxVRxNfZzJyWJS6Z3cgdg0q09D
	 SfmNLgtFzKvfpc7RNhVzaEsjhv0DnwVEy8+3F7FEbQEZJvP8F8Ho9UWD91SFbSYNOt
	 cDgXQRKkVE/5hpnysfs3fnuPR5okw7Sh76c2M3Ghh5tWKCDvwIr4+hpZAJ9iyTV2jE
	 H+YmrJfzpdvr/0O6/jL+Vs4kQ8fnh/b/8ogEoY9ttQW4NFgJZYPvXHCj9Ew0yAK94A
	 jXtFHBzlLWxsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F438D25923
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176948363357.22951.14318452039802088141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 029ef1a1e352792c47b8b8d76e00ed87cf80fabf8dc87a8882028b02a21f8d90
Date: Tue, 27 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769483633
