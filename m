Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0182C21C7
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776368254; cv=none; b=pgjgaZFCeWQOL6WAeVoKWEEZjRyxKzjvgZm3RVNHp9glFojpexkNhqyP0+l0ioJcxVlYjB7z051B3OwMK8qfqzlhSMEShVrIJuNB5nVF8+8oX/55jzUcmEIc/K6LbfyLtX2ScBpoKtxiLv50nb/D/UkCzSZCmFHauzlSqS9EpTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776368254; c=relaxed/simple;
	bh=/pz47MaA9Z0AQyQVblmQo9nc1tt0zsQb4Aytckrmn1k=;
	h=To:Subject:From:Message-Id:Date; b=eTlRVsQnGCWu0w+Qmdvd1oNv30oFrZqZpMBZKYbZ60jxKH2/KuNJLtylj4ePwjssptUoQFe2ytXa/VUnKNJ++8xQ0ULOo6HMUmaIGx1QfNruoOhR5hj+Nmcsw0xURoCz3RkgaqNLy0SvR7wc1cqrrtoRIYyRNgleoh7b2amYNaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idwbo0js; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idwbo0js"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA850C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776368253;
	bh=/pz47MaA9Z0AQyQVblmQo9nc1tt0zsQb4Aytckrmn1k=;
	h=To:Subject:From:Date:From;
	b=idwbo0jsYXWVlctIALT4bt6ewbTmGrDdgawDVS+TewcXTze3cbxSqyoK5ruo6G7Cs
	 x9UihXW8IG67XobpcHO3afYizn5ObOsXtnUXdilDUmui4C2L6JdXc13XM40BbjDS8Z
	 GFCKOIdLUMe5I6hswwYOq0fRVuzRwMYAzIZoWsdNZCPW6w7dnUuOB4KfImwLSA8lXr
	 /q8ixFJPHCFrGY8U33m2MayOmwmTEs6WzpESaYWrySneUHOrg3rVteJUA+sCnkb99D
	 v/hqprjitHqYSbh6b95MQ1uuV7tAEeD+PJmo4RVu9x5+GrpXgzI2HAVvCd6G98b/9B
	 PHUVHAWIUj08g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA404F8D775
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177636825368.20619.15811582943931417619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c6074697e81f1d0b913d0f91bcb969c83c8a4b6ff954b732aaf0c261bb98584
Date: Thu, 16 Apr 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776368253
