Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C32C846D
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707466097; cv=none; b=ILOLRqh2UdZWNwWCYCqhKjtU/vYPPIbuqXRAsrmreb4qSAoklfQpAVCizEzk8xKnOzEakKPlqqASagGgJLQUUNAjM0xqxbAQgytgIXFwke0iuA5RDDCCvHB9dP/oM/cpCG4AqJRc0NXls/VgDul/B5q+BVJHIekdPzaQKzQ0B2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707466097; c=relaxed/simple;
	bh=om2AH9cRcBn3zTj8TH4+6vmar5F7K8HMU6jsWX+oiZI=;
	h=To:Subject:From:Message-Id:Date; b=AeTOiuMb9o/sZlSMePc7V58DWbXydYAVJBOQM4C+40lh3lqI7qZYRHfX7f34Zouo6MDGEE5GgoNGz5jN+6b1+gmqMpOup7MwbTG7BkcPQbo/f5HcRCnDuNhsrVedp0tGmCa5u2I+cAvcJQCzq7HGgUwJG6VJ8IsEZr5zJGJoa9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AU+0q01s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AU+0q01s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9058DC433C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707466096;
	bh=om2AH9cRcBn3zTj8TH4+6vmar5F7K8HMU6jsWX+oiZI=;
	h=To:Subject:From:Date:From;
	b=AU+0q01s65M2Rx8bM5z5OWqT1ITo5KmJOszJTxpts23XMuKnXb/0EiwezTLKg9G4K
	 6HIPP4wTzJeG9Kt7pOadhsbD6t8NRupjZF/yfPszX9h83zZ1HQ5RPVk+WOU66DJj3j
	 Jdkooml0bUdD+h3Dh9JiUTz7bWPwmYNHQetRr4nJyV7EjQHNq/Wb1RotjjjlbMhm9P
	 Gyq5fAYWHgJc1UOWOefgugYifWrtFJEWbRNKmHRKYt3flA7BxDlRhdGQzLvE2DYZ7+
	 tf+4mhOGjS2kF3IQnX9eoVCQ4bSjj1SL7XSF23Mze8YzYnVZZ/PWtYYF5w20c5GL+x
	 khXNdnAomUN3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74649C4828F
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170746609642.16814.10742090779160916737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f4c9e8da51aaefedd795d6769525d7410fb403638df033d80f3fa965091bf78
Date: Fri, 09 Feb 2024 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707466096
