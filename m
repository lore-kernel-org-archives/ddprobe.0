Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34163148316
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737777954; cv=none; b=LPT/rWCYxkBDO0UCAjftt+u20h+Hg1kKuXjiUum04p98rlV3GVD8VdkCX6HpgURe8B6NeiPAOG37kOrkz8t/RVlj4NDs9B09hVTvSAG8OmRadWUKplnd4IFzndYVt9jO8wfyYnCmK9HCgfHfNgalvq0ALSdYt9vXfydS5aTzmr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737777954; c=relaxed/simple;
	bh=SUJzzMMCfFxLhPC+6b067ZShshcD9fA7G6Ffwcpe91c=;
	h=To:Subject:From:Message-Id:Date; b=aS4H0bmXQWuSO8t64llpGOYQQ9xpwln6BH3rQasq/2fVS2HmHawKH2erd5DGoj2xBYfqrrGvyX3/aPtL11o9ix/IHRyU4m/SdemOABj8DyCzMYLt4DPeaTSZ3OWOr0LbCNfpO/odIUemmKxyuzFu73Fq0H8GE/19X1lksHgSars=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IeNRntYk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IeNRntYk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB4AC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737777953;
	bh=SUJzzMMCfFxLhPC+6b067ZShshcD9fA7G6Ffwcpe91c=;
	h=To:Subject:From:Date:From;
	b=IeNRntYkRgfn15VCM2zGFY/6is0KtxItB3rr5b3XadsPiB0NCnj0mKSaA9uDicO05
	 0FHAkn59sRQ5cudEd6ktkUea+ToyEnNM8iHgKeYWvSMI6/CqmONW8l3i/KjuT7kR9s
	 j5Fjx+jSZWI3guyvHtt8SAEVXseHOR8cYYcyU8wD5sYF5v04YlZPCw/eDOXeWklfKO
	 kDwL/wM+f64XQeMPfWtLn2SMBmMNGTPnwTFABcL4HQ1WJfimxuNFMiMrgT3F+Pqe2H
	 SX+zU4b8aq4MFhTTVKhlzFzlDr/JpUa/ulL5j3HW6TJDcHQAPROsnqVd9MNW63ob+N
	 Vg0eFbYFkXjVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E32C02182
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173777795358.30204.4039200953116991877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be49fbfa9da170c8aca34c4fd9ec99289083471eac97f0fb7a90725fb323e554
Date: Sat, 25 Jan 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737777953
