Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71502F5469
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762809593; cv=none; b=eXkH6uDWUBYK+1JmGTZzdU8bzzij0Kzv59oy4e1gsRPmy1jmpNe5jhIaq8sZ3Vc4Pje8coLowE/vUNJEQIcbbBRj9pzKUOiAMpG80rRjlO3RKHu8t5T4zS27zXZAbjxG/5c98h6R+GhlWhDYKD7HlpyeUt+H4+PqUnCJ1RBMzxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762809593; c=relaxed/simple;
	bh=2hwnCskB91VhtxnmlhnQiD+ARjXmcSb+j+j/VccmzJk=;
	h=To:Subject:From:Message-Id:Date; b=opokuT5I39xYmwV1MVkJGTDKalkHoS+6fC1I/oRqdX3gJyBwQZhV+Os/H0Ga5/CA1z/ZYcrns4J6sRGjvASReQhZ6skOmi+WIjZDaiAbvk3kNklZigrCUGVumqUqAuXkLnD+UHhKfvBG02eQZ7lwBjI3EcTPxZYGYu68YJ3Qe1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQ6cqh2l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQ6cqh2l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2D9C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762809593;
	bh=2hwnCskB91VhtxnmlhnQiD+ARjXmcSb+j+j/VccmzJk=;
	h=To:Subject:From:Date:From;
	b=UQ6cqh2l+eAmfHVmJQHKwGqRaF7xlAffUDuedPDw/whkhJUYMuMzuNAwGwoKGm99A
	 15HKDJ797SQzE8QywdYGypvRikCSPRubhUWON1cNHjiX/Gs6ySKfhuGkmBeZ6JCHFU
	 nuJCYG+peLN0KrgJNnmg3nzvwebe8CvLKH7xFUo9xTASJldORocPVNz49JgAmKrSge
	 Tx9L/KtqByZSpVoLYi+Ycs33q6rR9wchfmOXrRpwQH8wL/avts5gTEATG0vIEnUwaM
	 MaFHPRfcZC1745z04/aU0MygPm0uA6sZZz7shmu/d0BjUwmTN7DyEVM3iNYAuqoeoT
	 pdzmqNECYMnfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91674CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176280959358.7931.15313617117913480688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2569f35020bbb276a27c4c85a1adc79d2d5a5f956bd2b1114f299613534045b6
Date: Mon, 10 Nov 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762809593
