Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1191B946
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707245297; cv=none; b=b6R6iXNYkNwyP781qtFWu5yhPUKCHY7pJEiqsciQMBd9qAvHT8/+HqKu+rrw7wMS7xOC23RQgGNOR00Al49y6l25N8x5v05r+joD75inxf9lWk9uAOWzf6BqBPsyDR7i0nQqBMl76A4bdjL1WtaiDgtPQzOeYXiIf4bjW73vpwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707245297; c=relaxed/simple;
	bh=86tMRbdVPdb3PxP+6wrzKLhcrj27iK+jd1SHDjOOlEY=;
	h=To:Subject:From:Message-Id:Date; b=eH+ivAFzYtWpmjdPhrh3LHVhfilgiFpBV878VBcP8bd8He5KDD8c2e2Htzs5mAYX3fWX3c6G8N84DJlapUEbyjAJc7VSCfdMO5PqtzcRxkHh/xwdRWydD3LM5q78WDCXrL2R1LGF22lBs+ptEP03ookGKYPHJKI6Nipw7S63SLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ftvrvpYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ftvrvpYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D145C433F1
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707245296;
	bh=86tMRbdVPdb3PxP+6wrzKLhcrj27iK+jd1SHDjOOlEY=;
	h=To:Subject:From:Date:From;
	b=ftvrvpYPPZsPyLBnskODzYFJloEBtmjP90x+skrE9zvGaWnqSuPEdR+1ImU9fy0+D
	 FC0R5dpv/P+pNMvJ7aPYjBvTgiJqGBLmZL8ZazTuBpt/tdJUwEGwkttLHx1ripWwnE
	 3e5CmFPvJI0Rb5lmJcB1UFVVQyhfQxNzFfCxJnW30auTGhiNk7PryxExNWn96k2AP6
	 b2TEkeYtcHF45DSFhcwBtH17hMe2hFM+NjY99GOp1xR4GayBmAFFC+IDq5eZOVtM/f
	 ONXUQBLfmij1GnGVBFdmUmnK0vzzTA2Mt397x0nqU5a6+EIuqC3M0zoENczOHvJC3u
	 jnHBM9bqeOIow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EACAC4828D
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170724529643.10591.1273112735447375190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e938a04ad0d2f951e216e66d0df174d56a372928071f438435ba07d308ae92f1
Date: Tue, 06 Feb 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707245296
