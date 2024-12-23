Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136953D6D
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734960354; cv=none; b=UuIkX9r0d01E61TG6vvwVqHJxt5KBOWP1ZbeeTCDVHXQ8WTvurgwfysBOB3/7Fqfr8PZc6Qy7mC+KpqaliKTDZzk02IV918VYPevJXKDrioMRiTk2xHjlu7BUgwImIGcRQcCKxMSuEXioobQLlZ9WlZkK1osV5KyIbNnrmjorc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734960354; c=relaxed/simple;
	bh=EskPymozqcZVE5ihHKIIsuAOOzT+7f2e/NdOPA0Cf7A=;
	h=To:Subject:From:Message-Id:Date; b=WIeU1OpHzXMpHyEFIyFJGSEe0n335GBuHcKCzyk0N/AJiaKofH+Qgad/7p4UQC6FEXVxGWyuA6O1QaIkzw+QEN8PsGNvas6IHHWI77NW9Q1FS4NI7S0ljV8W2AeCxcl4zfsB3Op6KdbWKr7HQG5TfNyd6ct0RDK67jA7aycpF9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdREoc9f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdREoc9f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC140C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734960353;
	bh=EskPymozqcZVE5ihHKIIsuAOOzT+7f2e/NdOPA0Cf7A=;
	h=To:Subject:From:Date:From;
	b=TdREoc9fW2CiVlC3GwUazT1GxwD3eTWxHqa6VrEcQREA7JlQbB33pHDUHJDlBXFfz
	 H8Nscrr054VbL0Vj+INYsIGYYdgvYNVFKnq+JLa8qJnU5NJvT2g8+UDv0EXsF/8RWW
	 euSx6TVfNZHnPSgMmhW6Wv81DmZv0djkJjC7NbxxHcRVSctoGyQsYu6o9Y7WkjWTUr
	 yOhRkSe05DFUw+4REiJp3SY4sQ06C+oL5dE4I765gXi+wBXPiTKSRV33SxowCQOQ7P
	 cUcmf++FhSFpjVr7HspOF5tCjn4lwPKdvQffSaGVJ3xFBPEsG4qp7ESZVWzEeuBns1
	 qdiocPYkf/fqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C869E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173496035360.12964.203543586629601796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 648e5555aed00badd0cc04b59cee4a1100a5f57b2bdd8af50b7574bb23b6c777
Date: Mon, 23 Dec 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734960353
