Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C2126F47D
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755517794; cv=none; b=bTGwhY8HBmRDlR/16FI8nSLAobkXvTpzX6oEno2HPKhFEu6qW5xKTuzYuJ5NHvVJYZ0O1CykdoCqdKgxBNhP6VhrFajToNCj+VyL0zv7qF2wpHBKsZGgLtUtVeAuYHjRRUkkooEFjnokzQTo6nkivpF97iTOoTuKK6xtOMxcckM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755517794; c=relaxed/simple;
	bh=E/HNHrVyDyZYhTLWHTjgB+DkgsFhIrdzyFr+BmlEQS4=;
	h=To:Subject:From:Message-Id:Date; b=CnbFxNYq5f0MTqRcNb9Cq4oEzKoG/wfgXM313haCQmryTskG5VzpslC1IA8u+bNpXv6skhAeHxv3I03Sp9RFHrZ0XEQsuMXp0ps75iwA9mB636ZrmLiboP9m8DN+suWej5otiDNLdJ1Fz3MFw3p0+dScxW0Xyx7JSzBE15dTOIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AD2OOQ0U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AD2OOQ0U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F876C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755517793;
	bh=E/HNHrVyDyZYhTLWHTjgB+DkgsFhIrdzyFr+BmlEQS4=;
	h=To:Subject:From:Date:From;
	b=AD2OOQ0UcVm0iKN0RqDuTXR3b+W5Bg0W4BwyryrOdeKw/yUa+638vtRDu+oKosO1g
	 yS5m8p3lngWnb77X0q020LxPcxPIDBnISHR0zDOZ3/sbbXxXzhYjRhr9mNNQfQYfGQ
	 6VP/BWfuk327fhiRULsb2iMfLP8yDoLahOfheRlCqc+ZKB6kWu41P3LRHQrr7gzakp
	 VDBO5bYmwIdQqxj8weFvsbSNhBMp8apCKWeW8kf9i8dDu4hJVVpchOptQQbrMSF69d
	 pV8jiQgj2kjgMpsVwsStWMdYjYYJTRHyL+MCufHbY6t1QKzYYhlGqhmFi2aOEVozTZ
	 9/RiMzgIGJRIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E707CA0EC0
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175551779357.25867.6656586365878929383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1004be886bf76d526fc71a81d801d4f101f90a29dc055d2e53d01f02afb8ff64
Date: Mon, 18 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755517793
