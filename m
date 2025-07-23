Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20226198E91
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753245594; cv=none; b=CkG/f0iK0LL99qoiKrzqfEG4eZvbQG/c/pG5k8jOkHywPidnShikWwY3aw9azCyfGqzSs3nMpYCJsQ87LYcc8tAHdiu//MIOLyF7+2IsG9IQNio279bJbMpBuYzyDuwe3t7hqqqv0e6Q7X7xFnZqk/8UiEDxnn+WrxSM0z256aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753245594; c=relaxed/simple;
	bh=sZfq2qc2bPFZy+tVrgE55omvtTv5WIfwSox+7VDD670=;
	h=To:Subject:From:Message-Id:Date; b=t/Rb9Q/8TJzJJK8JQrGv5zfQjI4cJahgY0MO9Y8rKBkk2nIsXSKQbxE+1BZ+oU0WZvS3vC9k1nsjwkKhelw8Uy7K2IlFwXfLokFQRsVyw//2qVgRJDRCTY1LKIIJrJj1shGDKN9O/DiPZvixoylCimin1cPgiozHPp74gJ8tL+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfX0YRHM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfX0YRHM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BED8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753245593;
	bh=sZfq2qc2bPFZy+tVrgE55omvtTv5WIfwSox+7VDD670=;
	h=To:Subject:From:Date:From;
	b=GfX0YRHMvrIqhffWDsKZCc5U+K9M3v0ZR1PxYvtbvSFZ+hIhAK2KF6gmAubobxpoa
	 sMFjGL6olXtFTFMkCS2/ksCnCX5GYwqWzCMROJWWR+kM6F4TNxc4MeviG1uENtaNq+
	 gToqFrQ5a/qtFP49jC8Vm7D7Ty0cSWJesEvXcheyg3yN8GV8PZEdG5LqgPyIOhfbKj
	 ig2UulFHFXPKGLSnSDf3LZaYrZ+apAml7AUksE1CbMIYK1EpsxKNYDD/7YBNZ0Hqnj
	 uLw17Uc2RZQufn0FcK5fI9lJ6snTMYS/CfMrKPmrmITsYoUklfnUAi+MJaZSUSi4/Z
	 Epcs6LFLJeenw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E86CC83F25
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175324559357.9453.7296116295999708986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 104bec1133ea2c0c0afedee42ccf02ce53f6182fd6153c9816fe789b81d263ba
Date: Wed, 23 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753245593
