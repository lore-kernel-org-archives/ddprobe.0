Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121041E1DF0
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 12:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784637514; cv=none; b=s1TfFvfJaESlqOYmKGgGg6GebALyCoCyNPPmt/sdSetSNSLIY9V1HXV0dFKCLatemUiX9lmdvXXsklDk0U7FnDx9SDyrnK+eJLdVV8/AJRU/jJeSLIcHORukl3RShi0MepjivAELOqD5xWfFtyY7aV/d/508YWQ9YaB+j4SFrfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784637514; c=relaxed/simple;
	bh=dv7/o0XKb5/YprIj+Zqvks13sysYL8ST5JXhrlc7A0k=;
	h=To:Subject:From:Message-Id:Date; b=kTdoZIzJ0ycCn9NTlR5Yam6tkCwrrcoyiUyWISM9Dim7Hmukt4A/alPJYPAoyp3U7lNsG2b1tTNpm18AAR28rt5Sbnj89uTg9UENiTjXuY5DKAxLBroueR37Vzn0d76DsGwtl8iHDMqCwNYrsNGzmpArGISoP6CJbKJbUU9Xzh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CveqeviS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CveqeviS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8898C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784637513;
	bh=dv7/o0XKb5/YprIj+Zqvks13sysYL8ST5JXhrlc7A0k=;
	h=To:Subject:From:Date:From;
	b=CveqeviS7WvjWmfKeWrlcglWv9xBj8rUdZWFCQF6tg2t/5IF7sS1cN2n8GaK9zN1J
	 9QUCu5FoYlCYhhTyDS0BbRqNqjit0QFT6bPCqgGyVT9oiW6E7Gf9Rqbe+HdPbZUjkh
	 D3Ki5DcUrJwgCO6H5W7VFpAeDDNTr5QjPX+/FEVJlX4cngxH1Ryg+0kOEtHCBsCkvB
	 JR98i92UqKs1h30TLV9biczMByloroBxmA8LUsq+28G3Nyj45n0pwYGcacjMnPb+qe
	 cRodFLkAFxWlZ2YBnFud38B2tKuWAni1hGuOD2FmbVRIHl/xHT9qdhoNjbILQV6jHl
	 l0Iu5Yh294nvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B45F8C4452F
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 12:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178463751372.18751.10665296555971143663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a01b9cd86c7eb80aa8883e51dfccc2f39371b12623a18d073d07f1b6812c394
Date: Tue, 21 Jul 2026 12:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784637513
