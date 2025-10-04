Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD6623CB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759550994; cv=none; b=BsSdAe45PBev+wnW8GptGw5UvY3fKpVHYLESYaT+LlD1aqjltZX7ltsf1Fe08uiw/WVmLmDrDy4zRRGeWUW5eW69IDljFoitL7y9TcHVOJsDHQ5ZWr8IA3+J/9xYWTCz9fmVEVwCR7TqfzyJp6uyvURKEnVu75/fLxZbeeEZvw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759550994; c=relaxed/simple;
	bh=ZLLSi3B1xCZG/j5y/gltbRBbOUG+jVnxxntSVPsT9GY=;
	h=To:Subject:From:Message-Id:Date; b=KDS8BSCX+4v8HohESgnS6njknSMJ7pQAeOZWtzRdcyRJT+duMZn8hKBQZh2vSmvXkb0IJ8s4FgT+QL4k4/+VG5A9vPSfNHYNp04DBWyVkAMB9mnqc7YChIALBLh3I/VjcZZ4mOZvDC7Xbr/ArwQtB24mMS0bk0jNopFTRHucgIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ajsyF/NQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ajsyF/NQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AC4C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759550993;
	bh=ZLLSi3B1xCZG/j5y/gltbRBbOUG+jVnxxntSVPsT9GY=;
	h=To:Subject:From:Date:From;
	b=ajsyF/NQwbicbEe+ZTE+m3hX+chqCFGEApNxTVA3VUWMssDGJlgeo6LZ5Ge4oAlx3
	 0ZFYfpbF1ZQxj3dcdQUMjw15MeyPp7EuMu/UnYbuKtaNo3WvkdK4oWM1a84JttTZk6
	 loHmmzTROGQxEJwkU4+gfBw5P0RfbSrO1o1jv1q2df6Hnpk5Oh2ZkjxeKaPZ/kLH91
	 +HPdCGaBDlwm7mzBigIlA2LCrAeF81rrTedyKa9RJgBkowaNsFVSiyflRw5lBp/YEo
	 3Si2YcgObEG/9YsfVME/ypCjv1JI/WaAY2/bLWOeaXYpvM5vE4VI1KHpNKQzOo/1aT
	 G9L8z9GXuKwSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936B3CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175955099358.23884.3220110062077352186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc4dbed519c957c4ff843eae467acf1dfaa1e0a3a4a5e2a123428c0dd864c58e
Date: Sat, 04 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759550993
