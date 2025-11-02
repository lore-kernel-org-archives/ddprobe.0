Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231B934D3BD
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762093194; cv=none; b=fT7gRO/mCzNMVWN7BZm2An89YDOv9eQcygo7UI55SE1I/xWghcSjn1i3BvTxJPHw6HYJZ/ro3TX6hkLUDMZcdSjlVpFn0DMwWGEwOTJrZOLFxHKErQo3/J2+EmllchWqsTw/sbCisxN8c/ynJS89YVAmv4tFbtjPwUNIH6ejv6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762093194; c=relaxed/simple;
	bh=XMtYF1DGGiGyl8vvzO2K8FznUsK7BAJXCHUibFZOCJo=;
	h=To:Subject:From:Message-Id:Date; b=jDrlE0cCYej1yJtcGdBiisIh87MOLZvYZQJw6hm64s05EN8RGUaXe6qIiIWWQ/ktCcsUFkdmGZMBii2Rz+KshXfjSueRQkfLWCHVA8yS6OnpaA0Vp3btd37f2ZsXyS5B5PV4IDxYMD+funiJRnSwbzunADFGQXtDXRN3agy4vO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QEDs2wPJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QEDs2wPJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05FEC116B1
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762093193;
	bh=XMtYF1DGGiGyl8vvzO2K8FznUsK7BAJXCHUibFZOCJo=;
	h=To:Subject:From:Date:From;
	b=QEDs2wPJrT/5EpBCmwq7Dyq9b2xkXLV3kfiAsVat5h/IbuK15oRPHe2HGG/WlOw88
	 G/x8yMtcjY7gl7oHyK8l72XXZHvN7mimeLwo9mVDeXNHvN1AGe7GFh14m45uk+qOit
	 w/+A6NwKNnBmfJjpfG6xY8pJGp3y/BBJ9AdrpJdXwBveKgCVnaYrdtZucXaBFYfMrH
	 FwBvF/DzwKfKwtgnlpA4ctGFw9BhJfjGbGlSl2eN1B/nLyIPSPhuoz1qqbQy3QAr3u
	 8GmQH8xBOrQ91mtqjozU+ruSMRjkaHoo5zgGgZ4+3Y0mqsmG0IsMVkY/Qm5/yGedrx
	 +5OVl0XddCI2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D5C2CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176209319358.20038.16128203370450495299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fb5d0ddff8b3143bf5ee0c2f929c41d45aa94fdabcc07f9a4afe034618a028b
Date: Sun, 02 Nov 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762093193
