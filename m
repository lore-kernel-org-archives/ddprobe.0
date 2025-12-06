Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444B32745C
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 07:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765004574; cv=none; b=pU+r9uHagSYTQCLTmnzZokD9yTp8ncjvjWnthRzXPIvz5lMcqY/MH9q7RZWp++Hv34mbNaWA1GwhhWSU/JYhKXktjBmSwnwBHKBndelJ7yxx2iYEfuKyEQHk60BsbdPOF+EXcSFutyTQWWg1rOWMASyHcZjVYW6TzAbaXE7zTJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765004574; c=relaxed/simple;
	bh=X55dHYruvM+FbbCombo8ZOjFRbvCKxsWpet+Sr7+6HU=;
	h=To:Subject:From:Message-Id:Date; b=Y5fIjBI2KmLxHgJgzNpARkQT4Fx+X19uLuPAo/ZJr2TVYMru7a9etoH+oy6pQEAjnpJaSwBPcqE/8aHkPoOi5dM9dZm6E0CBRTyk9Ai6zuZnxi8vkkf66rMR3O1n/LvKL6AN/W7mlmqX258QOosxIp7Diz7gJd2kcuwws8GyGP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAq6DDZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAq6DDZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC33C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 07:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765004573;
	bh=X55dHYruvM+FbbCombo8ZOjFRbvCKxsWpet+Sr7+6HU=;
	h=To:Subject:From:Date:From;
	b=aAq6DDZBi/unVXAbF7tM5SIodZeL8GNQfxMHKV19pnOgMajHdCltbTUHk+DNe1ZLh
	 tPktsiGvjzAgZzGx7Om67v7i2oj2khjpUsZoblyg9o8JHw+fylNbIevoJaK3Q3VzxV
	 bkxK0ftqA/evDRIjHAeLbFL4tKnLrC0NxwoJhkMgMG7zCXMGndMQFbjlqzYb5KyP5Y
	 6Kc86Dlj4+j10gycy5UyFI9sssQ6ie4loEUYqAZkTXAu3xVp8h4hmWPyJeB+1IysOF
	 EX6Yd9F/4z9NcUhmvmLZ+mLNlLlZXm7ix1Z1bAnryz+Jf0UJQddiHeYjFr8wVVnLSS
	 OtjlNDpvuXIbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940C3D3ABF6
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 07:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176500457358.20825.8977992589792518220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32bd18b1f283c60f03193722fedc909565545b8e71e9ac0d0a37fdf91332844e
Date: Sat, 06 Dec 2025 07:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765004573
