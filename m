Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461C61EE02F
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737456354; cv=none; b=X5OaqfQeUO+mGuuIN4Woi3bABzcOV6oTNdxU1tXxAN06ViOa/yJvP1ikcu2vOeYdXoSpYgvjpuIUpxRxOZS6gMwZ6o293Rm4PthmcXlGDDqm79rbjnMIn7J038bPgOf/UXY4s59Ef2EGlUiZ3O3cMoB+UppDCF3md262daVkH+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737456354; c=relaxed/simple;
	bh=NcX6vbI9lhGIqMuTQ/XylVqAfC43+8GXDZAN7sjjeRM=;
	h=To:Subject:From:Message-Id:Date; b=fMYG7oPKqkV8YXvK3WhVhbmRZkHlxer7k7CVPBmAz+sabjw+QJUTYvNKdKpDqX3A/xyA8Rron+ZF3Uqy9QfMaoNq0ciNT4t2xxj2NlQxpaFKi1crAHFjPz3R+RdtoaBt0ys36TNacXjnnhmftnmp/faCFzSdPn8JbU3e7EaMFtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8CwQjzp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8CwQjzp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A592CC4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737456353;
	bh=NcX6vbI9lhGIqMuTQ/XylVqAfC43+8GXDZAN7sjjeRM=;
	h=To:Subject:From:Date:From;
	b=f8CwQjzpbb/+RVRqE4zE43H40puXg8uU6NrOAt6TV+mDg4YffCt7XO+4YXgEMo6An
	 uC4Na0F9PPqe/5PQtNCNxNA6NBtxvvFxw+v6BQsClv8yoaxGGSFE0Rbss6IwQ7z1uz
	 i3qVmobVNA8+fejcIsxsjpBM7YujpP4kPuHLwDKm+RRB/kN0KwNbuGMeAvYMsRRpsP
	 CB9RNcsizD8vIWLTv3TeNccFMbW6xAqnCYbR7UPyS6BLUjrh8UcGoZ3G/pr/dQ2/9F
	 munYy9+3MKc458fjVSey6/TJXs+nAInubC6OrrytWY3X0SxUp/XwwHAstuFuB67Iej
	 4EkSPhSnLa1Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB20C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173745635357.24045.720710544864584127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01c9605281788a5e20baaab0d4809d67d214670f0f67c06f37a628a3530b847d
Date: Tue, 21 Jan 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737456353
