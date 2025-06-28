Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2782221D58C
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751132995; cv=none; b=NYeQRRA7CYZkHunpgJBMQHqO8ht3sfgqGnatIn/7K/wn3fIcXicC6KGY05yA9gVkWMgLDYexbw8ocmf+aJynTQRoBL1yaasYan3boqJCVVrP7UZ8sMUWEygP9xB34zrX9+MnabrYkXVcjcs7SKC2VH+VKKuvgtfKN7PnaOULONw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751132995; c=relaxed/simple;
	bh=Esw+hjm9cszjgKHoGwscABdlg7z0HAFTJUfzhj+fVKM=;
	h=To:Subject:From:Message-Id:Date; b=ebR5/khKM5v6Abi/GVM0SSlQLdDGHO4Ao9P54eat74NYZxS86zVaGfjokXG7gUP/dLUT8iIG7JQAfErvsmAoQz0ED+dLh3y6QZ5H2jkG2LWbCO7lQ67z5Jp98KUkyUPmWQiMYh1YDj7MRC0zZc39RhM6U3lYz2Cw5RB/jGkD2Wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+c8VLNa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+c8VLNa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA27C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751132993;
	bh=Esw+hjm9cszjgKHoGwscABdlg7z0HAFTJUfzhj+fVKM=;
	h=To:Subject:From:Date:From;
	b=D+c8VLNao1ffvEysx4gbs3XGoS9AAN5HtYFb2T29FRVxlTZryuPvdtR2BQcEugu9T
	 USA29IAu/vc8F7qmz9hZgukcNcBcm2uQ0SgK02Q1rbw8GzZCWMulsXxT11DAYEtElj
	 /ha3PkYf0qVH3qOryRHzy0bzdIEPwcRs3R+57tOXdYxo9gOqgcocW0XFdgR4i9U3y+
	 BkdV+X57NhIIaiJlBBrqBzhDh8D4SpliuvBQifo7u4wfQPQV7p2U9jNCaruWzpoMSF
	 v4rcG/buPR3MqeK6eEOHS45ZnSjEQTntI42KDO1NhbPIHaynrKy/z14kGw40pdONJJ
	 c18ufDx/Y9DdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F45EC7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175113299357.28212.15995353398451034944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c86b3890555b11f0abc177d4200fd6899c78fee1461f901f5dff98c995622c9
Date: Sat, 28 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751132993
