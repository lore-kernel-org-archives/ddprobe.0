Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69FDAD29B
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 08:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713687023; cv=none; b=O6RVGlJtjoA9QNVR2oV19cO1l1B83uYDyBwAH8hCB7vgeyT75GFFvyd1obPjH5q+hFAmrVAhl1q99+E+1udRByylRRY7et44P7EI41MnunOUU0KY40+Dl+xhbCTq2hChVVLZ6ApyjBznf1XqBLCe//a/I39yR9ghD93YH8R3vZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713687023; c=relaxed/simple;
	bh=qW9QVTZWIjW1uHJ3G6wn9s0fILNYdI1KQ3Wbtmz5CbA=;
	h=To:Subject:From:Message-Id:Date; b=LZW84XYwPtROmZwnB0d8ze1o3pTQcJPm+Aj9bnyqr76/1KVUGqhW5fHd4qtfOhgXXvv+aIzI704YwRTVv47fR7AhCZwwZCJjkHY23lhnXtTlLuEBJ1TPpOLl9RD9RxTHUXzMUkE3piOqdWsMQEaft+K7yg81tBdKPX0eWEYKwmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLNMIyBA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLNMIyBA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC24EC113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 08:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713687022;
	bh=qW9QVTZWIjW1uHJ3G6wn9s0fILNYdI1KQ3Wbtmz5CbA=;
	h=To:Subject:From:Date:From;
	b=gLNMIyBA99ELlXvzWX9WJHy2Rq2OQhFbdxDFhsuHkdz0EHkgm3HWpomoJF3oPZjEz
	 qymy5RV1J2zWa8kut8Y4ciFt+zPzAVqCevDbbRLjiklJBfFHegdNkmZWo7zUpAxQFx
	 b5zmvvFi9asybfoWjUnMoy0oCUvRBPZIiSaw7QswHjS7IKUplFxgsePlNBoo/FnHsE
	 D1j4roaOddtazs4zKGdMGdpp0BQGrMsTYEaoJNxz59QObgwnwSybmslJ5FsFgsdjju
	 eAzIHf1qQWqy4WGwL8kM4xyMyqof64Fo+P+GcSVuJoNQRYooDcJ7DGO3oCPTXlAgkO
	 z8XGv7SesFP2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C67C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 08:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171368702278.20376.874905267168351684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df4a5a82d641844a5024d24abd42985deb75c96f24f1f38a8ff313ce4fcedcf7
Date: Sun, 21 Apr 2024 08:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713687022
