Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2936427587D
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754912996; cv=none; b=D6xImg0uc/ho/bRmjppYDUPdWvb3NARIhMdBaIgdJEqu9XQxeFYvbjsjvnQwe6F0sWpkYs6mAnAa8DA8LOcijWVsTR79GC703hbvlBssO18nOkQ+qjP9M0MucEAt/uqspUM3cXDSYmMMyce565omp5b6xFQOXHXKFMBoijjiEl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754912996; c=relaxed/simple;
	bh=eOO+CBC9b8T9tGKGWMHszvK7zEdE/x+X42u+TMi7fOk=;
	h=To:Subject:From:Message-Id:Date; b=IB3lKgt+aohjP53pcljA7yMfJsfb0gzZ2rO5LFibd6kzKjlpucBuwAAxrQwwnob9M2Co5OrabrMb00OhmCxtwZKZWIa7aDmzd1iOqAlhggLCVtTHZLeRSlqveXOKthcm5uROeZgNnt4c+Mf3HNsEVxRWKK7xfzdw9YIWW2PaiqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QO66cwqZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QO66cwqZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDC6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754912993;
	bh=eOO+CBC9b8T9tGKGWMHszvK7zEdE/x+X42u+TMi7fOk=;
	h=To:Subject:From:Date:From;
	b=QO66cwqZORvw004DNIb/xlrt/50HBE9jRF41SfVPZW/53qTYVs060mAxZ61Tszwpf
	 M8lF1mOLGc8WAPdtlzATVgMJ3m6yr5SxDNc8MyCvLttsoBZe4jrl6NaGxiToJZLbKq
	 NM5rGuzF5EaPLa/eIdl/atxAhp3xDDKAB5OqWJRBIZf5YVwbGuBbssbnyevpdKWCVW
	 W0oZ1xxXSuaSkLyIyRNAIlb6fs4NOD6VMbGDo9WBWjg77XUtmbc5XbYWPZY7Wo2Efo
	 AIE7V01U7ljrK4pYTwLTvboySa7a6u1hqiDPy5pKHsaU6/HvOqUfTy1YXDEGGZZnA3
	 LoGJYBrlMBn4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED8DC87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175491299357.22557.12885379005379570596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f91ab7cafb9eaddf0024696334ccb85ca644b47ab224dae9646ed6ff48052899
Date: Mon, 11 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754912993
