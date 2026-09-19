Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C100248896
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789802434; cv=none; b=Z2EB3Ua2CTQ1D9KN+NGS4B97tSwA1ggAHC3zHY6ymIvqIba2tvdJlvbJcW1hvwsvce3P6UiICnUMkWVlUuEZa+AmREswManTZykmncz019d0ccdK9l3q3gYPjV/7HTSQo0ALncnHEi0XTHU4DKtmCoMTQMuI0iiAalONToxEkGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789802434; c=relaxed/simple;
	bh=MM1N/ML//f0QWMohX4NK+EqB9R1zEMg2EAdMrjy7iEA=;
	h=To:Subject:From:Message-Id:Date; b=AyvW39PZ+CzIHxwD1DSRlIn8v+AN4KlPm5RWo+x7gCtkCFQyGJt4la8Usjuasnx7+vCff7HJgyj3nsF1lkR61aGfIz5Mflgg3sPqRBOrfjocloBG3+3rAtghYiC+W4mrkrZn61iWtPtClVq3NjwidTq5jucv21LGuE7vgMjCJlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SvyJs1lN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SvyJs1lN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FADC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789802433;
	bh=MM1N/ML//f0QWMohX4NK+EqB9R1zEMg2EAdMrjy7iEA=;
	h=To:Subject:From:Date:From;
	b=SvyJs1lNizxjiYrWzxO3Ivy8E1TtWxwY9mKnq9K5nwyiKNyv1PTzY7zXyJCbGjPl4
	 o2auUG0+ykhQ9wA4dsHY67NcjM8/cC08twkAk2PXIAwjUeurqcEEtafIBxFLfqxQ0n
	 N6bUYMh3d2guplU5U3W3sm7/eSRBantAZT9HKnw6G6Ry1E3q67gNRLsxcWYmNE0AB+
	 4PB6owWr23z9FAQ/EhCYmrX63KPE2NRbsun9Q2w1WKw6UlE0Xf5P3ljvs8FT0VLEk8
	 B1BNW/hQn3T2AwZ06qLj3Pf3SDig0afcUqvjBDPlxwPOa3IznzoCPuk4+0nuCHM72L
	 HeQyKbu6l//OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B057AC982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178980243368.17176.13610626006803821347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d42b3c2f4647a818232a23eae37b3ef5ebbc8595d02844f99ec4fe330f1daa53
Date: Sat, 19 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789802433
