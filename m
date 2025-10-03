Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2516022B594
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759523394; cv=none; b=QsxPXFmR+HtS17pwkFRfNYSY3FBoXHAJ+3rZi7IvHVNwJfz5bjk9rcw3wXMMkxlm7b+ii3eehIq3RKcaANktFOqgLmwRgVMfdskEU3koIEf9sjAUA7wFfuSD3A8i+GU25E/du3K++V9xofE7DjVLHtxXSOcNHR2nW6iuk+tMWUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759523394; c=relaxed/simple;
	bh=E3PCwhD12BwkigwFBgcGJJAU1T5NSuWHHcEbOOX98lo=;
	h=To:Subject:From:Message-Id:Date; b=QBocC6UMwZLay6qoKY+PBPM/6jVl1kp0mcSMzEoMKAtdYGyS/u43m9erj8eogCb5S2o1ma05vW5tHDyw8bzfBtv1MlMi4L2H0OOtrodLyDbSyVtMFJjnrvxqPpfaNcwUBKgtT9vCrYpW9Ftk5TfLK/VeJhHUTjvz+PvvrOXIbS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aw08t/jb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aw08t/jb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1970C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759523393;
	bh=E3PCwhD12BwkigwFBgcGJJAU1T5NSuWHHcEbOOX98lo=;
	h=To:Subject:From:Date:From;
	b=aw08t/jbrGlkdY2rxdGzwOrDLUHLARLp3eJfTZRS1EZZIsm60NYGHUWdK+PHsNjx7
	 WBnAjMaHmn693iK9UCqJGgC+IAdGZ6F5aub6LKLvQ5K70Gd2JSTpNH3G6fj6cKgjnc
	 WuApzohEz4gyMiHLq5oszOwzGFjDt2Nm+cjAShcT2Et4wrScqrRR8YLA1/ehtSYmpL
	 jDv0ZR7mM6q0osa7c3/RvUJvM3QFZRTXrDCUifafW1RbGZy2WjcZb+NpOh7YKzVBxl
	 FmfHz2BOBMHAqvj+4+Iqrjp0FF8umFYF6mf82rckC5bprZqE2qRp5asZrNclY2xhca
	 GmYF0tVE3ErXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9101BCCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175952339358.16523.3664636521719796005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fece00e4bf9a1a86d360d25f8697c0951fd19552795d583bdf4705a3f6118d5d
Date: Fri, 03 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759523393
