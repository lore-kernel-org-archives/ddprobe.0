Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBCD246783
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785090634; cv=none; b=CGzqCP8G8Zef2W4jjs8Kh+fX/sMDZ+evVaeMMAOuqUDi/Lb0V7dRy8rgneO9CWHkU0FYI5orRkMjLhoJdm2XAYH7im8GN2IVSGxJuprjmhOeRHxEb5QLJ6rzaKfmJRmO5ovhzmjvhb5HlDgUeNPWE1Y9nuHDAJoLDRTxZuVYWFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785090634; c=relaxed/simple;
	bh=7UIp63oIy5aP5mcn+nYlY+LJsQTi6qyGnk+JD6+AwGI=;
	h=To:Subject:From:Message-Id:Date; b=rlKFJ5gixjPXfOO+dftgceck0G1gAAoLq2t/Lad0EWwXuZDa0ffmm88YhrtXjQgOW5zf495B0gtCEzZhAlIGV/ZVQnjNy5YKQ7T7vNhY23BnqaNsv83peIrGP9H+0He41WmDksnT80zXuaMoYpbor3fZIJ/+mKmzb2Qux1U6yuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDegg2lk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDegg2lk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB49AC2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785090633;
	bh=7UIp63oIy5aP5mcn+nYlY+LJsQTi6qyGnk+JD6+AwGI=;
	h=To:Subject:From:Date:From;
	b=jDegg2lkgFfdN8MZGJcaIb2uS7XJQk6aWve0cEy123/l3vCsO2l7OX9WV/Bp3Xn1x
	 v061NG75IkGFdB/gEXgA3mA84n64d4O7rAoFys8sfZgQ+bTJ8fn7PmFfZ8tEvX1ct6
	 4NOh2wBZzUDVoZZgJ0wfNtW5Kk4kPNEZ3T8PidUiBmZcKbahxMwB16shvULEXzinbm
	 bZam4+RWYxZDtO0Tu/C4A6hv80qAofZNFIPN+fH7V7UhZDNYqaLL1nftFs88BaCE62
	 ZzILglMXbnFuDiNqx144pTAFYtHagwCHpJvUJ3kL0wKe8n6p7MNwjm9jO5WkEIHR/H
	 Ia40aPO9aQmeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA10EC531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178509063368.28101.17759352531398582068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff8c7c08947b8d212c9aa489c20611953355f0ae96c5c1a3a510d273f0a7bc9
Date: Sun, 26 Jul 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785090633
