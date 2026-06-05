Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106FC171BB
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 00:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780617874; cv=none; b=V+3IHIbdiOUI9L9AMLp23ammZDhRzqDP8BTuCMDFljdUNKT/Ksfr9Cof177BHZWNHpw5krPJc2KkRdrH6BvX7AnAMDAj+iM/+mEtWG9xUb7U+1WXO7PB7TgbMGqVooqThMt75Dr08u4pJ5TdYgz4KiE3pPhmqukcniX1/28qB7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780617874; c=relaxed/simple;
	bh=ZZcI3ew86VmoiTmurzlU5GwNxcTO9d9oFAr7aNrnkwE=;
	h=To:Subject:From:Message-Id:Date; b=sjvTGt4oAXC5HbzmySfanQWa8rGrKdbyPaIai9Sq/0Q1H8/slf3De/ktKnyeERVMvh+qS6LsNnQPNmks0wkqqyqxq5nmiNxINUCkgWL8B2szd55wgVxkcrPNN6xvPXkDGTKibh+XC95pdCBZo0ybbCWZ8BPAo9VqKV3l6z83UFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GE3Rw0CL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GE3Rw0CL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA8BBC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 00:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780617873;
	bh=ZZcI3ew86VmoiTmurzlU5GwNxcTO9d9oFAr7aNrnkwE=;
	h=To:Subject:From:Date:From;
	b=GE3Rw0CLCY2IXIsZl15FES/MHMZ/LCtsH+Ik86yKHg6JqJUOal9XCteGBtj/kZvYa
	 980pqpuHWQXhAHPWukAHbT5ifRTXV5nayi2L11KO+RBAr28fdsmuZ8I91ac92v00+p
	 c5ErXxIAZh6Hy4rE1iKlMdpiqP9/JMGFsw1rjk3EtnZGXd3gNCo9PucxG+Ji7jv6+s
	 H93TBiDLvSuZF330DzUQ3/GvNYMxwD9ROz+lsqCWdLccgxeAtLABAtOZlsiQvRGM2/
	 9bBVvPc2BqNJITCE2E4JFMAUr4MhlkEFVqspfkJ+eHCdLdwO4+G5NawLnZphFnkezP
	 ao0E3BIWZTijg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01F8CD6E6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 00:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178061787368.20202.5684615312371081450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5a24e05e0756f1cb4eb6a273f57734ec972d96ddb204350f62984923c397b22
Date: Fri, 05 Jun 2026 00:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780617873
