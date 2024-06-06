Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67CAD19D8A1
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 04:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717647443; cv=none; b=eFzgKp5fuKDYXLHl8Ag6UBxlf7iBmqXOJwArjjzdmnUHzagObAvgclLIrFRuMGjDVGLI7VueecRAV8fNVCQID7YrSrGtGHnagEmszRXjUq0jC5XTfgMIV225Xgs4kqzYr5FfLAih2yzde7zCjddxJG0U3O4EgTl6rxruejnRhx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717647443; c=relaxed/simple;
	bh=qZdtZ2uqShZY29KI3WAwhHsoeNdbR+5cBTtADhWXy1U=;
	h=To:Subject:From:Message-Id:Date; b=eXQZsdh02NX+2+botZwe4PVSR/A67EOV8iPwOMA04qemUAiTPmuJmigqUq40il8DIMUBsqIE5GqZAJg5HSuFZfA2CXvNwVTsy6ZvVbak2H7a7nXjZ5+jmHlHaUSt0Z5poBIMdKQqwu1HOhTxbrWwByP0Mabys7GqmqcbKczJnyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHIiAxrH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHIiAxrH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6633C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 04:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717647442;
	bh=qZdtZ2uqShZY29KI3WAwhHsoeNdbR+5cBTtADhWXy1U=;
	h=To:Subject:From:Date:From;
	b=ZHIiAxrHkhU4p/pTdbZkMOOwO6YY+nDvLxiMaxMJUsJltMp79XqytWKcd7nWrIn6n
	 pNyYnGBLd/TkPXhyly4d56QkBlgsoyAjADGs/Y0jKX5tHMyNpz9fw8HAc/f+gz9OO1
	 I/MpJmtC5bcdVs906J0oQX7f+yo4IQdhHB12GCypy9qBC+OmZXMSQrEa9UeA7tUdTy
	 WOkMPJr1PiCCALDWG1O0t+asyIkxjTet0OQ4T7XUu0QgeJ07kO5xjOqe+EBZ1V8wBq
	 4mbH7v7yreP5kL/W5kMahJyCr3/2YEwxOuDS9p5U+7OpYgtZhfJUQIsd66TuU0S0KO
	 KpcZsyF13Eaog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD739C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 04:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171764744276.7533.3137098005205646604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4207c65a2fc76adbf331303f287431077ac76e4a7e664874b371caa896d3d46f
Date: Thu, 06 Jun 2024 04:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717647442
