Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF4E19F135
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 20:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739653134; cv=none; b=P/sWshNCeSq6aykDOQRyzGOLOOVl0p9Hcis9xgezLW1LPefGjjMZQrQ3a0vMjJj2070K6OUCEyFJOzKJ72capMWCTm5U6MOqKC7V0YA8L8WIfkqurVp4o1RIBzao/wc+RNg7Y2DsxuS5DRp7Z0qFgkOyduNZUtEdEmVwTuj4wnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739653134; c=relaxed/simple;
	bh=6bl2tWm6N65h3JYXw+HNYfaEgRXvb9kF7Bj+ry3bWbo=;
	h=To:Subject:From:Message-Id:Date; b=bHVXSB/FSipdLio/RTvVN5g5CiW1/A7OURynaX7NTH5GWO4xq60HDN4gL8Rr/SyiDikOn6i+TDydP8+tZqZy7BMlOgtLy0V7mrR6DIwgif/cYTZy41xAQiF/mxpUcyIqukdXSHN9lpTKMOSnUQqkq/K8pr3b3smkHKpGkUnjxvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+LGd76n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+LGd76n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B84EFC4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 20:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739653133;
	bh=6bl2tWm6N65h3JYXw+HNYfaEgRXvb9kF7Bj+ry3bWbo=;
	h=To:Subject:From:Date:From;
	b=Z+LGd76n4AJyiC/jggD1SLSDbxSM9EmXKEpsMz88meZCG0SGU8KVuEBFTY8PWFUzl
	 N3orxwFmfZX3QS+58T6xyGqrE9Bvk8L7xAHfOefjz8qRpI47VQNXOPbWLFO3zM8fEc
	 D24iYkym/Dx90ZuekYHQwT8RuqhYRzc2uJYrz41wr8x0z4i3hz4lFr2gzX+d4E1QCn
	 cBg2w5zPe21WxRDh/dv7zJzSkm5N3jyxceHsgFaPYH2XFhhbQWLuCa2iz2qBe1zBrD
	 vo93JaWbwTIEWWl7dQxazzBP7ImgegXpfCVFNqYccdUQ+uY07E8MCVIsagzpKFrbHV
	 W9LxeBL/dIi/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A38FDC021A4
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 20:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173965313365.12505.5498475063558615634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e17ff5333501f5df128cb24a2e710a8b37a63c08e164001e07ddd2df1123da3c
Date: Sat, 15 Feb 2025 20:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739653133
