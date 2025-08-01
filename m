Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9CC1E5710
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754032794; cv=none; b=TfwUuK2x+PARyqnoz7d212mFVEwYEy3ZQnvymb+vbj1xVSeGZ0RHJJ0tp38QuehCRuejHGgJEEQJy+OSb5wrhFARARg2o8/pXkT+zpZMLPp5WYIDEpCTJ4T/ANUVszYxBB2Y9WRag/DIhrJOpzOWSpXfWwefMUCSp+xmAShZKro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754032794; c=relaxed/simple;
	bh=c40/62o9Wdjr6YbgCDdqT/CKqSHXbhonEoXyv3JLPb8=;
	h=To:Subject:From:Message-Id:Date; b=VNJW5ik0QMWLG5w8SoURl8yyb8FAt4+UP/s0sXUJkJdYHcHp22s6ZyGwXTfKg3dKn0d2g4S61ndjAiZFERzg4bCp682/rNvI01piKqzANGVKf1g/zhleyTfHfr7zaqa2XEXqbgt/JeNyIlBnk8P6//13Cnpy6ytXxYUudd4Ue0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LFz4yztf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LFz4yztf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6C9C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754032793;
	bh=c40/62o9Wdjr6YbgCDdqT/CKqSHXbhonEoXyv3JLPb8=;
	h=To:Subject:From:Date:From;
	b=LFz4yztfN+RwmTswKKtM9xg/VElynNoUWEWU9w4/8G8WctX10iue4b2ODw+klVavh
	 k/jD2QEeciA+QfAP6j/brLejFGyvR401ZjbP8pbnb0c1hhAydZQVLbl6s3sjEkn+Mb
	 9857VtK7GabAqzjzwr5Qik2PcyRATSDuOZgaiO5CezqIHmrCFWBb5/YfBkh1OkcXhR
	 +Z5/VMqJirgNwgAoaE96b8wyePiIckase2HXv7Swfnicv98DSm806jxFD1HKOE6URE
	 ccME1U4j2iMa6NnjuiqZ6ntiV/VLWbHAblM4JmAXXQEA5A8zGsIoSv1Cckju9eSzai
	 PY4I/dNnhSpzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C10C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175403279358.27349.13983553787474487942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80c46e38e7877f5f0ca6d4ca9a1cf5ea6c257b7938ad62a3e6399fac23171a81
Date: Fri, 01 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754032793
