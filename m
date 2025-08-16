Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198D42327A3
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755331794; cv=none; b=ubihwJDXDq4ICv6fU3D79EzpKDIND9b9gmWE4cM/liKvp6QPvFa7M2ikFB3OdBVCAgUzMd6acr5g2P+8FwH3TQ8OeMlP6tvwmkvqKkx19ZM7YRqeOGs4E4FcIariiacXSZa6z5wrizVQawek1LHLvEJJVLsH+m1JESDD+qCwIzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755331794; c=relaxed/simple;
	bh=4L2yh1YjuSilZ7FagNk5MPAY4zHIcn5Pb/yMyxvJPE8=;
	h=To:Subject:From:Message-Id:Date; b=DsMzmlXWTzQpGWKpnDtzY3S59oVmv3xGFq4OJSXXP9NuY1t9Y0vVc6KwBZBomD5VXM0mL0HKhCw8Vdia9GDhTBugvd0qNUFQHG0381DeHsMU0IXdD/PYHZ0YEY2Y9g+1xKN+s9E+OuhUZP56O1Hm7f7ksAVkNFtmUl7/adu8BAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtsFK3F6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtsFK3F6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2ECC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755331793;
	bh=4L2yh1YjuSilZ7FagNk5MPAY4zHIcn5Pb/yMyxvJPE8=;
	h=To:Subject:From:Date:From;
	b=qtsFK3F6QFEf9w28DMQnJ0BwnffJ9NAn7Fg64crrR3Aln3MfU+in+0FAMQLcB/4jV
	 nG8ssV+3/Q5dYy6uEGZk6Iq5bbkojy0cvcnMjCJKUAF1yvpHxCffCFZ6lYwXIEJdrd
	 Hk9BsYY2R+7vtwAWy9WuUkTcwkzJZYk9BQD0TvNBONz/aXkzQd9ovxKjHCOlHTrA06
	 D858qKqFZ7xQEW9ZqCic9FDvmj9+0zbX4AL0S8CFo/wYVmxQKWboXBiJpfMYoNCcYU
	 mObfCUDcLsiZ5m86xvTfp1W92v+CAJbHr/I6r14PPaXyCt6rax/L1k3XgQiU8AfsOG
	 SSAGlCWmQyb8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDC0CA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175533179357.13506.3041285259904388916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 226155e9bdbc694cf36a8cd40eb1fe6970ebfb5d53d0a74c0c97950d6e6db692
Date: Sat, 16 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755331793
