Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A96217597
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739027754; cv=none; b=e97YalLhSbvuVZD9u6SRvztSePe870MfzLhG97SlZq70FfEXiEmM1g9TvY60eqWjcTXI6H9gvuCAYVQ2KfFI+a1mKXlneh4iha42swAOx1VeGrUeXkI1H+oupp/3uSyxIzRxa/m3bqS1FUo8Jh+FUo+T4DRSIhtnMFLI05C2FkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739027754; c=relaxed/simple;
	bh=tTD3GXLjIHrh1CAJzyqRI41Q+jxxDp/kbq9lqrYguHM=;
	h=To:Subject:From:Message-Id:Date; b=Z6O2pn4pDgoXYSdNJHuyR/6q2v9/XXM5PMg3rC0T5edjqiAdD6ruymwmgpOgr98cpRbGZE6Y7VmSMCK7D/gZXgVvPHEqO1c/VF5ULvjuYkupUSSgo1J8LTsBYTOgvi0NNxNzt5E9rDB0G0S/Wc/ahOzw4Bk0/Uaaqyp1Mp+uCI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WaxtVA9K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WaxtVA9K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDDAC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739027753;
	bh=tTD3GXLjIHrh1CAJzyqRI41Q+jxxDp/kbq9lqrYguHM=;
	h=To:Subject:From:Date:From;
	b=WaxtVA9KOQlsjRE2unvn+DjFGcfChVW446Mc9zoF+ipb39V/r3CiBmn2Rc0M57R+6
	 skF9EAldZ1GYL+2De8yEMz546/MnMa57XUsZFqyYSpaXkdkk4hhPntV9XauIDwrm0Q
	 BM+fRzlmR8JWngVUD786U5CfiJ7GwEEHMteobiSVqjfNgU5bovicamq5mkyFBJT7L1
	 FeCnN9BzjmrrizVVrQWdFuDuUOteOQJEoLVIA4W44Ilnodzxm9r4QE7J6RwouYBVfX
	 6eSn6Dug5EZkGbxZvBclX4QciuPK6HELrNwTsTcdynBTCaiKId5CAuVTRCmTEgWKPg
	 yIJKNTsudeANw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB25C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173902775363.12759.17489250522462987740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e284eee597115ee45129a660dfe04d1d60993569f43ba69c115a8cecf5402c1
Date: Sat, 08 Feb 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739027753
