Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4642C387363
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787251234; cv=none; b=njZsaQ79GK/cbn6Kbx8hiKzEi3grsyzbnZ8DDRTQ9PCeD3lVV6iUfI7FYyignIsVL2ep3oJ3YmsGNjURH0yAtJKSt5vcK00XusO7xI8doNrbWEv7lwOxWK8vltKEJIQIiBy6qRZ5obwZh3n4tQnNKWvxPa2Q3EMo66jEaBoNmTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787251234; c=relaxed/simple;
	bh=aZioE10fdcYMkVKxVo8XVMuoKjKh8Im0RozESA8cR80=;
	h=To:Subject:From:Message-Id:Date; b=o7aM7eri/lQw8Wu2GHa1Rq8j5vzBNfHxCqSFJ2OnSHkiIUYbJ2BFVgQOYWTKaNQU1WBdQ2a57M9WjZZ6wGDkaVSJUH7d9cMIGF3aiQGM2NBIgDTsxjH3g93KylcDmTHqlsZ1sztqaMEWyRCFCEfpNPP74E0lAZMtfWDSbso7YWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdCvgZSp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdCvgZSp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01C99C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787251234;
	bh=aZioE10fdcYMkVKxVo8XVMuoKjKh8Im0RozESA8cR80=;
	h=To:Subject:From:Date:From;
	b=IdCvgZSp5+4Add2fkvmbAr2K1KcRRD7QAvMO7QE1bwFZP5gJXGW2QcAM5hT2up709
	 jHPB9WnenYvGuQIB3LlE3m+/tCH3NolWMsw9Bb2C0Q+uZwuLG7crgFLWtfy3zWGnOP
	 j1r5azimkQUoXo3ekkQ4tN/qwxs/Ox9+3sPFtF1iBJjqq8yKojxmo9FgClByISBQe2
	 Hh0kKAGQjgQVLPNG0INdA6pFXGyZoTjZ+7NFRtJxsjAHKchikhRm5dFJzl3UNUwzzg
	 SA7bJTBja9QUypk3eCO7Vpctahdfj//HW3Q0+auUP1RlnDbYPJNjFXDzXZdUJePCAS
	 YT9V3ljKjEQvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C31EEC5DF82
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178725123378.20954.11784709679037641910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27c21394de09f9f2059a0342628ddf5a17e0f8defb86f2462a25c880370f7534
Date: Thu, 20 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787251233
