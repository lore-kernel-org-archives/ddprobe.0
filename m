Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7648C3B42C7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788495634; cv=none; b=obStvn47f3DA5u5lBb9z5Q8gmN6oaiDBRDZZrXk1P2K7zpLU8+dTfWTHKxdzQA+orCdB9xWdbi50ONF0REjWSxS81YkweTn6jpoXreA9V2U25yQMSD7bZtceOWAK7rvRd5ZcECO4VfEwGgTNdj7MOfe2Z3sUjklDsUYb5UPx8eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788495634; c=relaxed/simple;
	bh=Sey7zPmvvVOqP3bLpeOfUs4pLQuwgsO1h3ENShXciKc=;
	h=To:Subject:From:Message-Id:Date; b=cH2I8xElBCTKIvhp9p5GDg1UPdB0fKhK4gp76f6xJ9mlS6VPwVPSoyFPS3++LCPu9E9n8CVKKbIA/XSYw+Xb/osHOR41tAEr6gLavEVaWmBXyYBzVits+JSl/d/W+dI9j+KpJBoBebTfzQaPNa5fxYcQ0TkEf4bsGPhNayBxctM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzldcFHN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzldcFHN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E90DDC2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788495633;
	bh=Sey7zPmvvVOqP3bLpeOfUs4pLQuwgsO1h3ENShXciKc=;
	h=To:Subject:From:Date:From;
	b=qzldcFHN/jiRlAlNvuOol64LF6mM0yEV6GvcVfwwdFz8aDGds/54tr0koaLvh6fhi
	 s44a+tVEyLJ6qLZ66czBlZGHpfNhtQ0auQvp262mdwpn1ApaOK4E08YAfflj1W80bN
	 9DL9+Kp1752CImP00rPLDVu+QUOJ0x769a9y7dfdhljHgWTPcxzhrwuINXRdTENlBZ
	 0qcbYpzcsFtwmFiqJG6nOXo1LBGzDBgHzSb61FiKemnGqNl2WLYqH+uWSgosU/Z2FW
	 c0gF5sY0LJNqEIaEqnamRelMEupbCgfKaKWNfoTo3yNFEQjTKcD6In8IPXqTffd2ai
	 27iF2QJ3t/P6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD20AC61DD6
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178849563376.15572.539310724303555381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 197ccdeb374609e6ca35391939d61adaca3f9f879a54402f97c2b4b486fe5d97
Date: Fri, 04 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788495633
