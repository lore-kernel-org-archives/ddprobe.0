Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D325EEBB
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749355795; cv=none; b=rFlancGRLkU9ojeWU76KyADM/eh4pEiHp8cXMwW7Yn5bcgc/b+mMVafqxKeJ15fRrwBqS64cT48MEoJqdRW58lOH0WtPb/aaREdmjAhxQ4BuPKtxDMiE8VZbzEQEl1bvPMgy3ciYTgl1GVsP0KtQW074yY5C5lgHhUEpREMtI5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749355795; c=relaxed/simple;
	bh=dVaHPy/Bd85qPRck8CjRZw64CJiDTBXLjSZVahtMjl0=;
	h=To:Subject:From:Message-Id:Date; b=VMteDEpdLhpeOyqYyxeLB7W9q8Xl7RpkS/uMhWf8szkn3JqX3OVSj0CNPkcAspaDkmmg0D09c595O80L1E9tygXQVRlrnRQtwMYFwNx2w/qCjYknZIRWKxLgPuTCcHEbMMmBy1muzVyhXkdoM8ofavpAvZg8lyOAbSEZAb4Ju1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jShOt0HB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jShOt0HB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC75C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749355793;
	bh=dVaHPy/Bd85qPRck8CjRZw64CJiDTBXLjSZVahtMjl0=;
	h=To:Subject:From:Date:From;
	b=jShOt0HB+g9ezAzHsNxa+jayF7C1+JZCSxPikR4V4zMIeR0S/Va3FsxLtkxZ35fSr
	 qhpo6CvapEuKCc51dUpFetVunCxjtHrhnTAk2RTL1JL2MZlmplkCxIvvsZ8FhvOLjH
	 FMkkUeJr0U6pkj9uf13kJLPk99TXK/pYy5WafdUmk7efDo1kWVYkjQJu5uA+WADvNO
	 G5WSj0G2h1kTWypi/T8u6LNKbzkd4L/K523ujX+RGlOyfdSSq44SUIZrCwN/xApYRC
	 3KeAuBA1/WLp8g9goC0Mi8I6Ds5iCIxdw+Ql7DlT1YY6sjRGYoOm3n7yy3hY/bRJkK
	 Eb9BNLhdit9mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9796CC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174935579357.11122.4370131475336385220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c82e03daf7c87179e1eee67123f7c74a602ddb007626116cb60296d2e3df0e
Date: Sun, 08 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749355793
