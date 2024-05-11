Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E23E22EE4
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 03:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715396543; cv=none; b=AMrTd2WEHWtR7N0irfRaxkVAVi1jl5udKUiDv+aYlCa9a+sfzExcsQB3gWKwg+w1YoVk0/SC/XeeqLh7y0qJ4xljP3aqX2ejt5pUI5xBVtBKo7szEUe2utvlBt82uUP+SMpAeeHcXQMAGr9pb7LGPC9nP2WDcnIExY02fwzFgYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715396543; c=relaxed/simple;
	bh=6Zd7htCxiyyjamdO/DiEFJS8aRLi+fph56WN3HbTsgY=;
	h=To:Subject:From:Message-Id:Date; b=XgXmAFuS5/I8pRAhd+wYAu1nNBZG4UW+rYQbxa6pT/3rRg++DhwwajgkS7mU1Kw6zlEGGsvi4KWm0naClLUHdzHru/+EyCHPd6YTMYS3r15nWJRzuJxsKOXQ7btJbrcVm2DM8R9b+2CsEFIPprI/04ts3HHWG92addRpMiRU398=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcADZDNq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcADZDNq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFA1C113CC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 03:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715396542;
	bh=6Zd7htCxiyyjamdO/DiEFJS8aRLi+fph56WN3HbTsgY=;
	h=To:Subject:From:Date:From;
	b=mcADZDNqzLmL3s1sA22/t/F+NK298vIn8P6mW89pbaV4/xBhgfe4uOELPePknJm2T
	 NeDe/hyQHmK4oxrMCke5dXZTz/sifOH+lLPwhcjTuswXZ79dgOje7TncEs5QSevAuu
	 ynr5kT2FArHVVPu9cCgtrYquL6c9WHPEnFQoFVrIDgho00q+rB6SCl1J8mNzdHaEuG
	 y+ovhVgyrm2N6cd9TZVHYVzNMwLCLyq0gKulldAwP6ACBsXbp8sbkdDybwJIJuJR1D
	 5i1hK5L3HW47DExCY64XdO+XeddZXXTvhpBuyjmU8Oke6egRySJko6Jw9bMDSSPO7I
	 BVkPF7oS9DjQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB5CC25B4F
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 03:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171539654276.24633.1448909346754332081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 629d5c01936323eea4c7408a67bd60c152ca349e1f31383ab02cef15d88b822b
Date: Sat, 11 May 2024 03:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715396542
