Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7211F7586
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 13:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764162174; cv=none; b=S7n+aBpAsNMcILZ8kbjv2vqn+FZs9gU4iFiKyrck8FUlV5z5TgTO51dvawkt5LPwqCeaGf7IT3xBTd8wNDXgKvvKx66+6ucc3lftWvOZo3xYikbb4h5DQtegd5lUNTCzXZ7uFNz7+BxHC4kQKsP4lwFVvKtfHqsWDk0clB+RAa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764162174; c=relaxed/simple;
	bh=eTOAD+a2LiondLS4hCkQrTotkDukeW51fKbjbJmYtlc=;
	h=To:Subject:From:Message-Id:Date; b=arit7LGmVCQ8BW0XWHhGUNPquA4qoS7sSW2KM6vWcz+DDf9GM0W88aGzo/+cRxZcqTbRrBTfPHkBDHo/7pOD6YX7bgv2IK0kNAcJm19v5UxyWcNQ7GDStq9x29oH7AD8t3YsFvmv3m+l2CTmZHZJilwziyN+ifJ9qnnL81KZ280=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBiERUlx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBiERUlx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74FAC113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 13:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764162173;
	bh=eTOAD+a2LiondLS4hCkQrTotkDukeW51fKbjbJmYtlc=;
	h=To:Subject:From:Date:From;
	b=CBiERUlxSdXaXTfUX0xQVqiZTWEhdaapTI2pBQ/qxddqbSEIRJVBaVe4sxD3mKWb5
	 JPVONjb0zTdwVwDb+ucEBHjXTuIWva6RUrSpvzvEzwvch3YQtbSg4Gcpm6ebf4IYAi
	 HBNj3gqWgQzJKuxRG3zcLTIjXjN9e/1yxr4k20l7HAQP8yXrU2uowlmFI1XFlgPFHV
	 RWjDQQfNQ1Fhmd5z6ljmCeY4rsWTd3V2FjZnOZlek+iYOfVUVIF24ukp8HuHwEDuOZ
	 6CSo6897aC2yul9kKbKWYhOU3/flp8f+2IwMD5F+7UTy1IjvY/bMsSjyxRuWcLxqQc
	 amNdrucsDJdfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9593BD10F43
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 13:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176416217360.26066.16357647894218016398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11d2c0204dc39348aa3f87d0843f3de064f11a605915d68eeb12b9406d8f85ae
Date: Wed, 26 Nov 2025 13:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764162173
