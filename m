Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D622317177
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774133694; cv=none; b=Bzgwd6TNTCpTAtUS6i8KGulQ+uSir929zwUDYn6bSa3cm9sD0UM7UpmciPyfqlk+vVbk4IHllh5rVLLY28qDUo/RhsPPfcGpWf/hO6g40c7n/7uWVS/r2zFCB5OyahUjDbg9XyzLAGnhaiMFi+hcDiriAJVFyoZlk4XI8QpszEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774133694; c=relaxed/simple;
	bh=egg9PiH+QS9VQiktz3gFKIVCkItnuFlV5P9quwopvUQ=;
	h=To:Subject:From:Message-Id:Date; b=tQgwzTzryiTM0Sz+KVxdE4t0nEQP4Jf2Icp7EBcNCrGfETah3I/vRX50wWH+RJQJVbosrqfE2AccuXYOwFAtxCkyV5mFgmnn0Turb48XT7uREWV4z9yzjlvYuOXkWYVtHRzS/iwlAymqKrrsk0Q/swogKq4zFDZebs6Lv+gZnVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTwlT+NR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTwlT+NR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6298C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774133693;
	bh=egg9PiH+QS9VQiktz3gFKIVCkItnuFlV5P9quwopvUQ=;
	h=To:Subject:From:Date:From;
	b=uTwlT+NRk4ioka0RgA8QqZZ9FqTymgdSHXufrIPO0LEsiM6pzGbZR3himfNR50wFC
	 ewDf7EwvVhINgjGtGppX6CY8H2wmqDiZwrxggAEQAvNNFiVXtyV6V/pQkkBaQDhtIg
	 u4RH8WjDstXF6tAITZQMSfq/xb4F6ze6TxlXpqcv/fCbJz4zGMnnbp41IJLltZ8Wow
	 7HRxXot7lLrj9LBqOnvEYonWEKaUvYT7qhV1aLeB7imVEF1ML4Y05pREr1GdP3Afx5
	 3KdcXd+dqnBBZSvvLC6zAgyJH6lkYEyDWSLuMfCXBEBdXJxcaSrtSe5bSwTb7f3kIb
	 4+/QcZ7khClSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E80109449D
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177413369357.10370.12131513942306062725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56ef0827fdfd8e8d5b55410a5ef7060d9c3e27e99700065dc11033cd791fd8d2
Date: Sat, 21 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774133693
