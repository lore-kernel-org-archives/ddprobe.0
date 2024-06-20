Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6336643ABC
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 23:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718927423; cv=none; b=BaYKP95qBLowuK1wRx72aRolnuGvN1nZ9TkN6X5HFRU47lAkWtq1ImFwaxANVat1ucuYwwPzYBoLR91/nOVfwPOQZWw3fCBxqKW2iE/UhBAnYQ9a8gA+w2xyrxgXsO6gO6OQce8xfkp8lli8aRNZZWJYJmV0Fc2D0xVnx0cJrJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718927423; c=relaxed/simple;
	bh=uamy4Cpf7xjPiGE971WPpdWwty1VApfKUooZDdMjUyk=;
	h=To:Subject:From:Message-Id:Date; b=B8bsr99Nur9PMwMXo+9BQ4RPEwRNknS6O6r1SMK1P4fiKVOjbEOOZ1jXhZPvVqXiwJPjhQkmML9sBLl7M4jr6WZDi3rkCYkyjQPuN5LpRCq0HnAGxfVU+89qR77+rPW04YcwpgvhZCBqtIgWkeZaegxp3nSVEYJUdh5QXkRXG5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCcbcFBi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCcbcFBi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAA25C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 23:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718927423;
	bh=uamy4Cpf7xjPiGE971WPpdWwty1VApfKUooZDdMjUyk=;
	h=To:Subject:From:Date:From;
	b=aCcbcFBibZ8ZXNdMVfImxd3F+XrhZKyQqB1qQaJQGgB3DYXMzKH+Ec5H+quJYFmdt
	 FB52BHmMh4eQaViKBdFAzT4+/5eRynbsNzpKb4g/VTvKtityysqyGx9yzJs0IRk2ez
	 hp7McHCbU/rwbUnaIJTTiiCfpRnrDrRzqFtnpiGWgqVrxEF3elALqtne7i0XeokCOZ
	 FspsvcG0U8KBpNx3gF5Z9/fH/b/NdVUKnj92mBlaPUrOly6YT0YDl2v5j2W7Rs/Umy
	 71UlQP5970V2VKTM4Z36nDIlqmKt/E0cAEqFwSBNio42PNjyvEDdF0sYjzVBQcsvzZ
	 +b0p8pl5279HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC7ACC2BA18
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 23:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171892742279.7128.4175266109038030648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0927dc094babdba3730fec8648386f87c897ef48f9d0d73597bb7b5a1e1dc84a
Date: Thu, 20 Jun 2024 23:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718927422
