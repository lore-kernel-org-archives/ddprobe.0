Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DEB30D3ED
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 22:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781561194; cv=none; b=MHF+LwHf/6YN6E+KySEW9BEeuNUEkOSAsKk6f3YJ0F/3qR+cBjt0BSJUTuQoR7DuMpwMjjjNlctzNbbhT44GxlAyjOSEG/iXf4Sb5a1iL1Skhc00RMHjSvvZUEgUCSv8H1tPVoGKWKlpcls+faUbmam/bUny0ub4jcGV8/djKh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781561194; c=relaxed/simple;
	bh=OTAAAw6j35QSrSeCyGYOGQmJDZxqm0YdziP4gRxFK58=;
	h=To:Subject:From:Message-Id:Date; b=pNosYCdfxxbl7fQ6Aj+8teMKne7kmevszefJ1/I8ch8SfVqNguVrfwez3sp86L0TnUat5ZgHn6YGAQCRMv/dEPS746HDZM04PvLMRWj8GZD1x87WO++Wg6EHYIA/zLPaCKJv/laSb6QqN4m9Dm7FDEbmH6Gz26mRE5YbsF4bru4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoK8BYOX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoK8BYOX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA7C0C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 22:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781561193;
	bh=OTAAAw6j35QSrSeCyGYOGQmJDZxqm0YdziP4gRxFK58=;
	h=To:Subject:From:Date:From;
	b=AoK8BYOXhJ8aGKchij8DyOuCzd1RWdlgqhFThavU9rFMz4jNHpfhMuXZjyTSxuSlu
	 VxndfFOH7B1r9nOkM4UHFoUGC4b2cEcFMXIjQ+6Q1sHx0SSqeujRslw2HEygQUMad+
	 sM3iLI/e2+w8ghK7/B4BtcN/gjjhCRpC5m4+ioCWEjs1VYEfDBY8D2u3suhXoFjV+j
	 uOd022iOXbOG8lzS0abkzEX3qtgrJZpHgQyqJe3n6ryIbTB3pHgB/9qOU4EdTNg5+z
	 894sRYVdMJwU3II1AF4dKxpHWhv2/2qqzUuXMANG8e//pdd+Sa/j97yjX9n1Fpoeb9
	 +rxocm4nGRmQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECDECD98DE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 22:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178156119369.27957.9769144338929946746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 093fa1f0a4153253e314974811f6bf6e3ba0a4c99442bbfdc516fbcb802ea88c
Date: Mon, 15 Jun 2026 22:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781561193
