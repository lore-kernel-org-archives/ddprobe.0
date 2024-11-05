Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327E71C07D9
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730804754; cv=none; b=Af7V6wFtj8m9EHIc60koQS5N6HL03rNnPhLGktl3QZZv8XGjNfevi/j2tRrB1XSjRqC13m83BZHfLqlVzXF1NUJxic9jr4NtnYdtlkDOj3oHgpFhAzWQT78hMV+fBjWiR6z9rb7cc+wpoyRxk7dr26AGHg+l8dPj8CEr8uMoMEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730804754; c=relaxed/simple;
	bh=EvBQ/cpg7GMlluBQ8drC+7CF6uMxnKHFGWlEuF6cST4=;
	h=To:Subject:From:Message-Id:Date; b=eNckaeI1JTHOMN/r+YvapuK84ShAgvUTNAUjyJwCTNdgURIoBiDUQd+XjRjFl+zni8kJ0Kp8RkS645/lnKJIkTNUOdNI0P42QM69MOlbUu1t0XflnhP+vS4X33ZeYe7rKkXzsHsul9EZs9WyK2WQ2wk5tZ69h3UJdrzAfJz8Dp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2foMXFK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2foMXFK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0AEC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730804753;
	bh=EvBQ/cpg7GMlluBQ8drC+7CF6uMxnKHFGWlEuF6cST4=;
	h=To:Subject:From:Date:From;
	b=K2foMXFKhJBiwccdS0nwEJ/0tR4p/wMtK1eZHDgArQHlJ2IA2d8Lj0/YvfbScrFMR
	 955778GoYI7mYaKJQqd+sq9hLKmL8qHNpUP2s2e31Z2HzrWAuoRUCBZPdap/e7Jzy+
	 t9Cnz21KgDnxRHmrwIWP6MnjOkaaptUo94tDY0Kdc1V8TP6qHRwqBKoChhWi/MaMDt
	 IC4Q6535rfLGiVCS6bylPlPnJjgLl9Ap41a/xfDe8lO2MKD0B7IrxFUkqMIgNiosyr
	 Tf8KwOmMBLUTnlmWb0IGJ0OPx181e31XYIhzztM4nepXMhCU5lSASzT/6EO6vrRCSa
	 eyT4jU8y+zjxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9977CD12680
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173080475360.18095.1835690443536391484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c77b7e7978754ce306cfaadc414606e098c49ed15bc320185d5c116661ca72c9
Date: Tue, 05 Nov 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730804753
