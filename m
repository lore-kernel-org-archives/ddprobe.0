Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FF67080E
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751561994; cv=none; b=lJ+6qCB41BAYk9ToeZvnchsYllXHhPFpihTiu9YBwfwhUuH8Ogxu/pzT7tcjCtg+wqmxUA9Q3XwzYsVXypglCJxAjSTEpHg3hWZyFHO3fmYR8SP0F/Y+iwCaGngELsUQlHmWFMBfJvg+5PTcEaN/RcSZpULqUkZNl+hprNu7nx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751561994; c=relaxed/simple;
	bh=GCs0E/Dl+MybWrgVmRCc81TX/SaPolkg8XGELqZ6ggs=;
	h=To:Subject:From:Message-Id:Date; b=mysAX4ofV8gjPHhFTgtQX6PSKVwkZvLqug/dnaCtHHczl2WwrTztcGjv56NTBpXPNQzlEmysIS6ZNIao/sj2cf1JBQXX63nctOw1rHHkTgp96pUe4rX0QCrl3opGBlVbF/jM4LxE0qiVmwxUXVcHMGoPTJHVGsBqwWJst0RvXrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jNeaNCIc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jNeaNCIc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A41C4CEEE
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751561993;
	bh=GCs0E/Dl+MybWrgVmRCc81TX/SaPolkg8XGELqZ6ggs=;
	h=To:Subject:From:Date:From;
	b=jNeaNCIcGQ+ZD3rZUkk91LO58uznijzHZ9e24m2v+nT0bLsHknufy0k5GRXgUe8HN
	 DpBa4jd5z9H+K4fwJqPQpYISM7aVnebm9/nEp+OyrUfebERv59sYwuz1s+bSrJqzRt
	 GKoebtjbm4BCiIpX7BjQJYLjTsgm6x3jDynOoof7bmEXC9OwDF5oRCFI4bQW/6Anyk
	 X116yPGbPfqPoWNA03LHYlG4BB6Sf2dpCD1Skg3Ur1uTpQ4n8Qjn00WhuYDxovIGFh
	 w2ldAoZsEc9UOIDRxdc7yuRRzwVB9NnKFCZDRdyyZXh3uwBC8sIWBJ9hmb2p+FQGOD
	 8qD4Fm7rG/R2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3E7C83F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175156199357.20130.9231800467499658289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 788b705694a10668be2d7dbd7c0e236b7a66c5c5bdbc4f42633eaf99677cae87
Date: Thu, 03 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751561993
