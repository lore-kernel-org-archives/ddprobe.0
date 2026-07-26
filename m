Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F9AE19D065
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785058834; cv=none; b=ONcobKlJzebWGZveBN5jLut95epVFjiHwmRHwftc1blcSet1r8cPggwlVH7FQR0Y9Sb/86QpnWLrB81F9npiAjGjcRHI7JZ50RQ9y3U+XhJwcpNWttOBujqMUVQcI4YQQUb/gRt9CjuZll6r9WmwaMFBuRnbfEXZtOZ0SJ2FvoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785058834; c=relaxed/simple;
	bh=d9vFTRcnSirj4fq3QESEtQrCjT4MLamKa2ed8PcKE2o=;
	h=To:Subject:From:Message-Id:Date; b=SAPehAS4yzRao9JSPIUnDxtj0U6JLZaUU+tgFnUXIxbHob3Z7uGTc9AVYsfieSweY4/7Hfm9F3VkHC7ewXO8DA9N1OsJexdH8lH7y2icB4e5UcRadbckSEcyiSGRGYtgebYtPXMSMtr5div44+vVmKcJOH3sLp/f5D94NQfub1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cl9bP6xp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cl9bP6xp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDF1C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785058833;
	bh=d9vFTRcnSirj4fq3QESEtQrCjT4MLamKa2ed8PcKE2o=;
	h=To:Subject:From:Date:From;
	b=Cl9bP6xp1hgEZnHuShkUgS7U/tfiq7l3rUcinax/Kk7jXRlkGqm/fVmjT9AU/N9D4
	 b9drArKXlyVRODj1no71Ror8429wqJfgPQZ98WkCR9J+7zEcoHWsvcWF9IwtwreIwR
	 gWfmCs5XcKlZVGoGsH6JNtKEh0mF6VtG3nUq3LIa601Mbrbit1NaeqIOJv48qla0Qh
	 SrpKMwNDG2x1TPg8+k+Z1Ie79TxMqkSslmCHuSkIBSmsyNsx61CeACQ31hufyB2Lzv
	 YG3qY0YgSbsW2po2tfc3teKo027OIzZOhGgERCVfBKNzdIrYmb8ko52Npbxrb9Ieoe
	 eUovVpXbWzZtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE365C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178505883368.23942.14354884792900700271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3331aa29481e170ad9cc8589fef10c92cc1e38f9fe702f0eaa9a687821311325
Date: Sun, 26 Jul 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785058833
