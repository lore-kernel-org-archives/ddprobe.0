Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3491028C010
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748648394; cv=none; b=YRj5FfcZL4Qfd1T5YDTqu/f23t3aoYrT1UsAy8h4pD6TYTb1AXmmo59/y8f7E3/YMK5PAyGUE1VoMLWltYFQkr/Jdm9UArQ/bl9jfdMK5T/5gK7UgaHvV+Cn12qNT77opPQlEZx+9VBf8sKogYaww36auF8R1QfELF+ZvSwWjm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748648394; c=relaxed/simple;
	bh=25FFViKv8R+OjxNBYValqA8c5lpXh9wZfbQHcMY31Bc=;
	h=To:Subject:From:Message-Id:Date; b=Wn6qzd6O0Y70pARmyZiRYVqDltpsj9h/1WRIrbDreVrxHJVIOl1kqZHz/Ap/CLWvfe0thWK+OJYuQjMOAEq5knnzXRTaUOtqsQgpW6Do37/Ex91Gj8YRc2w/nYRfzUmMbJfilul0msSmSq85PCPD+Urftt+4VQ00zeT0lkIdUhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0TDspOQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0TDspOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2292C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748648393;
	bh=25FFViKv8R+OjxNBYValqA8c5lpXh9wZfbQHcMY31Bc=;
	h=To:Subject:From:Date:From;
	b=O0TDspOQL9YuQhyz/wuJtE8zwCq2mSyaKvtqpU6KVg+bnpwQt161ZKC28pFIj6vWM
	 D4Dd2FdI6nIZbSRMwGtpge0+QOlG+gY8XFL9b9Sj25PK9+FNPr0FXPCOHhjBA9CaAq
	 I4gKQnzpWKsjUYA4fqRZ4Hr+ECFxh4WX/+nhfDZI7iZL2O59jssUyG8naEjjy0o37B
	 0eckD1FjBPbr1uTIwIkJM9FNFkk0zk8QQ7WnOjjfHQ9nU9h7ql4JxWKXaK8qnnQ66n
	 QcRS7LEacQFd8TYMFzKYf9Odk2yOTQiabv19ByhggTXd0qLkqFLvx3R9FztfsQUcu2
	 zuD4NGgxSqmCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9ECC5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174864839357.3992.3413973361926054113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0761a7f537b14c81a6984441f8210a76199bcacae01a79e3103f0881cc522d8a
Date: Fri, 30 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748648393
