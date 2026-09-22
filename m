Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600685349A4
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790077834; cv=none; b=C2T/yYqn6w4ABKbWPkr3ShPF4DgTF8EncUDvg1uAcCFZXZzrqCwZmiwxJWMMYxEiS5XLhq4muwdL+ucKXxl1XqqSAT4xJONPPHjwHkQaO4Me+Xr1yyfrLACTGN9Tiu5UUhGj3F7PePQpd1oNc8YTouh8yZIU8lFLb7DXtwZZ6qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790077834; c=relaxed/simple;
	bh=FZYGRyGJe554lMgopKelgDQC6ANYb+1FohZ8w6YANtw=;
	h=To:Subject:From:Message-Id:Date; b=T3POYrxYlrwQR1nLp2oEK/y4gwqrC1ous3E6OsEv4PovGGbodZwuJrvo3OJWOHJLeJzNUGUhcI17vlARpI1zkQDjMb5XUwSdlY+v7rif2TjU+nyfFizGTZH0rkQI5AYfkVEdg4Oj2cTMAxcKf8hnXCYTIu4Nn2APOOHxijHFxTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zw0XkUSv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zw0XkUSv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6944C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790077833;
	bh=FZYGRyGJe554lMgopKelgDQC6ANYb+1FohZ8w6YANtw=;
	h=To:Subject:From:Date:From;
	b=Zw0XkUSv5bmNsuuoIzyPIYA6bmcQPwScidtHr1R/6P8QCspBbNKN1KODVSXtGLH8J
	 342f671W9GbrHEWV8DQT3LAUO4yDSNCQ+zCw+kaKCU5a6isKfjmsz8mAjv7lXMVeXb
	 sSWCz/CGzNrzILZBRy8tQ84ZEFqzfRt1qlzrPvxnbfGRF6e2kQ0WjNgM9sFXqvZO1T
	 KQsLL6bfOo0p/T+4RxowVWOnYSoV4PLr86WzWuzFrFGlb9M4Q7cO0kWlyXR0UYTaSd
	 P5peczcVx0TGgJSJvD6jNTz3u6S3kDDcromhSJmn3zXaRnw8GYqA+3M42fajDzSukx
	 QUAJjfUDjU2zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1733C982FF
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179007783369.13853.571930954383612780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd6a3dc7e1791235940c57423bcf27d1a5a2505d9307d80ee13048eb0da82af3
Date: Tue, 22 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790077833
