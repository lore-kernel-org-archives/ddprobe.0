Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE3278F44
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 15:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741015734; cv=none; b=qGeRMCPltDJKlEUXxwUCoATCcJ5coBjyKFXgGQQuBv7IsGBw4kmf80GuyJHmcdobQqGix6NvQVYlBUpYZBxNmewRAmtxrkoQzvgrvANbhjVFUn/e7kq9g+CVJEIydN7+fdX4P/1yFjpKgWqUFiFVtW+y27zQUz5b7UDLNDxs20I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741015734; c=relaxed/simple;
	bh=jiD9JPTty0kRYHVCEBLDg8mC3nJyeQ5S2sIQyTTMr5Q=;
	h=To:Subject:From:Message-Id:Date; b=VZalEuT2pMP2Mm/tnL8N04BFwjbHhzykReJtGbIEqLBMy6Hj0uN4i/3MzR6EItHkrnZpRpk6mzzYxCFtYCGWrCCM9bhqNdZbQ3WgRYe8Wm63CfqQYRVBdUZBj35Q/0ajv9l/XnU1Ypc0xtzJbiOa2NpvE2j548woUw1t714DKYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxLAV6ZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxLAV6ZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E66C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 15:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741015733;
	bh=jiD9JPTty0kRYHVCEBLDg8mC3nJyeQ5S2sIQyTTMr5Q=;
	h=To:Subject:From:Date:From;
	b=FxLAV6ZYe7Mb8zPsi/zeB4QZJ1LMQypKwEqtV/1vyBLWEotFkpq3hAtJRIQHax5Zk
	 dgbXgBElxB9tAX4T5u/O8r5Wf5ZM/K2Y0VEU8YKXrMEib3JiGdmFIM+6UfmuYbhPWA
	 25kGvB00Wg8y2ZUYZKuP30LyFbyBXjvN5QDzfwtMjTPnxtYaBD4NnMysMDnZ6Adhbt
	 XdW44Vx75M9rQ06PL+kaz3W4Yl7oMVb5xqLENP8Nqz8i4rrjJ8FctJF9tln/I0BDpH
	 OkvsS6/NaGVMpvayjV4y4fy/EMu5kVJM1w1UWfmD3Y5cF5WiSYUF8FaHLINmbVXo23
	 5JqJkM2QhDLYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D251C282CD
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 15:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174101573363.7080.15731277071266368740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d30e740b8d0d699b4f86844bcc4c68581034cb6a823d64ff841e9a6d286d66f
Date: Mon, 03 Mar 2025 15:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741015733
