Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFE5CA64
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736180754; cv=none; b=kiwp3sxpITcGVmVIofxO8nr3j/eKO8/qay6qOgOWEtxVKXKJq4ECrLXImubH5Xs5A0peUYRlbVuAr09v+as/V8NDk1OpfEVb3/Swr1snq1pymW/9dCE5DA5Tl7f94Oc3p8dc6fVT2xh3sGsQiqKweUcVwZSFTWNad+arNUZm5tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736180754; c=relaxed/simple;
	bh=TJ6vpaZHIzpOCO9+4DjrwSQdfFqgxwrcZj9YkAktzZM=;
	h=To:Subject:From:Message-Id:Date; b=PrAzPedB8vcq1O2JN16LJv4KgiiJb2EeNmjD7j1DFM0l/G5jpBDK0shjaFdObAK/keBJHEKC5C3q53mKFoQjgrtpDoIMZyb9K6Y3YK8i8qutLxZ+ArEaGfWRH+1v32P1Vjs/m4VtWi8XmD3kZML3K6Go8TknCtHQGDpHRz7gS4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTfRjtGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTfRjtGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A816DC4CED6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736180753;
	bh=TJ6vpaZHIzpOCO9+4DjrwSQdfFqgxwrcZj9YkAktzZM=;
	h=To:Subject:From:Date:From;
	b=bTfRjtGHTDMoHTEtXInK8yi+5nSYKm13dvC1R0az1If6xsFJLhoXl4jjToYsyHds0
	 dQa16HXYB5DK1MQMOLweJtAU7Q0rZQx8nrUl/MwMWdlXd39S2921s176px946QhXfI
	 EAr03g/StFGIhxYkKRfVyCep4wRBlwVybklmdpbkzoVwoBHfNpEyVB8m/xCWlpOdTc
	 ZjD37VrpBtLNnTnkdgENAgc9YWYfglpOzdGx+qDQekNzzhrLg93bnSPhQYe/8i6qCs
	 p1l1LxDo1qpowx0lcWcWVsl5BhpDWsOOfMfp8OrkmWhb7mSAU59wzCSAIX9N8A9GPN
	 6cmdW1b/iVliw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965C0E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173618075360.13950.17619193632843769645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c88777a60ca6b7b64a9df78e45c0a282ebc153a71450401987b89f80ac8c47d6
Date: Mon, 06 Jan 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736180753
