Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA6D8634C
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775885254; cv=none; b=J9P3VKxBB+gF4LPrNjcd5rPU4OhRsQyBOcLKJQZlzcGM5Mbbiza+d7Zlxrrc+uxZwBtR5lN5ToeibfUt0irmcN4ei+wx9UzT9RtWywc/2sgqbyHH7ivGy7X2fRm3Vey9K1So9Vq6/wVdTenweuqhKjVErLuNECpnwHgH37Jfa3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775885254; c=relaxed/simple;
	bh=OQLFxuMw6azYf6zK+q1H3JKYGas6GA8XzfECingdCIk=;
	h=To:Subject:From:Message-Id:Date; b=Lfq0YXe4gnkiAolLDkMS1xXAnaZ9K8yVnhjOMgpY952fg9TljTNVOH0i7jBIRw/KaMjhxw3TUCxqYo4uPqCF0M+xDtBeXuG4W3AbrtYNGcB7JFIBoIg0qNdhWyZl0Ia4o9O5mpSe+pbRE+cxv9FOeVGS6VRb3P/YLI/0QRSfHJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syC9G0qG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syC9G0qG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFDB3C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775885253;
	bh=OQLFxuMw6azYf6zK+q1H3JKYGas6GA8XzfECingdCIk=;
	h=To:Subject:From:Date:From;
	b=syC9G0qGqAWFKdr6tiF+ojfyVYj3ZE4lNsLSLydndYuEgJAVtNnTiyNeGN+HaOyM6
	 d24UP5MJHVZYEkT8uxZWgaU58Wxe/2yCXuS+GBt6CR/LZONBPkIsLjtMGr0b3moFha
	 hGmxpACxrLpe7gZ3hwbFX4/rLUrfgz9yZQNFSJzuU0IBfihIEU1yKjXp8ilw/btAx/
	 RyGNnBfitXXZMHl3Y3/MfSS/TbfV+R9uUMf9eGfzVme9u1H9o/8dgjynrkCjGM1bST
	 vm/ebQmB5RrBvRiNhTJUkL1nE4wAAEub7jxxJvOKibgzTn1V/+ZywALOHFb9Y6YCQ8
	 q4sxrxDodyUYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC64EF45A1F
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177588525368.16945.10392876973337466879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9799064259e1dd017b988f8f1a85b5bf6b91312e7cf57f0c17cb93a194cbdc3b
Date: Sat, 11 Apr 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775885253
