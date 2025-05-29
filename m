Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD041DA5F
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748542194; cv=none; b=nZ6jlqtIqAUyUqk9+hLYEpE4uVAFx31ouELxxCPwnkqo3ZN8Fe496jKevrigmG71bbvGJRR2d9elheF4gG6Z8z3/3JfeunBP6Yv7rNzKxcgnWxLSZsKl5K8wjgSVVhSV+UB6qvRiCO4y6wLXX+TUOO9JT7YaDizzvR/7cbeKUjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748542194; c=relaxed/simple;
	bh=FZdxt0+QXCBYtbSxkiubZcj3ausCx0xx/hS6SoWuIsc=;
	h=To:Subject:From:Message-Id:Date; b=uw+zLTk/ha+yo8jbZTfmUG5XXajuVtkFzwP3oMpfexnnHQ88aQ5jFA5ft4Fk5EkEU6Poh6hKKGqwhNbtQ8KNjZq8KWxjo8O/sl7SRl2wUXeZFqCwdkS+zPpcxgmyqrrnEI7VpVIpv92MejWnAzeYiHmIDiec6eFbcG4qXePxYuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6YqY4SK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6YqY4SK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F49C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748542193;
	bh=FZdxt0+QXCBYtbSxkiubZcj3ausCx0xx/hS6SoWuIsc=;
	h=To:Subject:From:Date:From;
	b=K6YqY4SKYMLRezk++4/yzhKKNADqN1ygSOvQbFTX8EZJjK7sADl3cNo199mb46hod
	 ugkq98rbrhcAnMvLyz8UiQWFfseUxy9UxmTuhjz21CXyOjUYh3tp9Fg0JXgvyYr7Jd
	 LcOyJG9IPJkKMcAO9iYWTaQriuQP9C4pIkC9oZ8d+MzVTljNV9gr719bCC1i7+zroH
	 A44fR2tUH+7MwwXAki/m9jw7ggE0YVW4OzpzzumR1dmVNZhssyhzT2td1+dbK3l3n4
	 L5Pm/BiLkA95ZJeLACTES9m065FT3rH8EDkmR7v8Vj+b9iY5soJFfz+qWhsQDvMJgd
	 KccGY60zLdNdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EA0C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174854219357.24165.7167789577617449300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4459997414d2b430e796a043168d361dff4d63457fcb96b0e8633a0fb0141af6
Date: Thu, 29 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748542193
