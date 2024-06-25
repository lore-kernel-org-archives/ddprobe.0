Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAE98F6F
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 00:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719276203; cv=none; b=cRHk+T7m4g1ZCeTxGOEQeuM2I2kQ2MiwykZZT3RgcRXRLcyp2iYSPF/kC3pyjb1d5qD7u4jenRMJfy8xvQhnwU2/dgNJZ+ill6dmlrqyXyxBVyJyQZqaqzJpE4YLOrq8gfeLcVKo0geXcmm9Kw1MaS5Au/5Bri8d3btuQy6T/yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719276203; c=relaxed/simple;
	bh=kwZa0LMBSRegZd6/RM4GDlgAs8ygzF4EhFaxXfEy8DM=;
	h=To:Subject:From:Message-Id:Date; b=BI8REE02aGapxA0CMYqBg+lR19i/tjc5ZisFh62j31OU0hJUEHT0PlZWW9L051PbNC97T9hrFRrNbw0WuqnxfU2tcLlnCBymWcebZznYYK46v1js1TagVCBc5AZkODZCoiE4x0ppQjILAlYf8Zl3YeOZmf/iTtXRpYrJjH/Q/x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqQ+dXza; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqQ+dXza"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1D1FC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 00:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719276202;
	bh=kwZa0LMBSRegZd6/RM4GDlgAs8ygzF4EhFaxXfEy8DM=;
	h=To:Subject:From:Date:From;
	b=gqQ+dXza3LY+Cd15kXO7V/rJt3X74A2qLx25I8b1jOfBbq8c/jUb2qMU7+gRFMwKz
	 s1a6Xvc5nLwe5xYDf1qhKNWNEaubw8S/t5cvVz3y6z1IDtkbnPpbz+L3nffNM42G1d
	 mYZsTa3VnNHvHe9NjmJ/ZS8wfJSlS+7SxtKpTqern8dviGmfYAjdIc+GeEJFLwGjIH
	 9EfeMMt0zjENu5wRi4oBtBGcgaYZLvw5hG1kug8xGSYGi92n+Ld0fa73GESmwYZOUM
	 Qdid9vV28qste4hrSItxzhCqglfGIY+KzXzPTfxNywt5VSj48pG3gu4KQgvqTtbj0K
	 JEOT+E/je/GGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C43E1C2BD09
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 00:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171927620277.7737.11038450517965023998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b3e4fbb4d61f925e2c47539678c2b3387a9f0d5f9e1867aa96f062f2a6eaafe
Date: Tue, 25 Jun 2024 00:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719276202
