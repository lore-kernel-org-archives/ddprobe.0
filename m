Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DEF8238C3B
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767734634; cv=none; b=QamgIjrLMBbkEWk8HcHX5kibwjsUspctP+GYiw1cgJ/ejfNfgcVsEIJ+7L9NrAYj5zpTj7MBHFvk8fbUwH2YtNWlXex/FygisENSK8LW0cidqpuaHKV+rXMkkDfFpr3meF4DC9hX7m1OAR0HtZSe+5UfMwzP0dghRWhKe/ZCOy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767734634; c=relaxed/simple;
	bh=YJzs+0wV8YGyHsQGUUYvOM5OgPsdWsI0WN3S0R25pf8=;
	h=To:Subject:From:Message-Id:Date; b=hqNPCgB4P/Ug2+NBvUot0chBECu/kV/BBux7vQ5UCaeUfrh4p+fgS7yac0DBO7uncKeMPl3iR+iDfiTtzdG92DwDRzFP+9GxwywQHPVQQmjGzzNndWhRHmmcldLvxeBFXXjqpzE8LkrkzdRU3qbe3UhOMgnJCThHu1kP9FJAsGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnptNgYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnptNgYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A9CC19421
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767734633;
	bh=YJzs+0wV8YGyHsQGUUYvOM5OgPsdWsI0WN3S0R25pf8=;
	h=To:Subject:From:Date:From;
	b=EnptNgYNJnLahkb4E/fsYhS7LNwEKHTQdM8lUd0DT2+U8zZHJP0rdR4H97++dXIsq
	 0FVuCjJRkBvQrJAZwQ+eJ9fP/yNAXdWFwmkk/lLGEtfUmWFjhy23dJlGk9fC/SlZTl
	 qI7Qani7zIOqHgwOsZJ2WFm/wV+96ujp5qGc/Px94eUPfmk3v7d0wqEcvmz2XH3gL4
	 BYN9j+EykENz8uGEWeT2bi0tsZknI6RgsDCnMnI2hGDOgPzmnB/T+3NZo8FnmLPIgk
	 TCTZs91pbDSZnfE2RklMPU9WKo5/s24p7TNCN3FrIDQ9DSWFYEOmHzuRGAi7/H73HE
	 XnmDNne9k4MWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900A6CEFD0C
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176773463358.18777.4830751419707012728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93a7f269e0fc239280dd14260fb4c7de08cadf0ac08892c05b327e473b1c8278
Date: Tue, 06 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767734633
