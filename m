Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C34033CEAC
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770383034; cv=none; b=cknM/pwwmZW8+57hBzzVO+RpiMu15DfOdIgE+jsn/Fm9X1A3UwiDSzvwBmGpor0LbUy97IFoss0Ra8kbbKeEW3slhQS6TkyDsgmjTZh9ijDUabbAZUU3CHvA3Utv4Bf3U4UhCvExs8CbQhKT778lw5+IJzR3izmmsaxhNxCCZPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770383034; c=relaxed/simple;
	bh=6xYVl/TKziF8irtGWVsWUG0LEILRkWQbCiAcfaAiclE=;
	h=To:Subject:From:Message-Id:Date; b=FhPB863mD5vi+mELZLPT2xD9Z/P+KdSk0adJP3Dk1TKuCGkWQqBqGsPw0TJz+DjFeaWB7R3fh51hRzqP43YE7CpdEwZl2c3dbYUC8qcFrpw2xQe0XPW6UgD3XgJTq79sQO1yNt2tB6u+6toV0J2RpYhyj76tdmaq4lpwUe+Dl70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cx61rDDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cx61rDDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A8DC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770383033;
	bh=6xYVl/TKziF8irtGWVsWUG0LEILRkWQbCiAcfaAiclE=;
	h=To:Subject:From:Date:From;
	b=Cx61rDDXvXNGEAaB11SkaD5YJWLgL3Jc/VoJYt+PY383sJ2ShFmJXRNVmPzAbc+WP
	 Oq7/Xg0P7eeDHCqes+Lg7Cv0OEKpqOYoLgZJWkGEG7pPT59500pRYNO1GZoo1R5Mvl
	 1S6ZFfwPB3yDcyB3YiX5T2nydeapDSPXzFtIVs7KpqRcBPDx07nTq7YVnaU6f+HlA0
	 s71PF4RATL0hc7J85xqlpcNuk9NBsj+K+aVBSCEggGKmY4OuuqO2OTsDezqitKK7De
	 BQ0EpztuIVOcfQTzFhwI7r7Tg8o4T7Tj5y5+k0yswJ/UHCmgEdY7L351upK/ctowzJ
	 r6UOyLElgPScQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951FCEE209D
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177038303359.5062.6266690725852778021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4e825a2ab45bf59f59bfe1fa12e1e4f4b9dda535ac0fc3906d6a7edf891927d
Date: Fri, 06 Feb 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770383033
