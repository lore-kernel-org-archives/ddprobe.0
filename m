Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A55F3B38AF
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 06:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783407514; cv=none; b=YlcZ+JDCnA/+bfw6iydR6MRJmNanJ0yULDt8SFxPzWqL1Pau6gFu5x9pMjRC6d0pG7IjNRDNqygiyFo4detyCo72sV0TAcfa+bJq5HAO3YIE514T+0TT4swPItuTZ/hrU1qMhQcTuqXXKH3lKJ1nH3oOLP+ENGmo7C7+qCiwk24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783407514; c=relaxed/simple;
	bh=AFk3lwHV1jC4mQnDfx3FTGVkyg0I0HpT6jPLHumhdUM=;
	h=To:Subject:From:Message-Id:Date; b=u6dzB3yggfnvNVVN+QY98QiJi1ufg+cs3TWjmqNWEl6xiJfnzDRCJed2jAlyi9wJQ3/bHxCgpGm9/XmSg9S73thnSz6SUMbIaupcz1sCXR7nYXUL5gP0JgAMhBup4j0ESA4VcO7lzkTAqQugDWIdgTUplfAyVKGpp5wFrXk1ltk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxUaIS3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxUaIS3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0683C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783407513;
	bh=AFk3lwHV1jC4mQnDfx3FTGVkyg0I0HpT6jPLHumhdUM=;
	h=To:Subject:From:Date:From;
	b=kxUaIS3Qvq85LHBxJ+XvRt9/FZRDPys+L5lJJfQYp9fk/kMIYVetdCPyWYNgA6QWy
	 kJTj8YccRnnUlhWnyYGJVY/syHru2lHV+PaTBUXcIo1OrcQB1lYE3K7rIXMfBUzHDA
	 97/JVWNdkPdvZI3tj6ltNnUdJBxmoDMZWZTkTAm/Fkb/lqJy3RxHv0N4ra1Yu3HNHw
	 cUL4kV82tES2gs3zT83nP24Vm99SryilE12gakXd56D+0ttuXmaqA5UbwmDnWTMjJ5
	 QlgK9UiMkdgp8k2y0IlmLysEnRkiw/M7/ATJsQkY5juV7ON6RSjou4EUU/6qrnwxNg
	 QPtI/xtOStyXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC437C44500
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 06:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178340751369.8232.5911432628591192102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33f963ffd649f11c7fb00575ec1fc5a6bb14170e2fc83ad1eda74d34f997b469
Date: Tue, 07 Jul 2026 06:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783407513
