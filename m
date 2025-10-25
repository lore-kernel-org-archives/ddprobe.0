Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF5F20ED
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761404994; cv=none; b=HTx9vPGBvsnuhS/H8oJ0Fa3bB9MDlN9ZGkimdgongk+Ymk+oCCjXWEjGkxlWXjWpQ1OBIlaQ08LDr9qIkt4ySCQTYk1QhWPYXsy2VVzamu9P033pVvqsAYZyboHmx7fkxiDujSg1iIhnkQp6FxAY5CbGf2P6f65cL1XTlhJx2z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761404994; c=relaxed/simple;
	bh=V4TwrhRGZDTKcOoKKBI8RvV8OH8zOsCa2j65HZyOLMg=;
	h=To:Subject:From:Message-Id:Date; b=oXhuu70PdwFHHD2GMuzj49TDrLP9kDtXfRWhqmrwcVEHgCz5bso4uUNatv57kXvc3MGEe2hOY/ouqxS9LbmMF5gMdKZ9FVsy/FRVO1gsXTO55oKwvYO7x/HMYGOYNl++OZtFgvO5IZaVbOTS7ACklKtOuoWl2FjwDVgkqriYnQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahyCCex5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahyCCex5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7849C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761404993;
	bh=V4TwrhRGZDTKcOoKKBI8RvV8OH8zOsCa2j65HZyOLMg=;
	h=To:Subject:From:Date:From;
	b=ahyCCex5frr2tzuUeUNz8CXNPT1zz3lzZeKSCyG3kIlmczK3zHhxwIsVXPcVxjsed
	 UD6QhT6rxZnvnEak2iTxVtt1kdCLoAtXlREDjBnAKy8yzlmIUDkoNGT746XTsDzYDW
	 xjjbz8yEH0mh8816t//1KKpVPP7EV9mGJp+gm2EJ57MuWdaJJdHFf8NZ7bCrsDkVoE
	 RZ5plyOYU+gh7iU37ec7MzAIC8J/8+fONYsgYIfOpgNa77uWuHD9CsWLH5wqFbwUYh
	 8mdouHG9sA08CI9c0TxCjciOf1eMdModcvxiURODwi+Jc1oq4iRYMeLXd8lYQjYQh8
	 IqrkyNtqG1Amg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95873CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176140499358.19622.10147592081005070604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b951c9db07d4223414416fdbd3af3b91165b73a6f2ce52fa282dee0c6f2e614f
Date: Sat, 25 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761404993
