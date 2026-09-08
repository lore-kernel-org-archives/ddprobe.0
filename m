Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6C859651C
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788887434; cv=none; b=R8rfMe5F7yPB/XVvtIUZVMvgZBErJP6V/p8/RObIqpeLW999checNc71voXGxOGwNw3zW82WK2jT1tXZyQVN0uf7P2blNxw42BoH7O4W4P/5S5hfJa/gpMXWZfD3ki27sr+psecbQ+lGxZU6yWjPqqXvl3iJ3NGHu5AuTjrTJdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788887434; c=relaxed/simple;
	bh=+G+isAi/Z7lhRKip3IcVZRwrOokSjMzky3OTL+qOEl8=;
	h=To:Subject:From:Message-Id:Date; b=eA59cBP62HwPtkcbhl+h6bp99nAiRY0GEgXvwxawWoOhWcjw4uXbG62+mJqKQSZwD4vj+QbJX+AmFsOPwBYGqYA0woJIdCgURgBKzWn44mrLQ98cxjTmid2T+jJ+N41ut14oOcwL6jVnqhMtiPic0qRRDtyASw5+SfzogsS0gRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FAFrk8xm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FAFrk8xm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA60BC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788887433;
	bh=+G+isAi/Z7lhRKip3IcVZRwrOokSjMzky3OTL+qOEl8=;
	h=To:Subject:From:Date:From;
	b=FAFrk8xmdbTzLXN3+JWxPfsIusyYgENfTqbF/U67wY0QnaPxEcPJxjZyjvRFSkwi7
	 HP7QKG59lNSJ3GOlRuN+Cc1uCSO3dli7tlqZtbVqp92QqyCCFD2IZu8QuB1Arl57xY
	 trOG0bcEZipwcp3Wn7GL2+xkL3NPcQp+y1rH787A6okZ4nXVtqiu1x7NfJkIaUGzaz
	 jbvRUa4KNGW2MJWWlJ16v97E/yoIRAtcCKXNCWBIGa3HrtDTuiGOpbs9B8TEEzJek5
	 /RnqPHTQLLwvXEm0QLBQu+wWEvT56uBf1pQyQo+fkC+1uNvSsT2AndmAITmZUBfJRB
	 jgu4SGjNka1JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D4AC79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178888743373.14128.2851243657115391684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 691d15c8482edcca86ccf661c04681ac4f8066437de24fed3d52f73a06d2f715
Date: Tue, 08 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788887433
