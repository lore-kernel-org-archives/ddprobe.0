Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF133403FE
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 04:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783484314; cv=none; b=mCk349OpaVJZnadG3Zar9s3hsLJETDoWwlQPyxT788hFED2cKSv5SJDO3yeIWuIOAKDOyk5VsVhrWyeYnSh9psvT8CNg6XUVVVhaDVtvtLFfP1p+8sboXY9wYhYE/9h8tlk4MJ2780IlwMovOomdFC3Whwj4K62LwWGsxQjhfkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783484314; c=relaxed/simple;
	bh=b8adtLx6IfEkFx6IQJhAJpeZUZ45MOiyQL4dR5RRGkg=;
	h=To:Subject:From:Message-Id:Date; b=eok7oEPmoV/ByvuWEnfARtKL6QbOpiymadRtT+hhfhauuPD4nasrYA6JUt+fOfhk4N2OXrlqzonmSHTycrHenBNAKgB+YgzyyxfBevOXSg9JAMT82BMgSYsUjIhudCrWWJZ8GTl9uo4yGH5N3blXIG41EPfKowYvyZc+H2XeNa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vP1Okp5B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vP1Okp5B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD093C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 04:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783484313;
	bh=b8adtLx6IfEkFx6IQJhAJpeZUZ45MOiyQL4dR5RRGkg=;
	h=To:Subject:From:Date:From;
	b=vP1Okp5B7xajgBBg74RxXDWytpAPdPicP78ztxvykBY50lijNZURwRYOVyPjT10Ty
	 HCc7Z8/ofi9XmpaO/NnmDCcdPEFGcfDFYf0zHCMQkkk5cSXl2VmwwzNZT+C+WBs2ms
	 bNhbQnGUf4GUXWOHVtrHUJR+W7h0K8fZ44usHxePlhy3VJGxGsZjRE/Tvzue7ZM/1+
	 J2NlLcHRHPuLI459oaGs0KJUJp8ymQsYpzCRVhqnvwVeRQOZakV9QunzMejYeG2FYO
	 JP816ku7Y1lPE8HOmvVjZ1DHGnQcl2VixC7sGNoiOygirzo7wZ3RSZLr4LqBd5NB/s
	 m+QaWdkOtV2hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DC6C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 04:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178348431368.9010.8905265515026249961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15bcdd9a5d62088841b4d87193f480de618886db92af2cf02fc01522e20ee1df
Date: Wed, 08 Jul 2026 04:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783484313
