Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA9F28DB5E
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751306396; cv=none; b=UEJ+UG0DNObKwPSznNfmLu6oySaJ41xSY96KfcK4HXN4Hdhu8K7M2FkhupyNftmOTSXFX0MLh8lgShhaAn/juWO7vtVJNxsYFkOTnUSyAyujM75DrF6wGPYW+p+hItUgjPmLVpKTMRa0680ixLGLu1eLwjaDnqUC0nTDYnz0yp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751306396; c=relaxed/simple;
	bh=JrBfEugir8rNJuwQbYgpoeTPhTiuthYagUvFL5ITgxQ=;
	h=To:Subject:From:Message-Id:Date; b=qjvAHDN/dvPHw7yP/4P7YX3TcApPdJet8Y6my4FkUtQLgpa0Q5O3htJzOlhXciPltqd4vhiYG0Ni2HeVZrNDq6A65h4hlAgOoOvHHNbF1ZJhtGXx++s6eZshJok387dU82wTxuHN3Fp1xQ3X3MR6gzmoY/k5cj+X17211a3mE4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggongWu/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggongWu/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55DBC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751306393;
	bh=JrBfEugir8rNJuwQbYgpoeTPhTiuthYagUvFL5ITgxQ=;
	h=To:Subject:From:Date:From;
	b=ggongWu/RlvU2/yF2uAB0v47Hv/nB3JA8K+C75QqXAHtWYbbGRq2Ie/Sit0XvZchn
	 5VCsa7pCM21HwcAdX4yQYXOlhGoFnbp717a/mjGHQfyZ3rV4fdNQOfFCkDvoLxF5lo
	 mbfM0PiVNyeUUFTEicP77MwB9b1le+sZOSI6eVrgi3UVvjjg4KmHZDOZgiSlQMTZpD
	 zn8Ci1zlAL6rql6no5kIjSMxpyT8NdgEoBceN3FZegeWA1ebkGCmQbocyqzxJv04/6
	 Lf4MrFOmLNOMRiGAWHn7UMqA9pG0HaYZHWYeQ/7ZzzhtbgsCOZ3FnyTa7h2KNceBGa
	 hfBv2faRlg3JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910FDC8302D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175130639357.32728.8750680007111538919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d2e7d605f24e43da318469fb3af050506ff34bc354fb4323c365b0b0c62acbb
Date: Mon, 30 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751306393
