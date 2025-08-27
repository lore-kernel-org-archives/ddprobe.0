Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7F02D0616
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756268994; cv=none; b=BW7D6Q/ZpUQyhKX+dIwto3P/7Wkc+20HWj6Qz0ewO+G//FeIwP5XLJKlesCy+6b6F3t6mInfA7+dtcBLRwulhYTzRXWP3MT9gTw7g4d8UO+WBLIGsY63uEC2J/NEvN26WbleynMGB8voibESNyY0BXS6QX5aVNEkufX4gnTEhek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756268994; c=relaxed/simple;
	bh=X2XsZGF1SKcYv1mlBW/fq7zu1y9n2KjgMaV5KKMDgcQ=;
	h=To:Subject:From:Message-Id:Date; b=bdZivFJd4bRAk9r2gtqsR69m6tI9vefyyWy+94k3wF9KkDFHEeMAX9uUEFSzkQC67upqUMdR5T3dg1QS3AU0zOktAjGjb0LHxL4slBZEu2StBt3cCof/qgbECEWm8KrVqkWOp/6nzUKxJhLUjpJsPoe1U7t/kMVXnZN4aDowfI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2Gjcn4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2Gjcn4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED13C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756268993;
	bh=X2XsZGF1SKcYv1mlBW/fq7zu1y9n2KjgMaV5KKMDgcQ=;
	h=To:Subject:From:Date:From;
	b=P2Gjcn4gGbtgcit7eJfoQ8I1F+wGoNPf9q0BqIVAmYcH7FZRA4Nh+nQA5+il0Hgqn
	 c0Mt1r2MEO+yLCQvH5QZzP8AZwaPhPQ7A2eQs5VMEdRnQT5K+8sgJhgTb+P2cwDiTL
	 qRevyKY4/GzbR2vwyHZ46l5IhzSSspnxWPt7/PNfX5nSWWoy61USFNcYYDYsyhVris
	 1TMuPKFs7dZxMuyjIFzvOSoBFi4JT4noTsvHur9Q0jJ0wQW5y82cEuKS/6MDVO006/
	 PYe9R0gg8h8rmF6CluvDwBptxAGlFj0GhMLl7pjRJNyhzi/6m80+jg/EM9PQB28bjc
	 q4/HKdQDRlMkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7D0CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175626899357.16745.12312135002212651026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96e674e872b89e1349683aa402a0c62269bfc568b14180c235684e5ddd21dcd0
Date: Wed, 27 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756268993
