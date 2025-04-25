Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA054198823
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745621393; cv=none; b=TaER0kUtK8LeP3LrYQUMr6hhiV/QAk7zEvANPXfe8FYJqrNjhtmAty48aAKurJDdsDEAn0bIfanYz0p4FofoMhw0gJm6SxsA4KVv4RoU8w7v33y6IZrPM+WbVkstwkqLjaEj+uExKD2szY6XappM2oQYkFbbUaczAUMWd4pI7o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745621393; c=relaxed/simple;
	bh=J1tAoIgRdjzPGxZwkEKAz5B4nt49ekEAL1i2rk0C2os=;
	h=To:Subject:From:Message-Id:Date; b=XbtOUE07m1jqjlcS0xyxs865DOQJX2HbKss5tj6K6maumOvPrz7oV7N5QWZPBNIiXXP7qaftw2RnHzvOGhfrcePJWkYdEShpGcGLGhg03IW8FKrgMi2XBhyDd6GHKJ9M12kROsC8zSonWu+kvL9jbqj5kFe07o2vMxYlRIyjU9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swoTRtJw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swoTRtJw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0286C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745621393;
	bh=J1tAoIgRdjzPGxZwkEKAz5B4nt49ekEAL1i2rk0C2os=;
	h=To:Subject:From:Date:From;
	b=swoTRtJwcu+u7IjedD8vf2NaOypa77xOe3rFhbkW9xG15Mc+bEMIp/in/Y2YbtbJu
	 x6APF7rVBC747VU3MbhVPzaVlujZUhmUSom0gNN5iKMbSyX2kpPR1fDZeCKDZ1LDl3
	 6oqzxB5iBAtmOLSc9gXM71ncmMHh1JpJMoRt29M12UM7a1xPXBD9WtMom/cM/t6fYI
	 Q9xTIF9DPH5EsykNVzRLcfSp5+Smt+NNvK4/IwXzzBpIakNeEYVi+LrrVOh0PYhUVM
	 tqG2fkNCHP4rFaBDL8TD1Xfc8B69SUyinIgkS2hhCXczHWSgrQaFQF/N0rLzxpak3c
	 qOEeVWbVYj0/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FA8C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174562139357.13346.5411793678211590496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db6e638c48d86eec5171a963cf7188f176a7237fa8015b6c961abcc2ed9983a
Date: Fri, 25 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745621393
