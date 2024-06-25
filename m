Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51119146A7D
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 07:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719301403; cv=none; b=n75Q2bhe8pzZtxynCqtZQVecywkVLWe+C8YgRjhzt/wrTFV7HJTPx1YlCAv0s085GD3iNaNGPoSL0+W55aAY5H7Rfwe32Q1nNKjcxViT6oVV6cRgwZJEW2GCXHRUf4ss2kq+leYdTK5jnvShOxw/eJF0pc8n5Q6KdpD+p+Fa9Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719301403; c=relaxed/simple;
	bh=09JLGHX//ZU/Nsvt7okLqWz+FgPtjI042ao8yZmwqcQ=;
	h=To:Subject:From:Message-Id:Date; b=I/kVRyqV47vfZa3cMtnKiutFoZWyf6Bxs0tCxDUGHU3/scFylAvAMzp+fAerX2gP9XUzl7sNehYX5c48MziwWMiYLo+GXtOfAofqWR6q5ZOL+rUPm3YYzmFGeU527/vzhlaFuGTWqaGvNWwy60XqScGXOSY0YPscCg4AwKUfmsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXBqxvGM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXBqxvGM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA1FC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 07:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719301402;
	bh=09JLGHX//ZU/Nsvt7okLqWz+FgPtjI042ao8yZmwqcQ=;
	h=To:Subject:From:Date:From;
	b=aXBqxvGMP8KpNMySjaHP+4hn5d2FxiBaOqnYE5ZioCprh/+jkA4tgKdgrbTiJqsD5
	 1wFvbEIPWDqP5ybd8fc9GGKwVCjK+MAKPmza0pJbw3lexr8adfeZocvlxPXfxyuo/G
	 OGVr67ZxewSXiBXE5QTTIf6lQMR9NLK71oC0e2P1GwneH7I2YetFDlYVierTC5I9U6
	 iRibkDsf5Kkg737LPWYXk+ujk3hsdUZYoxKb5u2E9cQt/v8fXibr4HYTbBptptLRbC
	 5f082WcDL39dE+tKatnteSLAXX7E1xw5Fz0G1pi+uKYJXOrF3bZgoUObgC81EsWRDC
	 D54+vjwxl2mEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC9CFC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 07:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171930140276.21988.1008776505865318109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6dde38944df17c429676f93c13bd2454234de2ba6898fc3b85a17fe99231d83
Date: Tue, 25 Jun 2024 07:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719301402
