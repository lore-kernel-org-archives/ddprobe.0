Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A97EADB
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 02:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714530143; cv=none; b=dCoxCsmUSx300wXWLjnBWlrYP+EKqnEd0MF2urm9WPInd8xAmbFzhkRxLE0ta3tdt9+O+eBMoDlRn50CFFDseaSV+78gJlTX4l4kh1nFdR3YJc6hKzkmT+Fi6rEkbCNZJUQH32elgu+MSBVH3TiYpkLZ3Mk3ca47jOM/O/CCiN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714530143; c=relaxed/simple;
	bh=xfhs1Tt8yebYCd2cPOPxw661IDldW2cxDMGF2+EleVc=;
	h=To:Subject:From:Message-Id:Date; b=aoyBgnzwc6fV1HuJrHO+wGmCgFFL2JcJ88WSaNxbirnXhSu02xvqYFaDtNeCpTMGnU0fQLsda+e+svh/CZk8RrfS1AbnVfSogNNI1anOLcqRNZVzBiyoFqmvDoyJI7CtAlkqsAORQAgdUcWi+zP7DWPN/i7+/7U/CNVQJqrLpQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpVsY9B1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpVsY9B1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66BCC2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 02:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714530142;
	bh=xfhs1Tt8yebYCd2cPOPxw661IDldW2cxDMGF2+EleVc=;
	h=To:Subject:From:Date:From;
	b=SpVsY9B18bw6gVgUjohSS3fHUi4qNBXC3CXSht7RrOJJrxICrfvlgP1yC4R/50GSX
	 gsHGWemv1TC6LitEn/ckNJAAetFyfZLWX6VWQMUYo1XRwnIY61xPqqgi5rgiGPwmka
	 ADlESIYCu7/gqAA7ehs2PcAh/RipX/m2Y1e/5zhNLL51LILlEVpTTZcUzCvgeunzM/
	 JQuAHsfTsFhlaW5JFMkTaNSBoy92Ok2x3zLGsSRPLsCdm9lyJuTIjNs6/EB3NuHoVx
	 8LxEOuH+A8MAEUcHnA5iIwahMbUoguwPdQNMOhTVu4MKYCQfucj9KqtvNBGH7BG71P
	 1m/e1xHY7avMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C412CC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 02:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171453014279.30569.6265379062866018464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aac06d2a21af2ee9c701db038038f54fb4c96d39f93afbf4a7946074368870f8
Date: Wed, 01 May 2024 02:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714530142
