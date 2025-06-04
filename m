Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B524409
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748996994; cv=none; b=Hbgu+sOm92bCdQ4fFDcDk8MfA2UpwQoJIUSI5DF3q2vdf3LMK4PDXlWkAXA2mEOe4WkBHMoK97NIE+fj+iBEWbNbZNH23/ska6U/gcA7PSkDVTBtztWgEhprNGCdVG2yW3qgPoDD9PDdSnY+cXSP39ytG2IS3vEG4dPdWGR+Ouk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748996994; c=relaxed/simple;
	bh=SAEct7JlBSPzhYG7hlJu30TZyw8MfnWXwMglGvnzH7g=;
	h=To:Subject:From:Message-Id:Date; b=L+exXMNI9w+V/zo+qfT3pdDxra94HyInBknQpAK5QJiAWaxnttx/mK9QcEkijEjqZ0ZZLtTh/CtXHbdbqwjamUl5/Xq6ywAg7WHqsuYf68V8Vba44Qe7iSNgmuGIwrMqh4X1vpG/UIV/DPZ6XjZhKSu+WFlKUefhx7913STUjOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNj1lPPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNj1lPPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BDEC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748996993;
	bh=SAEct7JlBSPzhYG7hlJu30TZyw8MfnWXwMglGvnzH7g=;
	h=To:Subject:From:Date:From;
	b=YNj1lPPeXs/ziuWYguOpBTg6ihZwgFkAsaO4iC0eOfBGq778dGfMoFLE4mLOXAP2x
	 3/+N0rMyhAVyGGnAlQtZaO5WbIeOnPyIs9E8PUiPcUbz6Dhl6Oe1agkiSF8UPlrxDZ
	 wUlR/fGF05GUus1Z8bRKIA9wbRQE7aUXfBKKQbWes4GSSvp5DkXUZZ7HNRxl17Bq+Q
	 Gj0gCjgyfozMteuDML6T/jqPLM1Z/03Krc1l5y2ZcX0gIj74lUXXAqIMhqP+JR3eeZ
	 OXUI/x2efRjbAdQs+RYedzVtNegbeatbD1CdjaxMFH9k3q9NFN8T8nGe8HiG1wQjK/
	 4n1jV+nljO8pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCBEC5AD49
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174899699358.28484.10986851786410774008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21912f27fe8e6c04673d48ae011a92d9daa6124bbcbcca2b14d7b61aa5b637f4
Date: Wed, 04 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748996993
