Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272F7802
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727834154; cv=none; b=uFZ2Ys3HxCm/MYjNkf+U12elewAUVmvaaPhWhF7g7+7GXJUHRN8YSsQRNAHRcKJP8En+YiyLWG2egjGiH5zcbNqAJXMLFL4mTPShkWQIeM0H7pFoxCPURC9DPLI3xZVPTBLoxHK+ihI11EfpeajHGTUA8EgRs3uoG0hiqZ70lWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727834154; c=relaxed/simple;
	bh=qz4UlnYoduoaKdD6XH6zpw10eLEbRGeZOc8VE2+k630=;
	h=To:Subject:From:Message-Id:Date; b=A9uVEnj5JbS7EglxE9Oe7DgaZvplb1nzr+83FjVjYMLORlpMAPupq2E0h/tKyirW3qAi6kAkaqENRl0e5ytPW1LrD9wo3Fxzk4HJVVEbYJOPWTxG4f+t7ui6sn7kZMH5vtIrACELFVhXPIZ0VseI3q59cHX19GzW6S9B8BvwaTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RM421Qtz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RM421Qtz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFDC6C4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727834153;
	bh=qz4UlnYoduoaKdD6XH6zpw10eLEbRGeZOc8VE2+k630=;
	h=To:Subject:From:Date:From;
	b=RM421QtzqXITRHCl8k+GvvLOtV7Ggskgu3IhFVNLRbYbJiRicoz5Jf5GV1wmtn/PO
	 arY40L6I4xL8oFzh4kGws/9seW1Orx+odylv1hRNCrHcJn9y34YU2Uv0Gyepy+S85L
	 G5AoOq6bTSk988iMWbNxRkH00MNL9ZWX83QjGCNuj0R/ne/rAGjsC6ma7RMyHKfY01
	 YF/gQluX23sPSVTksvz5W61HdDauX7l28w0o89LA57Ut1TJRyUTamIi58vhGjKWA9x
	 iivsDkTFbQ1KUtQxbpqKBTjYVYCb+VDwWGxDv8ZSvPX0jBEJpi8H51/Np8NqSqn+3Z
	 wZh5/LKBWiozA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD94CF318C
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172783415361.18651.4086214050676194586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 885fbd41e41f2ff217c8298e81029ea6281b25b1c8d8565832e08c424c999e08
Date: Wed, 02 Oct 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727834153
